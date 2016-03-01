module DigitSummer (Model, view, update, Action(..)) where

import Html exposing (..)
import Html.Events exposing (onClick)
import Keyboard exposing (presses)
import Char exposing (KeyCode)

-- model 

type alias Model = Int

-- view

view : Signal.Address Action -> Model -> Html
view address model =
  div [] [
     div [] [text "Elm Digit Summer"]
    ,span [] [text (toString model)]
    ,br [] []
    ,button [onClick address Reset] [text "Reset"]
  ]  

-- update

type Action =
  NoOp
  | DigitPressed Int
  | Reset

update : Action -> Model -> Model
update action model =
  case action of
    DigitPressed digit -> model + digit
    NoOp -> model    
    Reset -> 0

