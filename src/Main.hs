import Evaluator
import System.IO
import System.Environment
import System.Directory

main = do
      args <- getArgs
      print args;
      if length args == 1 then
        do
          fileExists <- doesFileExist (args !! 0)
          if fileExists
            then
              do
                fileContents <- readFile (args !! 0)
                print ("Starting Interpreting " ++ (args !! 0))
                resultState <- (evalFull $ fileContents)
                print ("Finished Interpreting")
                return ""
              else error "Failed to interpret file: File does not exists"
        else
          error "Invalid number of parameters passed to interpreter"
      print args
      return ""
