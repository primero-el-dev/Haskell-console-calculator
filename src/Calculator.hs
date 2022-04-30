module Calculator where

import Text.Read

interactiveCalculation :: (Double -> Double -> Double) -> IO ()
interactiveCalculation action = do
    putStrLn "Enter first number:"
    a <- readMaybe <$> getLine
    putStrLn "Enter second number:"
    b <- readMaybe <$> getLine
    case action <$> a <*> b of
        Just c -> putStrLn $ "Result: " ++ (show c)
        Nothing -> do
            putStrLn "Bad data"
            interactiveCalculation action

interactiveAdding :: IO ()
interactiveAdding = interactiveCalculation (+)

interactiveSubtracting :: IO ()
interactiveSubtracting = interactiveCalculation (-)

interactiveMultiplying :: IO ()
interactiveMultiplying = interactiveCalculation (*)

interactiveDividing :: IO ()
interactiveDividing = interactiveCalculation (/)