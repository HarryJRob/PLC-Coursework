module Evaluator where
import Lexer
import Parser
import TypeChecker

type Environment = [ (String, Exp) ]

data Frame = HNewAssignment Type String
           | HReAssignment String
           | HExpList Exp
           | HPrintStatement
           | HIfStatement Exp
           | HIfElseStatement Exp Exp
           | HLoopStatement Value Exp Environment
           | LoopStatementH Value Exp Environment
           | HReturnStatement

           | HArithmeticAdd Exp
           | ArithmeticAddH Exp
           | HArithmeticMinus Exp
           | ArithmeticMinusH Exp
           | HArithmeticMultiply Exp
           | ArithmeticMultiplyH Exp
           | HArithmeticDivide Exp
           | ArithmeticDivideH Exp
           | HArithmeticModulo Exp
           | ArithmeticModuloH Exp
           | HArithmeticExponent Exp
           | ArithmeticExponentH Exp

           | HBooleanAnd Exp
           | BooleanAndH Exp
           | HBooleanOr Exp
           | BooleanOrH Exp
           | HBooleanLT Exp
           | BooleanLTH Exp
           | HBooleanGT Exp
           | BooleanGTH Exp
           | HBooleanEQ Exp
           | BooleanEQH Exp
           | HBooleanLTEQ Exp
           | BooleanLTEQH Exp
           | HBooleanGTEQ Exp
           | BooleanGTEQH Exp
           | HBooleanNEQ Exp
           | BooleanNEQH Exp
           | HNot

           | HListGetElement Value
           | ListGetElementH Value
           | HListGetLength
           | HListAppendValue Value
           | ListAppendValueH Exp

           | HFunctionCall Environment
           deriving (Show, Eq)

type Kontinuation = [ Frame ]
type State = (Exp, Environment, Kontinuation)

-- Evaluator

getValueBinding :: String -> Environment -> Exp
getValueBinding x [] = error ("No variable bindings for \"" ++ x ++ "\" exists")
getValueBinding x ((y,e):env) | x == y    = e
                              | otherwise = getValueBinding x env

isValueBound :: String -> Environment -> Bool
isValueBound x [] = False
isValueBound x ((y,e):env) | x == y     = True
                           | otherwise  = isValueBound x env

-- Function Helper Functions
replaceValueBinding :: (String, Exp) -> Environment -> Environment
replaceValueBinding (s,e) [] = error ("No variable bindings for \"" ++ s ++ "\" exists")
replaceValueBinding (s1,e1) ((s2,e2):env)
  | s1 == s2                 = (s1,e1):env
  | otherwise                = (s2,e2):(replaceValueBinding (s1,e1) env)

mapFunctionBindings :: VarList -> ValueList -> Environment -> Environment
mapFunctionBindings (VarList s e1) (EmptyValueList) env                                      = error "Number of parameters passed to function do not match declaration"
mapFunctionBindings (EmptyVarList) (ValueList e1 e2) env                                     = error "Number of parameters passed to function do not match declaration"
mapFunctionBindings (EmptyVarList) (EmptyValueList) env                                      = []
mapFunctionBindings (VarList s e1) (ValueList (VariableValue e2) e3) env                     = (s, getValueBinding e2 env):(mapFunctionBindings e1 e3 env)
mapFunctionBindings (VarList s e1) (ValueList e2 e3) env                                     = (s, (Val e2)):(mapFunctionBindings e1 e3 env)

checkFunctionVariablesBound :: ValueList -> Environment -> Bool
checkFunctionVariablesBound (EmptyValueList) env                  = True
checkFunctionVariablesBound _ []                                  = False
checkFunctionVariablesBound (ValueList (VariableValue e1) e2) env = (isValueBound e1 env) && (checkFunctionVariablesBound e2 env)
checkFunctionVariablesBound (ValueList e1 e2) env                 = (isValue (Val e1)) && (checkFunctionVariablesBound e2 env)

