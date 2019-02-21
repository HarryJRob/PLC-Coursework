{
module Lexer where
}

%wrapper "posn"
$digit = 0-9
-- digits
$alpha = [a-zA-Z]
-- alphabetic characters

tokens :-
  $white+       ;


{
-- Each action has type :: String -> Token
-- The token type:
data Token =

  deriving (Eq,Show)

tokenPosn :: Token -> String

}
