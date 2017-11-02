module Main exposing (..)

import Html exposing (text)

answer =
    "To get to the other side!"

question = 
    "Why did the C x the R?"

view model =
    text model


init = 
    "Question: " 
        ++ question 
        ++ " Answer: "
        ++ answer

-- (1)
sum a b =
    a + b
-- (2)
sumWithOne =
    sum 1

toUpperLambda =
    (\str -> String.toUpper str)

main =
    text (toString (sumWithOne 2))