getAllFunctionBindings :: Environment -> Environment
getAllFunctionBindings []                                           = []
getAllFunctionBindings ((s,(ExpList (VarListWrapper e1) e2)):env1)  = (s,(ExpList (VarListWrapper e1) e2)):(getAllFunctionBindings env1)
getAllFunctionBindings ((s,e1):env1)                                = getAllFunctionBindings env1

updateEnvironment :: Environment -> Environment -> Environment
updateEnvironment [] env2             = env2
updateEnvironment ((s,e):env1) env2   = if isValueBound s env2 then updateEnvironment env1 (replaceValueBinding (s,e) env2) else updateEnvironment env1 env2


-- List Helper Functions
listGetElement :: ValueList -> Int -> Value
listGetElement (EmptyValueList) i = (error "Attempted to get an invalid element from a list")
listGetElement (ValueList e1 e2) i
  | i == 0        = e1
  | otherwise     = listGetElement e2 (i-1)

listGetLength :: ValueList -> Int
listGetLength (EmptyValueList)  = 0
listGetLength (ValueList e1 e2) = 1 + listGetLength e2

appendTwoValueLists :: ValueList -> ValueList -> ValueList
appendTwoValueLists (EmptyValueList) (EmptyValueList)        = EmptyValueList
appendTwoValueLists (EmptyValueList) (ValueList e1 e2 )      = ValueList e1 e2
appendTwoValueLists (ValueList e1 e2) (EmptyValueList)       = ValueList e1 e2
appendTwoValueLists (ValueList e1 e2) e3                     = ValueList e1 (appendTwoValueLists e2 e3)

appendValueList :: ValueList -> Value -> ValueList
appendValueList (EmptyValueList) v                = ValueList v EmptyValueList
appendValueList (ValueList e1 e2) v               = ValueList e1 (appendValueList e2 v)

listAppend :: Value -> Value -> ValueList
listAppend (List e1) (List e2)     = appendTwoValueLists e1 e2
listAppend (List e1) e2            = appendValueList e1 e2
listAppend e1 (List e2)            = ValueList e1 e2
listAppend e1 e2                   = ValueList e1 (ValueList e2 EmptyValueList)

-- Value Helper Functions
showValueList :: ValueList -> String
showValueList EmptyValueList                 = "[]"
showValueList (ValueList e1 EmptyValueList)  = showValue (Val e1)
showValueList (ValueList e1 e2)              = showValue (Val e1) ++ "," ++ showValueList e2

showValue :: Exp -> String
showValue (Val (List EmptyValueList)) = "[]"
showValue (Val (List a))          = "[" ++ showValueList a ++ "]"
showValue (Val (VariableValue a)) = show a
showValue (Val (StringValue a))   = a
showValue (Val (IntValue a))      = show a
showValue (Val (CharValue a))     = show a
showValue (Val (TrueValue))       = "true"
showValue (Val (FalseValue))      = "false"
showValue (Val (NullValue))       = "null"

isValue :: Exp -> Bool
isValue (Val (List _))          = True
isValue (Val (VariableValue _)) = True
isValue (Val (StringValue _))   = True
isValue (Val (IntValue _))      = True
isValue (Val (CharValue _))     = True
isValue (Val (TrueValue))       = True
isValue (Val (FalseValue))      = True
isValue (Val (NullValue))       = True
isValue _                       = False

evalExp :: State -> IO State
evalExp (v,env,[]) | isValue v                               = return (v,env,[])

evalExp (Val (VariableValue v), env, k)                      = return (getValueBinding v env, env, k)

evalExp ((ExpList e1 e2), env, k)                            = return (e1, env, (HExpList e2):k)
evalExp (v, env1, (HExpList e2):k) | isValue v               = return (e2, env1, k)

evalExp ((NewAssignment t s e1), env, k)                     = return ((Val e1), env, (HNewAssignment t s):k)
evalExp (v, env, (HNewAssignment t s):k) | isValue v         = if isValueBound s env then (error "Attempted to redeclare already existing variable") else return ((Val NullValue),(s,v):env,k)

