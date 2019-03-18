import Evaluator
import System.IO
import System.Environment
import System.Directory

main = do
      args <- getArgs
      contents <- getContents
      if length args == 1 && contents /= "" then
        do
          fileExists <- doesFileExist (args !! 0)
          if fileExists
            then
              do
                putStrLn ("Running program: " ++ (args !! 0) ++ "\t\nOn input: " ++ contents)

                putStrLn ("\nStarting Interpreting: \n")
                fileContents <- readFile (args !! 0)
                resultState <- (evalFull $ fileContents)
                putStrLn ("\nFinished Interpreting")
                return ""
              else error "Failed to interpret file: File does not exists"
        else
          error "Invalid number of parameters passed to the interpreter"
      print args
      return ""
