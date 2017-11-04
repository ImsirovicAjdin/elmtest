module Main exposing (..)

import Html exposing (text)
import Set

list =
    1 :: [ 2 ] ++ [ 3 ]

transformList list =
    list
        |> List.map (\a -> a + 1)
        |> List.map toString
        |> String.join ", "

set =
    Set.fromList (list)

transformSet set =
    set 
        |> Set.map (\a -> a + 1)
        |> Set.map toString
        |> Set.toList
        |> String.join ", "

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

main =
    -- view init
    set 
        |> transformSet
        |> text