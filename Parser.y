{
module Parser where
import Lexer
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
    String    { TokenTypeString p }
    Char      { TokenTypeChar p }
    Int       { TokenTypeInt p }
    Bool      { TokenTypeBoolean p }
    '['       { TokenListStart p }
    ']'       { TokenListEnd p }
    "..."     { TokenListSeries p }
    '@'       { TokenListGetElement p }
    '+'       { TokenSymAdd p }
    '-'       { TokenSymMinus p }
    '*'       { TokenSymMultiply p }
    '/'       { TokenSymDivide p }
    '%'       { TokenSymModulo p }
    '^'       { TokenSymExponent p }
    '&'       { TokenSymAnd p }
    '|'       { TokenSymOr p }
    '<'       { TokenSymLessThan p }
    '>'       { TokenSymGreaterThan p }
    "=="      { TokenOpEquals p }
    "++"      { TokenOpIncrement p }
    "--"      { TokenOpDecrement p }
    "+="      { TokenOpAddition p }
    "-="      { TokenOpSubtraction p }
    "*="      { TokenOpMultiplication p }
    "/="      { TokenOpDivision p }
    "%="      { TokenOpModulus p }
    "^="      { TokenOpExponation p }
    ','       { TokenComma p }
    ';'       { TokenSemicolon p }
    '='       { TokenAssignment p }
    '{'       { TokenCurlyBracketOpen p }
    '}'       { TokenCurlyBracketClose p }
    '('       { TokenBracketOpen p }
    ')'       { TokenBracketClose p }
    "::"      { TokenTypeDeclaration p }
    "->"      { TokenFuncTransition p }
    loop      { TokenKeywordLoop p }
    "if"      { TokenKeywordIf p }
    "then"    { TokenKeywordThen p }
    "else"    { TokenKeywordElse p }
    func      { TokenKeywordFunc p }
    "return"  { TokenKeywordReturn p }
    "print"   { TokenKeywordPrint p }
    var       { TokenVariable p $$ }
    str       { TokenString p $$ }
    char      { TokenChar p  $$ }
    int       { TokenInteger p $$ }
    true      { TokenBoolTrue p }
    false     { TokenBoolFalse p }



%%
Exp : var "::" '(' TypeList ')' "->" Type    { FuncTypeDeclaration $1 $4 $7 }
    | func var '(' VarList ')' '{' ExpList '}' { FuncDeclaration $2 $4 $7 }
    | loop '(' AssignmentList ',' Exp ',' Exp ')' '{' ExpList '}' { ForLoop $3 $5 $7 $10 }
    | loop '(' AssignmentList ',' Exp ')' '{' ExpList '}'     { UntilLoop $3 $5 $8 }
    | Type var '=' Value    { Assignment $1 $2 $4 }
    | Type var '=' var '(' VarList ')'  { FunctionCall $1 $2 $4 $6 }

Value : var       { VariableValue $1 }
      | str       { StringValue $1 }
      | int       { IntValue $1 }
      | char      { CharValue $1 }
      | true      { TrueValue }
      | false     { FalseValue }

AssignmentList : Assignment AssignmentList  { AssignmentList $1 $2}
               | Assignment                 { Assign $1 }

VarList : var ',' VarList       { VarList $1 $3 }
        | var                   { Var $1 }

ExpList : Exp ExpList                             { ExpList $1 $2 }
        | Exp ';' ExpList                         { ExpList $1 $3 }
        | Exp                                     { Exp $1 }

TypeList : Type ',' TypeList               { TypeList $1 $3 }
         | Type                            { Type $1 }


Type : String     { TypeString }
     | Char      { TypeChar }
     | Int       { TypeInt }
     | Bool      { TypeBool }

{
parseError :: [Token] -> a
parseError (t:ts) = error ("Parse error at: " ++ tokenPosn t)

data Exp = FuncTypeDeclaration String TypeList Type
         | FuncDeclaration String VarList ExpList
         | ForLoop AssignmentList Exp Exp ExpList
         | UntilLoop AssignmentList Exp ExpList
         | Assignment Type String Value
         | FunctionCall Type String String VarList
         deriving Show

data Value = VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           deriving Show

data AssignmentList = AssignmentList Assignment AssignmentList
                    | Assign Assignment
                    deriving Show

data VarList = VarList String VarList
             | Var String
             deriving Show

data TypeList = TypeList Type TypeList
              | Type Type
              deriving Show

data ExpList = ExpList Exp ExpList
             | Exp Exp
             deriving Show

data Type = TypeString
          | TypeChar
          | TypeInt
          | TypeBool
          deriving Show

}
