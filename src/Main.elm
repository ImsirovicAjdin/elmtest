module Main exposing (..)

import Html exposing (text)

answer =
    "To get to the other side!"

question = 
    "Why did the C x the R?"

view model =
    text model

-- (1)
init = 
    "Question: " 
        ++ question 
        ++ " Answer: "
        ++ answer

main =
    init
        |> String.toUpper
        |> view