evalExp ((ReAssignment s e1), env, k)                        = return ((Val e1), env, (HReAssignment s):k)
evalExp (v, env, (HReAssignment s):k) | isValue v            = return ((Val NullValue), replaceValueBinding (s,v) env,k) -- Needs reworking

evalExp ((PrintStatement e1), env, k)                        = return ((Val e1), env, (HPrintStatement):k)
evalExp (v, env, (HPrintStatement):k) | isValue v            = (print $ showValue v) >> return (v, env, k)

-- TODO: make all statements in if statement private scope
evalExp ((IfStatement e1 e2), env, k)                        = return ((Val e1), env, (HIfStatement e2):k)
evalExp (v, env, (HIfStatement e1):k) | isValue v            = if v == (Val TrueValue) then return (e1, env, k) else return ((Val NullValue), env, k)

evalExp ((IfElseStatement e1 e2 e3), env, k)                 = return ((Val e1), env, (HIfElseStatement e2 e3):k)
evalExp (v, env, (HIfElseStatement e1 e2):k) | isValue v     = if v == (Val TrueValue) then return (e1, env, k) else return (e2, env, k)

evalExp ((LoopStatement e1 e2 e3), env, k)                   = return (e1, env, (HLoopStatement e2 e3 env):k)
evalExp (v, env1, (HLoopStatement e1 e2 env2):k) | isValue v = return ((Val e1), env1, (LoopStatementH e1 e2 env2):k)
evalExp (v, env1, (LoopStatementH e1 e2 env2):k) | isValue v = if v == (Val TrueValue) then return ((Val NullValue), updateEnvironment env1 env2, k) else return (e2, env1, (HLoopStatement e1 e2 env2):k)

evalExp ((FuncTypeDeclaration e1 e2), env, k)                = if isValueBound e1 env then error ("Duplicate bindings for function: " ++ e1) else return ((Val (NullValue)), (e1,(Val (NullValue))):env, k)

evalExp ((FuncDeclaration e1 e2 e3), env, k)                 = if isValueBound e1 env then return ((Val (NullValue)), (replaceValueBinding (e1, (ExpList (VarListWrapper e2) e3)) env), k) else error ("Function binding not found for: " ++ e1)

-- TODO: evaluate all arguments of function call to final value
evalExp ((Val (FunctionCall e1 e2)), env, k)                 = if (getValueBinding e1 env /= (Val (NullValue))) && checkFunctionVariablesBound e2 env
                                                                 then return (body, (getAllFunctionBindings env ++ mapFunctionBindings vars e2 env), (HFunctionCall env):k)
                                                                 else error ("Invalid function call " ++ e1)
                                                                   where
                                                                     (ExpList (VarListWrapper vars) body) = getValueBinding e1 env
evalExp (v, env1, (HFunctionCall env2):k) | isValue v        = return (v, env2, k)

evalExp ((ReturnStatement e1), env, k)                       = return ((Val e1), env, (HReturnStatement):k)
evalExp (v, env, (HReturnStatement):k) | isValue v           = return (v, env, k)

-- Arithmetic Operator Evaluation
evalExp ((Val (ArithmeticAdd e1 e2)), env, k)                                                                 = return ((Val e1), env, (HArithmeticAdd (Val e2)):k)
evalExp (v, env, (HArithmeticAdd e2):k) | isValue v                                                           = return (e2, env, (ArithmeticAddH v):k)
evalExp ((Val (IntValue e1)), env, (ArithmeticAddH (Val (IntValue e2))):k) | isValue (Val (IntValue e1))      = return ((Val (IntValue (e2 + e1))), env, k)

