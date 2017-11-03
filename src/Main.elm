module Main exposing (..)

import Html exposing (text)

answer =
    "To get to the other side!"

question = 
    "Why did the C x the R?"

view model =
    text 
        ("Question: "
            ++ question
            ++ " Answer: "
            ++ answer)


init = 
    ( question, answer )

main =
    view init