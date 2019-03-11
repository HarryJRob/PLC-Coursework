import Lexer
import Parser

type Environment = [ (String, Exp) ]

data Frame = HNewAssignment Type String Environment
           | HReAssignment String Environment
           | HExpList Exp
           deriving (Show, Eq)

type Kontinuation = [ Frame ]
type State = (Exp, Environment, Kontinuation)

getValueBinding :: String -> Environment -> Exp
getValueBinding x [] = error "No variable bindings exist"
getValueBinding x ((y,e):env) | x == y    = e
                              | otherwise = getValueBinding x env

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

evalExp :: State -> State
evalExp (v,env,[]) | isValue v = (v,env,[])

evalExp (Val (VariableValue v), env, k) = (getValueBinding v env, env, k)

evalExp ((ExpList e1 e2), env, k) = (e1, env, (HExpList e2):k)
evalExp (v, env1, (HExpList e2):k) | isValue v = (e2, env1, k)

evalExp ((NewAssignment t s e1), env, k) = ((Val e1), env, (HNewAssignment t s env):k)
evalExp (v, env1, (HNewAssignment t s env2):k) | isValue v = (v,(s,v):env2,k)

evalExp ((ReAssignment s e1), env, k) = ((Val e1), env, (HReAssignment s env):k)
evalExp (v, env1, (HReAssignment s env2):k) | isValue v = (v,(s,v):env2,k)


evalLoop :: Exp -> Exp
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && length k == 0 then e' else evalLoop' (e',env',k')
                       where (e',env',k') = evalExp (e,env,k)

parse = parseCalc . alexScanTokens