evalExp ((Val (ArithmeticMinus e1 e2)), env, k)                                                               = return ((Val e1), env, (HArithmeticMinus (Val e2)):k)
evalExp (v, env, (HArithmeticMinus e2):k) | isValue v                                                         = return (e2, env, (ArithmeticMinusH v):k)
evalExp ((Val (IntValue e1)), env, (ArithmeticMinusH (Val (IntValue e2))):k) | isValue (Val (IntValue e1))    = return ((Val (IntValue (e2 - e1))), env, k)

evalExp ((Val (ArithmeticMultiply e1 e2)), env, k)                                                            = return ((Val e1), env, (HArithmeticMultiply (Val e2)):k)
evalExp (v, env, (HArithmeticMultiply e2):k) | isValue v                                                      = return (e2, env, (ArithmeticMultiplyH v):k)
evalExp ((Val (IntValue e1)), env, (ArithmeticMultiplyH (Val (IntValue e2))):k) | isValue (Val (IntValue e1)) = return ((Val (IntValue (e2 * e1))), env, k)

evalExp ((Val (ArithmeticDivide e1 e2)), env, k)                                                              = return ((Val e1), env, (HArithmeticDivide (Val e2)):k)
evalExp (v, env, (HArithmeticDivide e2):k) | isValue v                                                        = return (e2, env, (ArithmeticDivideH v):k)
evalExp ((Val (IntValue e1)), env, (ArithmeticDivideH (Val (IntValue e2))):k) | isValue (Val (IntValue e1))   = return ((Val (IntValue (div e2 e1))), env, k)

evalExp ((Val (ArithmeticModulo e1 e2)), env, k)                                                              = return ((Val e1), env, (HArithmeticModulo (Val e2)):k)
evalExp (v, env, (HArithmeticModulo e2):k) | isValue v                                                        = return (e2, env, (ArithmeticModuloH v):k)
evalExp ((Val (IntValue e1)), env, (ArithmeticModuloH (Val (IntValue e2))):k) | isValue (Val (IntValue e1))   = return ((Val (IntValue (mod e2 e1))), env, k)

evalExp ((Val (ArithmeticExponent e1 e2)), env, k)                                                            = return ((Val e1), env, (HArithmeticExponent (Val e2)):k)
evalExp (v, env, (HArithmeticExponent e2):k) | isValue v                                                      = return (e2, env, (ArithmeticExponentH v):k)
evalExp ((Val (IntValue e1)), env, (ArithmeticExponentH (Val (IntValue e2))):k) | isValue (Val (IntValue e1)) = return ((Val (IntValue (e2 ^ e1))), env, k)


-- Boolean Operator Evaluation
evalExp ((Val (BooleanAnd e1 e2)), env, k)                                      = return ((Val e1), env, (HBooleanAnd (Val e2)):k)
evalExp (v, env, (HBooleanAnd e2):k) | isValue v                                = return (e2, env, (BooleanAndH v):k)
evalExp ((Val e1), env, (BooleanAndH (Val e2)):k) | isValue (Val e1)            = if (e1 == TrueValue && e2 == TrueValue) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanOr e1 e2)), env, k)                                       = return ((Val e1), env, (HBooleanOr (Val e2)):k)
evalExp (v, env, (HBooleanOr e2):k) | isValue v                                 = return (e2, env, (BooleanOrH v):k)
evalExp ((Val e1), env, (BooleanOrH (Val e2)):k) | isValue (Val e1)             = if (e1 == TrueValue || e2 == TrueValue) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanEQ e1 e2)), env, k)                                       = return ((Val e1), env, (HBooleanEQ (Val e2)):k)
evalExp (v, env, (HBooleanEQ e2):k) | isValue v                                 = return (e2, env, (BooleanEQH v):k)
evalExp ((Val e1), env, (BooleanEQH (Val e2)):k) | isValue (Val e1)             = if e1 == e2 then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanNEQ e1 e2)), env, k)                                      = return ((Val e1), env, (HBooleanNEQ (Val e2)):k)
evalExp (v, env, (HBooleanNEQ e2):k) | isValue v                                = return (e2, env, (BooleanNEQH v):k)
evalExp ((Val e1), env, (BooleanNEQH (Val e2)):k) | isValue (Val e1)            = if e1 /= e2 then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)


