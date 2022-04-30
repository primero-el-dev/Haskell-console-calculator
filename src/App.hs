module App where

import Text.Read
import qualified Calculator

run :: IO ()
run = do
    putStrLn "Calculator"
    putStrLn "1) Add"
    putStrLn "2) Subtract"
    putStrLn "3) Multiply"
    putStrLn "4) Division"
    putStrLn "5) Exit"
    answer <- read <$> getLine
    case answer of
        1 -> Calculator.interactiveAdding *> run
        2 -> Calculator.interactiveSubtracting *> run
        3 -> Calculator.interactiveMultiplying *> run
        4 -> Calculator.interactiveDividing *> run
        5 -> putStrLn "Exit"
        _ -> putStrLn "Bad input" *> run