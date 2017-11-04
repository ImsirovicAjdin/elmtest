module Main exposing (..)

import Html exposing (text)
import Set
import Array

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

array =
    Array.empty
        |> Array.push 1
        |> Array.push 2
        |> Array.push 3

transformArray array = 
    -- the only unique property of arrays is that you can 
    -- read elements by index
    -- So instead of mapping over an array (which is also
    -- kind of useful), 
    -- I'm gonna try retreiving an item, and just casting
    -- it to a string and outputting it to the browser
    -- I'll use Array.get to retreive an item:
    array
        |> Array.get 1
        |> toString
    -- ... and then I've cast it to string


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
    array
        |> toString
        |> text