evalExp ((Val (BooleanLT e1 e2)), env, k)                                       = return ((Val e1), env, (HBooleanLT (Val e2)):k)
evalExp (v, env, (HBooleanLT e2):k) | isValue v                                 = return (e2, env, (BooleanLTH v):k)
evalExp ((Val (IntValue e1)), env, (BooleanLTH (Val (IntValue e2))):k)          = if (e2 < e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanGT e1 e2)), env, k)                                       = return ((Val e1), env, (HBooleanGT (Val e2)):k)
evalExp (v, env, (HBooleanGT e2):k) | isValue v                                 = return (e2, env, (BooleanGTH v):k)
evalExp ((Val (IntValue e1)), env, (BooleanGTH (Val (IntValue e2))):k)          = if (e2 > e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanLTEQ e1 e2)), env, k)                                     = return ((Val e1), env, (HBooleanLTEQ (Val e2)):k)
evalExp (v, env, (HBooleanLTEQ e2):k) | isValue v                               = return (e2, env, (BooleanLTEQH v):k)
evalExp ((Val (IntValue e1)), env, (BooleanLTEQH (Val (IntValue e2))):k)        = if (e2 <= e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanGTEQ e1 e2)), env, k)                                     = return ((Val e1), env, (HBooleanGTEQ (Val e2)):k)
evalExp (v, env, (HBooleanGTEQ e2):k) | isValue v                               = return (e2, env, (BooleanGTEQH v):k)
evalExp ((Val (IntValue e1)), env, (BooleanGTEQH (Val (IntValue e2))):k)        = if (e2 >= e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (Not e1)), env, k)                                                = return ((Val e1), env, (HNot):k)
evalExp ((Val TrueValue), env, (HNot):k)                                        = return ((Val FalseValue), env, k)
evalExp ((Val FalseValue), env, (HNot):k)                                       = return ((Val TrueValue), env, k)

-- List Functions
evalExp ((Val (ListGetElement e1 e2)), env, k)                                              = return ((Val e2), env, (HListGetElement e1):k)
evalExp ((Val e1), env, (HListGetElement e2):k) | isValue (Val e1)                          = return ((Val e2), env, (ListGetElementH e1):k)
evalExp ((Val (List e1)), env, (ListGetElementH (IntValue e2)):k) | isValue (Val (List e1)) = return ((Val (listGetElement e1 e2)), env, k)


evalExp ((Val (ListGetLength e1)), env, k)                                                  = return ((Val e1), env, (HListGetLength):k)
evalExp ((Val (List e1)), env, (HListGetLength):k)                                          = return ((Val (IntValue (listGetLength e1))), env, k)


evalExp ((Val (ListAppendValue e1 e2)), env, k)                                             = return ((Val e2), env, (HListAppendValue e1):k)
evalExp (v, env, (HListAppendValue e1):k) | isValue v                                       = return ((Val e1), env, (ListAppendValueH v):k)
evalExp (v@(Val e1), env, (ListAppendValueH (Val e2)):k) | isValue v                        = return ((Val (List (listAppend e1 e2))), env, k)

evalFull :: String -> IO State
evalFull = evalProgram . parse

evalProgram :: Exp -> IO State
evalProgram e = do
              s <- evalLoop $ return (e, [], [])
              return s

evalStep :: IO State -> IO State
evalStep state = do
                s1@(c, e, k) <- state
                evalExp s1

evalLoop :: IO State -> IO State
evalLoop state = do
                s1@(c , e, k) <- state
                s2@(c', e', k') <- evalExp s1
                if (isValue c && c' == c && length k == 0)
                  then return s2
                  else do
                    s3 <- evalLoop $ return s2
                    return s3

parse :: String -> Exp
parse = parseCalc . alexScanTokens
