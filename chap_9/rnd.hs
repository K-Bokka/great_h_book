{-# OPTIONS -Wall -Werror #-}

import System.Random

main :: IO ()
main = do
    gen <- getStdGen
    putStrLn $ take 20 (randomRs ('a', 'z') gen)
    gen2 <- newStdGen
    putStrLn $ take 20 (randomRs ('a', 'z') gen2)
