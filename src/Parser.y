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
    '@'       { TokenListGetElement p }

    '+'       { TokenOpAdd p }
    '-'       { TokenOpMinus p }
    '*'       { TokenOpMultiply p }
    '/'       { TokenOpDivide p }
    '%'       { TokenOpModulo p }
    '^'       { TokenOpExponent p }

    '&'       { TokenOpAnd p }
    '|'       { TokenOpOr p }
    '<'       { TokenOpLT p }
    '>'       { TokenOpGT p }
    "=="      { TokenOpEQ p }
    "<="      { TokenOpLTEQ p }
    ">="      { TokenOpGTEQ p }
    "!="      { TokenOpNEQ p }
    '!'       { TokenOpNot p }

    "++"      { TokenAssignOpIncrement p }
    "--"      { TokenAssignOpDecrement p }
    "+="      { TokenAssignOpAddition p }
    "-="      { TokenAssignOpSubtraction p }
    "*="      { TokenAssignOpMultiplication p }
    "/="      { TokenAssignOpDivision p }
    "%="      { TokenAssignOpModulus p }
    "^="      { TokenAssignOpExponation p }
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
    if        { TokenKeywordIf p }
    then      { TokenKeywordThen p }
    else      { TokenKeywordElse p }
    func      { TokenKeywordFunc p }
    "return"  { TokenKeywordReturn p }
    "print"   { TokenKeywordPrint p }
    "leng"    { TokenKeywordLength p }
    "append"  { TokenKeywordAppend p }
    var       { TokenVariable p $$ }
    str       { TokenString p $$ }
    char      { TokenChar p  $$ }
    int       { TokenInteger p $$ }
    true      { TokenBoolTrue p }
    false     { TokenBoolFalse p }

%right in

%nonassoc '&' '|'
%nonassoc '<' '>' "==" "<=" ">=" "!="
%nonassoc '!'
%nonassoc "leng"
%right "append"
%right '@'
%left '+' '-'
%left '*' '/' '%'
%left '^'

%right ';'
%%
Exp : var "::" '(' TypeList ')' "->" Type                         { FuncTypeDeclaration $1 (FunctionType $4 $7) }
    | func var '(' VarList ')' '{' Exp '}'                        { FuncDeclaration $2 $4 $7 }
    | if '(' Value ')' then '{' Exp '}' else '{' Exp '}'          { IfElseStatement $3 $7 $11 }
    | if '(' Value ')' then '{' Exp '}'                           { IfStatement $3 $7 }
    | loop '(' Exp ',' Value ')' '{' Exp '}'                      { LoopStatement $3 $5 $8 }
    | var '(' ValueList ')'                                       { Val (FunctionCall $1 $3) } -- Method Call
    | "return" Value                                              { ReturnStatement $2 }
    | "print" Value                                               { PrintStatement $2 }
    | Type var '=' Value                                          { NewAssignment $1 $2 $4 }
    | var '=' Value                                               { ReAssignment $1 $3 }

    | var "++"                                                    { ReAssignment $1 (ArithmeticAdd (VariableValue $1) (IntValue 1)) }
    | var "--"                                                    { ReAssignment $1 (ArithmeticMinus (VariableValue $1) (IntValue 1)) }
    | var "+=" Value                                              { ReAssignment $1 (ArithmeticAdd (VariableValue $1) $3) }
    | var "-=" Value                                              { ReAssignment $1 (ArithmeticMinus (VariableValue $1) $3) }
    | var "*=" Value                                              { ReAssignment $1 (ArithmeticMultiply (VariableValue $1) $3) }
    | var "/=" Value                                              { ReAssignment $1 (ArithmeticDivide (VariableValue $1) $3) }
    | var "%=" Value                                              { ReAssignment $1 (ArithmeticModulo (VariableValue $1) $3) }
    | var "^=" Value                                              { ReAssignment $1 (ArithmeticExponent (VariableValue $1) $3) }

    | Exp ';' Exp                                                 { ExpList $1 $3 }
    | Exp ';'                                                     { $1 }

