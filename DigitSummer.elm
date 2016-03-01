module DigitSummer (Model, view, update, Action(NoOp, DigitPressed)) where

import Html exposing (..)
import Keyboard exposing (presses)
import Char exposing (KeyCode)

-- model 

type alias Model = Int

-- view

view : Model -> Html
view model =
  div [] [
     div [] [text "Elm Digit Summer"]
    ,span [] [text (toString model)]
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

