module Main exposing (..)

import Html exposing (Html, text)

type alias Question =
    { question : String
    , correct: String
    , incorrect : List String
    }

type alias Model = 
    { questions : List Question
    }

view : Model -> Html msg
view { questions } =
    questions
    |> List.map 
        (\{question, correct} ->
            "Question: "      
                ++ question   
                ++ " Answer: "
                ++ correct
        )
    |> String.join ", "
    |> text

init : Model
init = 
    Model
        [ Question
            "Why did the chicken cross the road?"
            "To get to the other side"
            []
        ]

main : Html msg
main =
    view init