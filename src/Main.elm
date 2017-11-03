module Main exposing (..)

import Html exposing (text)

answer =
    "To get to the other side!"

question = 
    "Why did the C x the R?"

view ( question, answer ) =
    text 
        ("Question: "
            ++ question
            ++ " Answer: "
            ++ answer
        )


init = 
    ( "Why did the chicken cross the road?"
    , "To get to the other side"
    )

main =
    view init