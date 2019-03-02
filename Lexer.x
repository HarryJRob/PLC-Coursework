{
module Lexer where
}

%wrapper "posn"
$digit = 0-9
-- digits
$alpha = [a-zA-Z]
-- alphabetic characters

Tokens :-
  $white+       ;
  "##".*        ;
  "#{"[. \n]*"}#" ;

  String        { \p s -> TokenTypeString p }
  Char          { \p s -> TokenTypeChar p }
  Int           { \p s -> TokenTypeInt p }
  Bool          { \p s -> TokenTypeBoolean p }

  \[            { \p s -> TokenListStart p }
  \]            { \p s -> TokenListEnd p }
  "..."         { \p s -> TokenListSeries p }
  \@            { \p s -> TokenListGetElement p }

  \+            { \p s -> TokenSymAdd p }
  \-            { \p s -> TokenSymMinus p }
  \*            { \p s -> TokenSymMultiply p }
  \/            { \p s -> TokenSymDivide p }
  \%            { \p s -> TokenSymModulo p }
  \^            { \p s -> TokenSymExponent p }
  \&            { \p s -> TokenSymAnd p }
  \|            { \p s -> TokenSymOr p }
  \<            { \p s -> TokenSymLessThan p }
  \>            { \p s -> TokenSymGreaterThan p }
  \!            { \p s -> TokenSymNot p }

  "=="          { \p s -> TokenOpEquals p }
  "++"          { \p s -> TokenOpIncrement p }
  "--"          { \p s -> TokenOpDecrement p }
  "+="          { \p s -> TokenOpAddition p }
  "-="          { \p s -> TokenOpSubtraction p }
  "*="          { \p s -> TokenOpMultiplication p }
  "/="          { \p s -> TokenOpDivision p }
  "%="          { \p s -> TokenOpModulus p }
  "^="          { \p s -> TokenOpExponation p }

  \,            { \p s -> TokenComma p }
  \;            { \p s -> TokenSemicolon p }
  \=            { \p s -> TokenAssignment p }
  \{            { \p s -> TokenCurlyBracketOpen p }
  \}            { \p s -> TokenCurlyBracketClose p }
  \(            { \p s -> TokenBracketOpen p }
  \)            { \p s -> TokenBracketClose p }
  "::"          { \p s -> TokenTypeDeclaration p }
  "->"          { \p s -> TokenFuncTransition p }

  loop          { \p s -> TokenKeywordLoop p }
  if            { \p s -> TokenKeywordIf p }
  then          { \p s -> TokenKeywordThen p }
  else          { \p s -> TokenKeywordElse p }
  func          { \p s -> TokenKeywordFunc p }
  return        { \p s -> TokenKeywordReturn p }
  print         { \p s -> TokenKeywordPrint p }

  [t T]rue      { \p s -> TokenBoolTrue p }
  [f F]alse     { \p s -> TokenBoolFalse p }
  \".*\"        { \p s -> TokenString p s }
  \'.\'         { \p (_:c:_) -> TokenChar p c }
  $digit+       { \p s -> TokenInteger p (read s) }
  $alpha[$alpha $digit]* { \p s -> TokenVariable p s}

{
-- Each action has type :: String -> Token
-- The Token type:
data Token =
  TokenCommentStart AlexPosn |
  TokenCommentEnd AlexPosn |
  TokenTypeString AlexPosn |
  TokenTypeChar AlexPosn |
  TokenTypeInt AlexPosn |
  TokenTypeBoolean AlexPosn |
  TokenListStart AlexPosn |
  TokenListEnd AlexPosn |
  TokenListSeries AlexPosn |
  TokenListGetElement AlexPosn |
  TokenSymAdd AlexPosn |
  TokenSymMinus AlexPosn |
  TokenSymMultiply AlexPosn |
  TokenSymDivide AlexPosn |
  TokenSymModulo AlexPosn |
  TokenSymExponent AlexPosn |
  TokenSymAnd AlexPosn |
  TokenSymOr AlexPosn |
  TokenSymLessThan AlexPosn |
  TokenSymGreaterThan AlexPosn |
  TokenSymNot AlexPosn |
  TokenOpEquals AlexPosn |
  TokenOpIncrement AlexPosn |
  TokenOpDecrement AlexPosn |
  TokenOpAddition AlexPosn |
  TokenOpSubtraction AlexPosn |
  TokenOpMultiplication AlexPosn |
  TokenOpDivision AlexPosn |
  TokenOpModulus AlexPosn |
  TokenOpExponation AlexPosn |
  TokenComma AlexPosn |
  TokenSemicolon AlexPosn |
  TokenAssignment AlexPosn |
  TokenCurlyBracketOpen AlexPosn |
  TokenCurlyBracketClose AlexPosn |
  TokenBracketOpen AlexPosn |
  TokenBracketClose AlexPosn |
  TokenTypeDeclaration AlexPosn |
  TokenFuncTransition AlexPosn |
  TokenKeywordLoop AlexPosn |
  TokenKeywordIf AlexPosn |
  TokenKeywordThen AlexPosn |
  TokenKeywordElse AlexPosn |
  TokenKeywordFunc AlexPosn |
  TokenKeywordReturn AlexPosn |
  TokenKeywordPrint AlexPosn |
  TokenVariable AlexPosn String |
  TokenString AlexPosn String |
  TokenChar AlexPosn Char |
  TokenInteger AlexPosn Int |
  TokenBoolTrue AlexPosn |
  TokenBoolFalse AlexPosn
  deriving (Eq,Show)

tokenPosn :: Token -> String
tokenPosn (TokenCommentStart (AlexPn a l c) )          = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenCommentEnd (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeString (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeChar (AlexPn a l c) )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeInt (AlexPn a l c) )               = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeBoolean (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenListStart (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenListEnd (AlexPn a l c) )               = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenListSeries (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenListGetElement (AlexPn a l c) )        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymAdd (AlexPn a l c) )                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymMinus (AlexPn a l c) )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymMultiply (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymDivide (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymModulo (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymExponent (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymAnd (AlexPn a l c) )                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymOr (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymLessThan (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymGreaterThan (AlexPn a l c) )        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSymNot (AlexPn a l c))                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpEquals (AlexPn a l c) )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpIncrement (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpDecrement (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpAddition (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpSubtraction (AlexPn a l c) )         = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpMultiplication (AlexPn a l c) )      = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpDivision (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpModulus (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpExponation (AlexPn a l c) )          = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenComma (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSemicolon (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignment (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenCurlyBracketOpen (AlexPn a l c) )      = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenCurlyBracketClose (AlexPn a l c) )     = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBracketOpen (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBracketClose (AlexPn a l c) )          = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeDeclaration (AlexPn a l c) )       = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenFuncTransition (AlexPn a l c) )        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordLoop (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordIf (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordThen (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordElse (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordFunc (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordReturn (AlexPn a l c) )         = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordPrint (AlexPn a l c) )          = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenVariable (AlexPn a l c) s )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenString (AlexPn a l c) s )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenChar (AlexPn a l c) char )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenInteger (AlexPn a l c) i )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBoolTrue (AlexPn a l c) )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBoolFalse  (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
}
