module Main exposing (..)

import Html exposing (text)


view { question, answer } =
    text 
        ("Question: "
            ++ question
            ++ " Answer: "
            ++ answer
        )


init = 
    { question = "Why did the chicken cross the road?"
    , answer = "To get to the other side"
    }

main =
    view init