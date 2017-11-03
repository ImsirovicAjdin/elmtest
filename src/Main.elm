module Main exposing (..)

import Html exposing (text)

answer =
    "To get to the other side!"

question = 
    "Why did the C x the R?"

view model =
    text 
        ("Question: "
            ++ (Tuple.first model)
            ++ " Answer: "
            ++ (Tuple.second model)
        )


init = 
    ( question, answer )

main =
    view init