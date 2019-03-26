import Evaluator
import TypeChecker
import Parser
import Lexer

import System.IO
import System.Environment
import System.Directory
import Control.DeepSeq

getColumns :: [[String]] -> [[String]]
getColumns sss
  | head sss /= []  = (map (head) sss) : getColumns (map (tail) sss)
  | otherwise       = []

listToValueList :: [String] -> ValueList
listToValueList []      = EmptyValueList
listToValueList (s:ss)  = ValueList (IntValue (read s)) (listToValueList ss)

listOflistToValueList :: [[String]] -> ValueList
listOflistToValueList [] = EmptyValueList
listOflistToValueList (ss:sss) = ValueList (List (listToValueList ss)) (listOflistToValueList sss)

strToValuelist :: String -> ValueList
strToValuelist s = listOflistToValueList $ getColumns $ map (words) $ lines s

valueListToList :: ValueList -> [Int]
valueListToList (EmptyValueList)            = []
valueListToList (ValueList (IntValue v) v2) = v:(valueListToList v2)

valueListToListOfList :: ValueList -> [[Int]]
valueListToListOfList (EmptyValueList)             = []
valueListToListOfList (ValueList (List v1) v2)     = (valueListToList v1):(valueListToListOfList v2)

removeChar :: String -> Char -> String
removeChar str char = [ x | x <- str, x /= char]

replaceChar :: String -> Char -> Char -> String
replaceChar [] char1 char2 = []
replaceChar (s:str) char1 char2
  | s == char1  = char2:(replaceChar str char1 char2)
  | otherwise   = s:(replaceChar str char1 char2)

listToOutput :: [[Int]] -> String
listToOutput []   = ""
listToOutput xss
  | head xss /= [] = (replaceChar (removeChar (replaceChar (show $ [ x | x <- (map (head) xss)]) ',' ' ') '[') ']' '\n') ++ (listToOutput $ map (tail) xss)
  | otherwise      = []

valueListToStr :: ValueList -> String
valueListToStr vl = reverse $ tail $ reverse $ (listToOutput $ valueListToListOfList vl)

main = do
      args <- getArgs
      contents <- getContents
      if length args == 1 && contents /= "" then
        do
          fileExists <- doesFileExist (args !! 0)
          if fileExists
            then
              do
                -- putStrLn ("Running program: " ++ (args !! 0) ++ "\t\nOn input:\n" ++ contents)

                -- putStrLn ("Interpreting: ")
                -- putStrLn ("Reading file...")
                fileContents <- readFile (args !! 0)

                -- putStrLn ("Lexing...")
                lexedContents <- return (alexScanTokens fileContents)

                -- putStrLn ("Parsing...")
                parsedContents <- return (parseCalc $ lexedContents)

                -- putStrLn ("Checking Types...")
                if (typeCheck parsedContents (("args", TypeStream (TypeStream TypeInt)):[])) /= (TypeNull, [])
                  then do
                    -- putStrLn "Starting Evaluation..."
                    (v, env, k) <- evalLoop $ return (parsedContents, ("args",(Val (List (strToValuelist contents)))):[], [])
                    (Val (List argsOut)) <- return $ getValueBinding "args" env
                    putStrLn (valueListToStr $ argsOut)
                    -- putStrLn ("\nFinished!")
                    return ""
                  else return ""
                return ""
              else error "Failed to interpret file: File does not exists"
        else
          error "Invalid number of parameters passed to the interpreter"
      return ""
