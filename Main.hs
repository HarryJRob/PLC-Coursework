import Lexer
import Parser

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

           | HFunctionCall Environment
           deriving (Show, Eq)

type Kontinuation = [ Frame ]
type State = (Exp, Environment, Kontinuation)

getValueBinding :: String -> Environment -> Exp
getValueBinding x [] = error ("No variable bindings for \"" ++ x ++ "\" exists")
getValueBinding x ((y,e):env) | x == y    = e
                              | otherwise = getValueBinding x env

isValueBound :: String -> Environment -> Bool
isValueBound x [] = False
isValueBound x ((y,e):env) | x == y     = True
                           | otherwise  = isValueBound x env

replaceValueBinding :: (String, Exp) -> Environment -> Environment
replaceValueBinding (s,e) [] = error ("No variable bindings for \"" ++ s ++ "\" exists")
replaceValueBinding (s1,e1) ((s2,e2):env)
  | s1 == s2                 = (s1,e1):env
  | otherwise                = (s2,e2):(replaceValueBinding (s1,e1) env)

-- Needs correction
createFunctionBindings :: VarList -> ValueList -> Environment
createFunctionBindings (Var s) (Value e1)               = (s, (Val e1)):[]
createFunctionBindings (VarList s e1) (ValueList e2 e3) = (s, (Val e2)):(createFunctionBindings e1 e3)
createFunctionBindings _ _                              = error "Number of parameters to function do not match declaration"

updateEnvironment :: Environment -> Environment -> Environment
updateEnvironment [] env2             = env2
updateEnvironment ((s,e):env1) env2 = if isValueBound s env2 then updateEnvironment env1 (replaceValueBinding (s,e) env2) else updateEnvironment env1 env2


showValueList :: ValueList -> String
showValueList (Value e1)        = showValue (Val e1)
showValueList (ValueList e1 e2) = showValue (Val e1) ++ "," ++ showValueList e2

showValue :: Exp -> String
showValue (Val (List a))          = "[" ++ showValueList a ++ "]"
showValue (Val (Series a))        = "[" ++ showValueList a ++ "...]"
showValue (Val (VariableValue a)) = show a
showValue (Val (StringValue a))   = show a
showValue (Val (IntValue a))      = show a
showValue (Val (CharValue a))     = show a
showValue (Val (TrueValue))       = "true"
showValue (Val (FalseValue))      = "false"
showValue (Val (NullValue))       = "null"

isValue :: Exp -> Bool
isValue (Val (List _))          = True
isValue (Val (Series _))        = True
isValue (Val (VariableValue _)) = True
isValue (Val (StringValue _))   = True
isValue (Val (IntValue _))      = True
isValue (Val (CharValue _))     = True
isValue (Val (TrueValue))       = True
isValue (Val (FalseValue))      = True
isValue (Val (NullValue))       = True
isValue _                       = False

evalExp :: State -> IO State
evalExp (v,env,[]) | isValue v                              = return (v,env,[])

evalExp (Val (VariableValue v), env, k)                     = return (getValueBinding v env, env, k)

evalExp ((ExpList e1 e2), env, k)                           = return (e1, env, (HExpList e2):k)
evalExp (v, env1, (HExpList e2):k) | isValue v              = return (e2, env1, k)

evalExp ((NewAssignment t s e1), env, k)                    = return ((Val e1), env, (HNewAssignment t s):k)
evalExp (v, env, (HNewAssignment t s):k) | isValue v        = return (v,(s,v):env,k)

evalExp ((ReAssignment s e1), env, k)                       = return ((Val e1), env, (HReAssignment s):k)
evalExp (v, env, (HReAssignment s):k) | isValue v           = return (v, replaceValueBinding (s,v) env,k) -- Needs reworking

evalExp ((PrintStatement e1), env, k)                       = return ((Val e1), env, (HPrintStatement):k)
evalExp (v, env, (HPrintStatement):k) | isValue v           = (print $ showValue v) >> return (v, env, k)

evalExp ((IfStatement e1 e2), env, k)                       = return ((Val e1), env, (HIfStatement e2):k)
evalExp (v, env, (HIfStatement e1):k) | isValue v           = if v == (Val TrueValue) then return (e1, env, k) else return (v, env, k)

evalExp ((IfElseStatement e1 e2 e3), env, k)                = return ((Val e1), env, (HIfElseStatement e2 e3):k)
evalExp (v, env, (HIfElseStatement e1 e2):k)                = if v == (Val TrueValue) then return (e1, env, k) else return (e2, env, k)

