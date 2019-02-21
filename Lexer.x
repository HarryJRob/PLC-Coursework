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

  $alpha[$alpha $digit]* { \p s -> TokenVariable p s}
  '\"'.*'\"'    { \p s -> TokenString p s }
  '\''.'\''     { \p (_:c:_) -> TokenChar p c }
  $digit+       { \p s -> TokenInteger p (read s) }
  [t T]rue      { \p s -> TokenBoolTrue p }
  [f F]alse     { \p s -> TokenBoolFalse p }

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
tokenPosn _ = ""
}
