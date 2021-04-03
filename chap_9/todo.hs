--{-# OPTIONS -Wall -Werror #-}

import System.Environment
import System.Directory
import System.IO

dispatch :: String -> [String] -> IO ()
dispatch "add" = add
--dispatch "view" = view
--dispatch "remove" = remove

add :: [String] -> IO ()
add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")

main = do
    (command:argList) <- getArgs
    dispatch command argList
