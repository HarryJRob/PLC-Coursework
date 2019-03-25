import Evaluator
import Parser
import System.IO
import System.Environment
import System.Directory

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


main = do
      args <- getArgs
      contents <- getContents
      if length args == 1 && contents /= "" then
        do
          fileExists <- doesFileExist (args !! 0)
          if fileExists
            then
              do
                putStrLn ("Running program: " ++ (args !! 0) ++ "\t\nOn input:\n" ++ contents)

                putStrLn ("Interpreting: \n")
                fileContents <- readFile (args !! 0)
                parsedContents <- return (parse $ fileContents)
                resultState <- evalLoop $ return (parsedContents, ("args",(Val (List (strToValuelist contents)))):[], [])
                putStrLn ("\nFinished!")
                return ""
              else error "Failed to interpret file: File does not exists"
        else
          error "Invalid number of parameters passed to the interpreter"
      print args
      return ""
