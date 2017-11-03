module Main exposing (..)

import Html exposing (text)


view model =
    text 
        ("Question: "
            ++ (.question model)
            ++ " Answer: "
            ++ (.answer model) -- (1)
        )


init = 
    { question = "Why did the chicken cross the road?"
    , answer = "To get to the other side"
    }

main =
    view init