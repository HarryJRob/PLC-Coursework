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
  \@            { \p s -> TokenListGetElement p }

  \+            { \p s -> TokenOpAdd p }
  \-            { \p s -> TokenOpMinus p }
  \*            { \p s -> TokenOpMultiply p }
  \/            { \p s -> TokenOpDivide p }
  \%            { \p s -> TokenOpModulo p }
  \^            { \p s -> TokenOpExponent p }

  \&            { \p s -> TokenOpAnd p }
  \|            { \p s -> TokenOpOr p }
  \<            { \p s -> TokenOpLT p }
  \>            { \p s -> TokenOpGT p }
  "=="          { \p s -> TokenOpEQ p }
  "<="          { \p s -> TokenOpLTEQ p }
  ">="          { \p s -> TokenOpGTEQ p }
  "!="          { \p s -> TokenOpNEQ p }
  \!            { \p s -> TokenOpNot p }

  "++"          { \p s -> TokenAssignOpIncrement p }
  "--"          { \p s -> TokenAssignOpDecrement p }
  "+="          { \p s -> TokenAssignOpAddition p }
  "-="          { \p s -> TokenAssignOpSubtraction p }
  "*="          { \p s -> TokenAssignOpMultiplication p }
  "/="          { \p s -> TokenAssignOpDivision p }
  "%="          { \p s -> TokenAssignOpModulus p }
  "^="          { \p s -> TokenAssignOpExponation p }

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
  leng          { \p s -> TokenKeywordLength p }
  app           { \p s -> TokenKeywordAppend p }
  concat        { \p s -> TokenKeywordConcatonate p }

  [t T]rue      { \p s -> TokenBoolTrue p }
  [f F]alse     { \p s -> TokenBoolFalse p }
  \".*\"        { \p s -> TokenString p (reverse $ tail $ reverse $ tail s) }
  \'.\'         { \p (_:c:_) -> TokenChar p c }
  \-$digit+     { \p s -> TokenInteger p (read s) }
  $digit+       { \p s -> TokenInteger p (read s) }
  $alpha[$alpha $digit]* { \p s -> TokenVariable p s }

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
  TokenListGetElement AlexPosn |

  TokenOpAdd AlexPosn |
  TokenOpMinus AlexPosn |
  TokenOpMultiply AlexPosn |
  TokenOpDivide AlexPosn |
  TokenOpModulo AlexPosn |
  TokenOpExponent AlexPosn |

  TokenOpAnd AlexPosn |
  TokenOpOr AlexPosn |
  TokenOpLT AlexPosn |
  TokenOpGT AlexPosn |
  TokenOpEQ AlexPosn |
  TokenOpLTEQ AlexPosn |
  TokenOpGTEQ AlexPosn |
  TokenOpNEQ AlexPosn |
  TokenOpNot AlexPosn |

  TokenAssignOpIncrement AlexPosn |
  TokenAssignOpDecrement AlexPosn |
  TokenAssignOpAddition AlexPosn |
  TokenAssignOpSubtraction AlexPosn |
  TokenAssignOpMultiplication AlexPosn |
  TokenAssignOpDivision AlexPosn |
  TokenAssignOpModulus AlexPosn |
  TokenAssignOpExponation AlexPosn |

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
  TokenKeywordLength AlexPosn |
  TokenKeywordAppend AlexPosn |
  TokenKeywordConcatonate AlexPosn |

  TokenVariable AlexPosn String |
  TokenString AlexPosn String |
  TokenChar AlexPosn Char |
  TokenInteger AlexPosn Int |
  TokenBoolTrue AlexPosn |
  TokenBoolFalse AlexPosn
  deriving (Eq,Show)

tokenPosn :: Token -> String
tokenPosn (TokenCommentStart (AlexPn a l c) )                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenCommentEnd (AlexPn a l c) )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenTypeString (AlexPn a l c) )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeChar (AlexPn a l c) )                    = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeInt (AlexPn a l c) )                     = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeBoolean (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenListStart (AlexPn a l c) )                   = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenListEnd (AlexPn a l c) )                     = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenListGetElement (AlexPn a l c) )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenOpAdd (AlexPn a l c) )                       = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpMinus (AlexPn a l c) )                     = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpMultiply (AlexPn a l c) )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpDivide (AlexPn a l c) )                    = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpModulo (AlexPn a l c) )                    = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpExponent (AlexPn a l c) )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenOpAnd (AlexPn a l c) )                       = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpOr (AlexPn a l c) )                        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpLT (AlexPn a l c) )                        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpGT (AlexPn a l c) )                        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpEQ (AlexPn a l c) )                        = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpLTEQ (AlexPn a l c) )                      = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpGTEQ (AlexPn a l c) )                      = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpNEQ (AlexPn a l c) )                       = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenOpNot (AlexPn a l c) )                       = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenAssignOpIncrement (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpDecrement (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpAddition (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpSubtraction (AlexPn a l c) )         = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpMultiplication (AlexPn a l c) )      = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpDivision (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpModulus (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignOpExponation (AlexPn a l c) )          = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenComma (AlexPn a l c) )                       = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenSemicolon (AlexPn a l c) )                   = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenAssignment (AlexPn a l c) )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenCurlyBracketOpen (AlexPn a l c) )            = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenCurlyBracketClose (AlexPn a l c) )           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBracketOpen (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBracketClose (AlexPn a l c) )                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenTypeDeclaration (AlexPn a l c) )             = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenFuncTransition (AlexPn a l c) )              = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenKeywordLoop (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenKeywordIf (AlexPn a l c) )                   = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordThen (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordElse (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordFunc (AlexPn a l c) )                 = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordReturn (AlexPn a l c) )               = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordPrint (AlexPn a l c) )                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordLength (AlexPn a l c))                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordAppend (AlexPn a l c))                = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenKeywordConcatonate (AlexPn a l c))           = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )

tokenPosn (TokenVariable (AlexPn a l c) s )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenString (AlexPn a l c) s )                    = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenChar (AlexPn a l c) char )                   = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenInteger (AlexPn a l c) i )                   = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBoolTrue (AlexPn a l c) )                    = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
tokenPosn (TokenBoolFalse  (AlexPn a l c) )                  = ("Line: " ++ show l ++ "\t" ++ "Column: " ++ show c )
}
