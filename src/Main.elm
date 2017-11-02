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

toUpperLambda =
    (\str -> String.toUpper str) -- (1)

main =
    init
        |> toUpperLambda -- (2)
        |> view