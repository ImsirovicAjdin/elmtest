module Main exposing (..)

import Html exposing (Html, text)
import Maybe

type Difficulty
    = Any
    | Easy
    | Medium
    | Hard

default : Difficulty
default =
    Any

(=>) : a -> b -> (a, b)
(=>) =
    (,)

list : List ( String, Difficulty)
list =
    [ "Any" => Any
    , "Easy" => Easy
    , "Medium" => Medium
    , "Hard" => Hard
    ]

type alias Question =
    { userAnswer : Maybe String
    , question : String
    , correct: String
    , incorrect : List String
    }

type alias Model = 
    { difficulty : Difficulty
    , questions : List Question
    }

view : Model -> Html msg
view { questions } =
    questions
    |> List.map 
        (\{ question, userAnswer } ->
            "Question: "      
                ++ question   
                ++ " Answer: "
                ++ (toString userAnswer)
        )
    |> String.join ", "
    |> text

init : Model
init = 
    Model
        Any
        [ Question
            Nothing
            "Why did the chicken cross the road?"
            "To get to the other side"
            []
        ]

main : Html msg
main =
    view init