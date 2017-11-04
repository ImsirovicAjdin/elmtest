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
view model =
    text 
        ("Question: "
            ++ (model.question)
            ++ " Answer: "
            ++ (model.answer)
        )

init : Model
init = 
    [ { question = "Why did the chicken cross the road?"
      , answer = "To get to the other side"
      , incorrect = []
      }
    ]

main : Html msg
main =
    view init