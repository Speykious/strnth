module Main where

import Console.Display
import Console.Options
import System.Clipboard
import Text.Read

wordnth w n | n < 1     = ""
            | n == 1    = tw
            | otherwise = tw ++ "^{" ++ wordnth w (n - 1) ++ "}"
  where tw = "\\text{" ++ w ++ "}"

redror = "\x1b[31m\x1b[1mError:\x1b[0m "

-- act :: (OptionDesc r (ArgRemaining [String])) -> (Action r) -> IO ()
act allArgs tpm = case tpm allArgs of
    []       -> putStrLn $ redror ++ "Missing first argument."
    (x:[])   -> putStrLn $ redror ++ "Missing second argument."
    (x:s:_) -> case readMaybe x of
      Nothing -> putStrLn $ redror ++ "First argument must be a number."
      Just n  -> do
        let yeet = generate n s
        putStrLn yeet
        setClipboardString yeet
        putStrLn "\x1b[1m\x1b[32mCopied to clipboard\x1b[0m"
  where
    generate n str = "$" ++ wordnth str n ++ "$"

main :: IO ()
main = defaultMain $ do
  programName "strnth"
  allArgs <- remainingArguments "STRING"
  action $ act allArgs
