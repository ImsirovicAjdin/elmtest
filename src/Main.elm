module Main exposing (..)

import Html exposing (Html, text, div)
import Maybe
import Util exposing ((=>))
import Data.Difficulty exposing (Difficulty)
import Data.Question exposing (Question)
import View.Question

type alias Model = 
    { difficulty : Difficulty
    , questions : List Question
    }


init : Model
init = 
    Model
        Data.Difficulty.default
        [ Question
            Nothing
            "A caterpillar has more muscles than humans do."
            "True"
            [ "False" ]
        ]

main : Html msg
main =
    div [] 
        (List.map View.Question.view init.questions)