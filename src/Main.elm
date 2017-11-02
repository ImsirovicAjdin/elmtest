module Main exposing (..)

import Html exposing (text)

question = 
    "Why did the C x the R?"

view model =
    text model

-- (1)
init = 
    "Question: " 
        ++ question 
        ++ " Answer: To get to the other side"

main =
    view init -- (2)