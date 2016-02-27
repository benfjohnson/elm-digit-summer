module DigitSummer (Model, view, update, Action(NoOp,KeyPress)) where

import Graphics.Element exposing (..)
import Keyboard exposing (presses)
import Char exposing (KeyCode)

-- model 

type alias Model = KeyCode

-- view

view : Model -> Element
view model =
  show model

-- update

type Action =
  NoOp
  | KeyPress KeyCode

update : Action -> Model -> Model
update action model =
  case action of
    KeyPress keyCode -> keyCode
    NoOp -> model    


