module View.Button exposing (btn)

import Html exposing (Html, button, text)
import Html.Attributes exposing (class) -- cuz I wanna use Bootstrap

btn : String -> Html msg
btn txt =
    button [ class "btn btn-default" ] [ text txt ]