Value : Value '+' Value             { ArithmeticAdd $1 $3 }
      | Value '-' Value             { ArithmeticMinus $1 $3 }
      | Value '*' Value             { ArithmeticMultiply $1 $3 }
      | Value '/' Value             { ArithmeticDivide $1 $3 }
      | Value '%' Value             { ArithmeticModulo $1 $3 }
      | Value '^' Value             { ArithmeticExponent $1 $3 }

      | Value '&' Value             { BooleanAnd $1 $3 }
      | Value '|' Value             { BooleanOr $1 $3 }
      | Value "==" Value            { BooleanEQ $1 $3 }
      | Value '<' Value             { BooleanLT $1 $3 }
      | Value '>' Value             { BooleanGT $1 $3 }
      | Value "<=" Value            { BooleanLTEQ $1 $3 }
      | Value ">=" Value            { BooleanGTEQ $1 $3 }
      | Value "!=" Value            { BooleanNEQ $1 $3 }

      | '!' Value                   { Not $2 }
      | var '(' ValueList ')'       { FunctionCall $1 $3 }
      | '[' ValueList ']'           { List $2 }
      | Value '@' Value             { ListGetElement $1 $3 }
      | "leng" Value                { ListGetLength $2 }
      | Value "append" Value        { ListAppendValue $1 $3 }
      | var                         { VariableValue $1 }
      | str                         { StringValue $1 }
      | int                         { IntValue $1 }
      | char                        { CharValue $1 }
      | true                        { TrueValue }
      | false                       { FalseValue }
      | '(' Value ')'               { $2 }

ValueList : Value ',' ValueList     { ValueList $1 $3 }
          | Value                   { ValueList $1 EmptyValueList }
          |                         { EmptyValueList }

VarList : var ',' VarList           { VarList $1 $3 }
        | var                       { VarList $1 EmptyVarList }
        |                           { EmptyVarList }

TypeList : Type ',' TypeList        { TypeList $1 $3 }
         | Type                     { TypeList $1 EmptyTypeList }
         |                          { EmptyTypeList }

Type : String                       { TypeString }
     | Char                         { TypeChar }
     | Int                          { TypeInt }
     | Bool                         { TypeBool }
     | '[' Type ']'                 { TypeStream $2 }


{
parseError :: [Token] -> a
parseError (t:ts) = error ("Parse error at: " ++ tokenPosn t)

data Exp = FuncTypeDeclaration String Type
         | FuncDeclaration String VarList Exp
         | IfElseStatement Value Exp Exp
         | IfStatement Value Exp
         | LoopStatement Exp Value Exp
         | ReturnStatement Value
         | PrintStatement Value

         | NewAssignment Type String Value
         | ReAssignment String Value

         | ExpList Exp Exp
         | Val Value
         | ValList ValueList
         | VarListWrapper VarList
         deriving (Show, Eq)

data Value = ArithmeticAdd Value Value
           | ArithmeticMinus Value Value
           | ArithmeticMultiply Value Value
           | ArithmeticDivide Value Value
           | ArithmeticModulo Value Value
           | ArithmeticExponent Value Value

           | BooleanAnd Value Value
           | BooleanOr Value Value
           | BooleanLT Value Value
           | BooleanGT Value Value
           | BooleanEQ Value Value
           | BooleanLTEQ Value Value
           | BooleanGTEQ Value Value
           | BooleanNEQ Value Value
           | Not Value

           | FunctionCall String ValueList
           | List ValueList
           | ListGetElement Value Value
           | ListGetLength Value
           | ListAppendValue Value Value
           | VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           | NullValue
           deriving (Show, Eq)

data ValueList = ValueList Value ValueList
               | EmptyValueList
               deriving (Show, Eq)

data VarList = VarList String VarList
             | EmptyVarList
             deriving (Show, Eq)

data TypeList = TypeList Type TypeList
              | EmptyTypeList
              deriving (Show, Eq)

data Type = TypeNull
          | TypeString
          | TypeChar
          | TypeInt
          | TypeBool
          | TypeStream Type
          | FunctionType TypeList Type
          deriving (Show, Eq)

}
