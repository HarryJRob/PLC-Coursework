module TypeChecker where
import Lexer
import Parser

-- Type Checker

type TypeEnvironment = [ (String, Type) ]

showType :: Type -> String
showType (TypeNull)         = "Null"
showType (TypeString)       = "String"
showType (TypeChar)         = "Char"
showType (TypeInt)          = "Int"
showType (TypeBool)         = "Bool"
showType (TypeStream t)     = "[" ++ showType t ++ "]"
showType (FunctionType t1 t2) = "(" ++ showTypeList t1 ++ ") -> " ++ showType t2

showTypeList :: TypeList -> String
showTypeList (EmptyTypeList) = ""
showTypeList (TypeList t EmptyTypeList) = showType t
showTypeList (TypeList t1 t2)           = showType t1 ++ "," ++ showTypeList t2

isVariableBound :: String -> TypeEnvironment -> Bool
isVariableBound s1 []           = False
isVariableBound s1 ((s2,t):env)
  | s1 == s2                     = True
  | otherwise                   = isVariableBound s1 env

getVariableType :: String -> TypeEnvironment -> Type
getVariableType s1 []           = error ("No type bindings for \"" ++ s1 ++ "\" exists")
getVariableType s1 ((s2,t):env)
  | s1 == s2                    = t
  | otherwise                   = getVariableType s1 env

getVarListLength :: VarList -> Int
getVarListLength (EmptyVarList)  = 0
getVarListLength (VarList e1 e2) = 1 + getVarListLength e2

getValueListLength :: ValueList -> Int
getValueListLength (EmptyValueList)  = 0
getValueListLength (ValueList e1 e2) = 1 + getValueListLength e2

getTypeListLength :: TypeList -> Int
getTypeListLength (EmptyTypeList)  = 0
getTypeListLength (TypeList e1 e2) = 1 + getTypeListLength e2

isFunction :: Type -> Bool
isFunction (FunctionType _ _) = True
isFunction _                  = False

checkReturnExists :: Exp -> Bool
checkReturnExists (ReturnStatement e1)        = True
checkReturnExists (ExpList e1 e2)             = checkReturnExists e1 || checkReturnExists e2
checkReturnExists (IfElseStatement e1 e2 e3)  = checkReturnExists e2 && checkReturnExists e3
checkReturnExists _                           = False

checkAllReturnsValid :: Exp -> TypeEnvironment -> Type -> Bool
checkAllReturnsValid (ReturnStatement e1) env t = if (fst $ typeCheck (Val e1) env) == t
                                                    then True
                                                    else False

checkAllReturnsValid (ExpList e1 e2) env t      = (checkAllReturnsValid e1 env t) && (checkAllReturnsValid e2 env t)
checkAllReturnsValid _ _ _                      = True

zipVarListTypeList :: VarList -> TypeList -> TypeEnvironment
zipVarListTypeList (EmptyVarList) (EmptyTypeList) = []
zipVarListTypeList (VarList v vlist) (TypeList t tlist) = (v,t):(zipVarListTypeList vlist tlist)

getAllFunctionTypeBindings :: TypeEnvironment -> TypeEnvironment
getAllFunctionTypeBindings []                              = []
getAllFunctionTypeBindings ((s, (FunctionType t1 t2)):env) = (s, (FunctionType t1 t2)):(getAllFunctionTypeBindings env)
getAllFunctionTypeBindings (_:env)                         = getAllFunctionTypeBindings env

checkFunctionCallTypes :: ValueList -> TypeList -> TypeEnvironment -> Bool
checkFunctionCallTypes (EmptyValueList) (EmptyTypeList) env                         = True
checkFunctionCallTypes (ValueList v vlist) (TypeList t tlist) env   = (t == (fst $ typeCheck v env)) && checkFunctionCallTypes vlist tlist env