evalExp ((LoopStatement e1 e2 e3), env, k)                  = return (e1, env, (HLoopStatement e2 e3 env):k)
evalExp (v, env1, (HLoopStatement e1 e2 env2):k) | isValue v = return ((Val e1), env1, (LoopStatementH e1 e2 env2):k)
evalExp (v, env1, (LoopStatementH e1 e2 env2):k) | isValue v = if v == (Val TrueValue) then return (v, updateEnvironment env1 env2, k) else return (e2, env1, (HLoopStatement e1 e2 env2):k)

evalExp ((FuncTypeDeclaration e1 e2 e3), env, k)            = if isValueBound e1 env then error ("Duplicate bindings for function: " ++ e1) else return ((Val (NullValue)), (e1,(Val (NullValue))):env, k)

evalExp ((FuncDeclaration e1 e2 e3), env, k)                = if isValueBound e1 env then return ((Val (NullValue)), (e1, (ExpList (VarListWrapper e2) e3)):[ x | x@(s,e) <- env, s /= e1], k) else error ("Function binding not found for: " ++ e1)

-- TODO: Need to check that all values passed to function are valid and return original env and returning a value need implementing
evalExp ((Val (FunctionCall e1 e2)), env, k)                = if (all (==True) [True]) && (getValueBinding e1 env /= (Val (NullValue)))
                                                                then return (body, createFunctionBindings vars e2, (HFunctionCall env):k)
                                                                else error ("Invalid function call" ++ e1)
                                                                  where
                                                                    (ExpList (VarListWrapper vars) body) = getValueBinding e1 env


-- TODO: Broken af help
evalExp ((ReturnStatement e1), env, k)                      = return ((Val e1), env, (HReturnStatement):k)
evalExp (v, env, (HReturnStatement):k) | isValue v          = return (v, env, [])

-- Arithmetic Operator Evaluation
evalExp ((Val (ArithmeticAdd e1 e2)), env, k)               = return ((Val e1), env, (HArithmeticAdd (Val e2)):k)
evalExp (v, env, (HArithmeticAdd e2):k) | isValue v         = return (e2, env, (ArithmeticAddH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticAddH (Val (IntValue e2))):k) | isValue v        = return ((Val (IntValue (e2 + e1))), env, k)

evalExp ((Val (ArithmeticMinus e1 e2)), env, k)             = return ((Val e1), env, (HArithmeticMinus (Val e2)):k)
evalExp (v, env, (HArithmeticMinus e2):k) | isValue v       = return (e2, env, (ArithmeticMinusH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticMinusH (Val (IntValue e2))):k) | isValue v      = return ((Val (IntValue (e2 - e1))), env, k)

evalExp ((Val (ArithmeticMultiply e1 e2)), env, k)          = return ((Val e1), env, (HArithmeticMultiply (Val e2)):k)
evalExp (v, env, (HArithmeticMultiply e2):k) | isValue v    = return (e2, env, (ArithmeticMultiplyH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticMultiplyH (Val (IntValue e2))):k) | isValue v   = return ((Val (IntValue (e2 * e1))), env, k)

evalExp ((Val (ArithmeticDivide e1 e2)), env, k)            = return ((Val e1), env, (HArithmeticDivide (Val e2)):k)
evalExp (v, env, (HArithmeticDivide e2):k) | isValue v      = return (e2, env, (ArithmeticDivideH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticDivideH (Val (IntValue e2))):k) | isValue v     = return ((Val (IntValue (div e2 e1))), env, k)

evalExp ((Val (ArithmeticModulo e1 e2)), env, k)            = return ((Val e1), env, (HArithmeticModulo (Val e2)):k)
evalExp (v, env, (HArithmeticModulo e2):k) | isValue v      = return (e2, env, (ArithmeticModuloH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticModuloH (Val (IntValue e2))):k) | isValue v     = return ((Val (IntValue (mod e2 e1))), env, k)

evalExp ((Val (ArithmeticExponent e1 e2)), env, k)          = return ((Val e1), env, (HArithmeticExponent (Val e2)):k)
evalExp (v, env, (HArithmeticExponent e2):k) | isValue v    = return (e2, env, (ArithmeticExponentH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticExponentH (Val (IntValue e2))):k) | isValue v   = return ((Val (IntValue (e2 ^ e1))), env, k)


-- Boolean Operator Evaluation
evalExp ((Val (BooleanAnd e1 e2)), env, k)               = return ((Val e1), env, (HBooleanAnd (Val e2)):k)
evalExp (v, env, (HBooleanAnd e2):k) | isValue v         = return (e2, env, (BooleanAndH v):k)
evalExp (v@(Val e1), env, (BooleanAndH (Val e2)):k) | isValue v        = if (e1 == TrueValue && e2 == TrueValue) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanOr e1 e2)), env, k)               = return ((Val e1), env, (HBooleanOr (Val e2)):k)
evalExp (v, env, (HBooleanOr e2):k) | isValue v         = return (e2, env, (BooleanOrH v):k)
evalExp (v@(Val e1), env, (BooleanOrH (Val e2)):k) | isValue v         = if (e1 == TrueValue || e2 == TrueValue) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

