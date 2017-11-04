module Main exposing (..)

import Html exposing (Html, text)


view : Model -> Html msg
view model =
    text 
        ("Question: "
            ++ (model.question)
            ++ " Answer: "
            ++ (model.answer)
        )


init = 
    { question = "Why did the chicken cross the road?"
    , answer = "To get to the other side"
    }

main : Html msg
main =
    view init