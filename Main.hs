import Lexer
import Parser

type Environment = [ (String, Exp) ]

data Frame = HNewAssignment Type String Environment
           | HReAssignment String Environment
           | HExpList Exp
           | HPrintStatement
           | HIfStatement Exp
           | HIfElseStatement Exp Exp
           | HReturnStatement
           | HArithmeticAdd Exp
           | ArithmeticAddH Exp
           deriving (Show, Eq)

type Kontinuation = [ Frame ]
type State = (Exp, Environment, Kontinuation)

getValueBinding :: String -> Environment -> Exp
getValueBinding x [] = error "No variable bindings exist"
getValueBinding x ((y,e):env) | x == y    = e
                              | otherwise = getValueBinding x env

showValue :: Exp -> String
showValue (Val (List a))          = "not implemented yet"
showValue (Val (Series b))        = "not implemented yet"
showValue (Val (VariableValue c)) = show c
showValue (Val (StringValue d))   = show d
showValue (Val (IntValue e))      = show e
showValue (Val (CharValue f))     = show f
showValue (Val (TrueValue))       = "true"
showValue (Val (FalseValue))      = "false"

isValue :: Exp -> Bool
isValue (Val (List _))          = True
isValue (Val (Series _))        = True
isValue (Val (VariableValue _)) = True
isValue (Val (StringValue _))   = True
isValue (Val (IntValue _))      = True
isValue (Val (CharValue _))     = True
isValue (Val (TrueValue))       = True
isValue (Val (FalseValue))      = True
isValue _                       = False

evalExp :: State -> IO State
evalExp (v,env,[]) | isValue v                              = return (v,env,[])

evalExp (Val (VariableValue v), env, k)                     = return (getValueBinding v env, env, k)

evalExp ((ExpList e1 e2), env, k)                           = return (e1, env, (HExpList e2):k)
evalExp (v, env1, (HExpList e2):k) | isValue v              = return (e2, env1, k)

evalExp ((NewAssignment t s e1), env, k)                    = return ((Val e1), env, (HNewAssignment t s env):k)
evalExp (v, env1, (HNewAssignment t s env2):k) | isValue v  = return (v,(s,v):env2,k)

evalExp ((ReAssignment s e1), env, k)                       = return ((Val e1), env, (HReAssignment s env):k)
evalExp (v, env1, (HReAssignment s env2):k) | isValue v     = return (v,(s,v):env2,k) -- Needs reworking

evalExp ((PrintStatement e1), env, k)                       = return ((Val e1), env, (HPrintStatement):k)
evalExp (v, env, (HPrintStatement):k) | isValue v           = (print $ showValue v) >> return (v, env, k)

evalExp ((IfStatement e1 e2), env, k)                       = return ((Val e1), env, (HIfStatement e2):k)
evalExp (v, env, (HIfStatement e1):k) | isValue v           = if v == (Val (TrueValue)) then return (e1, env, k) else return (v, env, k)

evalExp ((IfElseStatement e1 e2 e3), env, k)                = return ((Val e1), env, (HIfElseStatement e2 e3):k)
evalExp (v, env, (HIfElseStatement e1 e2):k)                = if v == (Val (TrueValue)) then return (e1, env, k) else return (e2, env, k)

evalExp ((ReturnStatement e1), env, k)                      = return ((Val e1), env, (HReturnStatement):k)
evalExp (v, env, (HReturnStatement):k) | isValue v          = return (v, [], [])

evalExp ((Val (ArithmeticAdd e1 e2)), env, k)                     = return ((Val e1), env, (HArithmeticAdd (Val e2)):k)
evalExp (v, env, (HArithmeticAdd e2):k) | isValue v         = return (e2, env, (ArithmeticAddH v):k)
evalExp (v@(Val (IntValue e1)), env, (ArithmeticAddH (Val (IntValue e2))):k)| isValue v   = return ((Val (IntValue (e1 + e2))), env, k)

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