-- TODO: Need list comparison
evalExp ((Val (BooleanEQ e1 e2)), env, k)               = return ((Val e1), env, (HBooleanEQ (Val e2)):k)
evalExp (v, env, (HBooleanEQ e2):k) | isValue v         = return (e2, env, (BooleanEQH v):k)
evalExp (v@(Val (IntValue e1)), env, (BooleanEQH (Val (IntValue e2))):k) | isValue v         = if (e1 == e2 ) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)
evalExp (v@(Val (StringValue e1)), env, (BooleanEQH (Val (StringValue e2))):k) | isValue v   = if (e1 == e2 ) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)
evalExp (v@(Val (CharValue e1)), env, (BooleanEQH (Val (CharValue e2))):k) | isValue v       = if (e1 == e2 ) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)
evalExp (v@(Val e1), env, (BooleanEQH (Val e2)):k) | isValue v                               = if (e1 == TrueValue && e2 == TrueValue) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanNEQ e1 e2)), env, k)                = return ((Val e1), env, (HBooleanNEQ (Val e2)):k)
evalExp (v, env, (HBooleanNEQ e2):k) | isValue v          = return (e2, env, (BooleanNEQH v):k)
evalExp (v@(Val (IntValue e1)), env, (BooleanNEQH (Val (IntValue e2))):k) | isValue v         = if (e1 /= e2 ) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)
evalExp (v@(Val (StringValue e1)), env, (BooleanNEQH (Val (StringValue e2))):k) | isValue v   = if (e1 /= e2 ) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)
evalExp (v@(Val (CharValue e1)), env, (BooleanNEQH (Val (CharValue e2))):k) | isValue v       = if (e1 /= e2 ) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)
evalExp (v@(Val e1), env, (BooleanNEQH (Val e2)):k) | isValue v                               = if (e1 == TrueValue && e2 == FalseValue) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanLT e1 e2)), env, k)                 = return ((Val e1), env, (HBooleanLT (Val e2)):k)
evalExp (v, env, (HBooleanLT e2):k) | isValue v           = return (e2, env, (BooleanLTH v):k)
evalExp (v@(Val (IntValue e1)), env, (BooleanLTH (Val (IntValue e2))):k) | isValue v        = if (e2 < e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanGT e1 e2)), env, k)                 = return ((Val e1), env, (HBooleanGT (Val e2)):k)
evalExp (v, env, (HBooleanGT e2):k) | isValue v           = return (e2, env, (BooleanGTH v):k)
evalExp (v@(Val (IntValue e1)), env, (BooleanGTH (Val (IntValue e2))):k) | isValue v        = if (e2 > e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanLTEQ e1 e2)), env, k)               = return ((Val e1), env, (HBooleanLTEQ (Val e2)):k)
evalExp (v, env, (HBooleanLTEQ e2):k) | isValue v         = return (e2, env, (BooleanLTEQH v):k)
evalExp (v@(Val (IntValue e1)), env, (BooleanLTEQH (Val (IntValue e2))):k) | isValue v        = if (e2 <= e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (BooleanGTEQ e1 e2)), env, k)               = return ((Val e1), env, (HBooleanGTEQ (Val e2)):k)
evalExp (v, env, (HBooleanGTEQ e2):k) | isValue v         = return (e2, env, (BooleanGTEQH v):k)
evalExp (v@(Val (IntValue e1)), env, (BooleanGTEQH (Val (IntValue e2))):k) | isValue v        = if (e2 >= e1) then return ((Val (TrueValue)), env, k) else return ((Val (FalseValue)), env, k)

evalExp ((Val (Not e1)), env, k)                           = return ((Val e1), env, (HNot):k)
evalExp ((Val TrueValue), env, (HNot):k)                   = return ((Val FalseValue), env, k)
evalExp ((Val FalseValue), env, (HNot):k)                  = return ((Val TrueValue), env, k)

evalFull :: String -> IO State
evalFull = evalProgram . parse

evalProgram :: Exp -> IO State
evalProgram e = do
              s <- evalLoop $ return (e, [], [])
              return s

evalLoop :: IO State -> IO State
evalLoop state = do
                s1@(c , e, k) <- state
                s2@(c', e', k') <- evalExp s1
                if (isValue c && c' == c && length k == 0)
                  then return s2
                  else do
                    s3 <- evalLoop $ return s2
                    return s3

parse = parseCalc . alexScanTokens
