module Main exposing (..)

import Html exposing (text)

list =
    1 :: [ 2 ] ++ [ 3 ]

transformList list =
    list
        |> List.map (\a -> a + 1)
        |> List.map toString -- (1)
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
    list 
        |> transformList
        -- |> toString (3)
        |> text