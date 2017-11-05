module Main exposing (..)

import Html exposing (Html, text)
import Maybe
import Util exposing (..)
import Data.Difficulty exposing (Difficulty, default)
import Data.Question exposing (Question)
import View.Question

type alias Model = 
    { difficulty : Difficulty
    , questions : List Question
    }

unwrapMaybe : Maybe String -> String
unwrapMaybe mb =
    Maybe.withDefault "There's no answer" mb

 
parsedInt : Result String Int 
parsedInt =
    String.toInt "5"


unwrapResult : Result String Int -> Int
unwrapResult res =
    case res of
        Ok val -> 
            val
        Err err ->
            5




init : Model
init = 
    Model
        default
        [ Question
            (Just "TO get to the other side") -- Nothing
            "Why did the chicken cross the road?"
            "To get to the other side"
            []
        ]

main : Html msg
main =
    -- view init
    parsedInt
        |> Result.toMaybe
        |> Maybe.map toString
        |> unwrapMaybe
        |> text