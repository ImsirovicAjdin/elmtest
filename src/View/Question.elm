module View.Question exposing (view)

import Html exposing (Html, div, text)
import Data.Question exposing (Question)
import View.Button

view : Question -> Html msg
view { question, correct, incorrect } =
    let 
        answers =
            List.sort (correct :: incorrect)
    in 
        div [] 
            [ text question
            , div []
                (answers
                    |> List.map View.Button.btn
                    |> List.intersperse (text " ")   
                )
            ]