typeCheck :: Exp -> TypeEnvironment -> (Type, TypeEnvironment)
-- TODO: Check all of the list elements are equal to first element's type
typeCheck (Val (List (ValueList v _))) env = (TypeStream (fst $ typeCheck (Val v) env), env)
typeCheck (Val (VariableValue s)) env   = ((getVariableType s env), env)
typeCheck (Val (StringValue _)) env     = (TypeString, env)
typeCheck (Val (IntValue _)) env        = (TypeInt, env)
typeCheck (Val (CharValue _)) env       = (TypeChar, env)
typeCheck (Val (TrueValue)) env         = (TypeBool, env)
typeCheck (Val (FalseValue)) env        = (TypeBool, env)
typeCheck (Val (NullValue)) env         = (TypeNull, env)

typeCheck (ExpList e1 e2) env           = typeCheck e2 (snd $ typeCheck e1 env)

typeCheck (NewAssignment t s e1) env    = if isVariableBound s env
                                          then error ("Attempted to override assignment of variable: " ++ s)
                                          else if (fst $ typeCheck (Val e1) env) == t
                                                then (TypeNull, ((s,t):env))
                                                else error ("Attempted to assign variable \"" ++ s ++ "\" of type '" ++ (showType t) ++ "' to expression of type " ++ (showType $ fst $ typeCheck (Val e1) env))

typeCheck (ReAssignment s e1) env       = if isVariableBound s env
                                            then if (getVariableType s env) == (fst $ typeCheck (Val e1) env)
                                              then (TypeNull, env)
                                              else error ("Attempted to assign variable \"" ++ s ++ "\" of type '" ++ (showType $ getVariableType s env) ++ "' to expression of type " ++ (showType $ fst $ typeCheck (Val e1) env))
                                            else error ("Attempted to assign to non-existent variable: " ++ s)

typeCheck (PrintStatement e1) env       = typeCheck (Val e1) env
typeCheck (IfStatement e1 e2) env       = if (fst $ typeCheck (Val e1) env) == TypeBool
                                            then typeCheck e2 env
                                            else error ("If statement condition does not resolve to a boolean")

typeCheck (IfElseStatement e1 e2 e3) env = if (fst $ typeCheck (Val e1) env) == TypeBool
                                            then if (fst $ typeCheck e2 env) /= TypeNull then ((fst $typeCheck e3 env), env) else ((fst $ typeCheck e3 env), env)
                                            else error ("If else statement condition does not resolve to a boolean")

typeCheck (LoopStatement e1 e2 e3) env   = if (fst $ typeCheck (Val e2) (snd $ typeCheck e1 env)) == TypeBool
                                            then typeCheck e3 (snd $ typeCheck e1 env)
                                            else error ("Loop statement condtion does not resolve to a boolean")

typeCheck (FuncTypeDeclaration s t) env = if isVariableBound s env
                                            then error ("Duplicate bindings for function: " ++ s)
                                            else (TypeNull, ((s, t):env))

typeCheck (FuncDeclaration s vars e1) env = if (isVariableBound s env) && (isFunction (getVariableType s env)) &&((getVarListLength vars) == (getTypeListLength t1))
                                              then if (checkReturnExists e1)
                                                then if (checkAllReturnsValid e1 ((zipVarListTypeList vars t1) ++ (getAllFunctionTypeBindings env)) t2)
                                                  then (TypeNull, env)
                                                  else error ("Not all return statements in function \"" ++ s ++ "\" are of type: " ++ showType t2)
                                                else error ("Unable to reach a return statement on all evaluation paths in function: " ++ s)
                                              else error ("Attempted to declare body of unknown function: " ++ s)
                                                where
                                                  (FunctionType t1 t2) = getVariableType s env

typeCheck (Val (FunctionCall s vals)) env = if (isVariableBound s env)
                                              then if (getValueListLength vals) == (getTypeListLength t1)
                                                then if checkFunctionCallTypes vals t1 env
                                                  then (t2, env)
                                                  else error ("Parameters of invalid types passed to function call: " ++ s)
                                                else error ("Attempted to call function \"" ++ s ++ "\" with invalid number of parameters")
                                              else error ("Attempted to call non-existent function: " ++ s)
                                                where
                                                  (FunctionType t1 t2) = getVariableType s env
