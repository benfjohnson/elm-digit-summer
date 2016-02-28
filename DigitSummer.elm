module DigitSummer (Model, view, update, Action(NoOp, DigitPressed)) where

import Graphics.Element exposing (..)
import Keyboard exposing (presses)
import Char exposing (KeyCode)

-- model 

type alias Model = Int

-- view

view : Model -> Element
view model =
  show model

-- update

type Action =
  NoOp
  | DigitPressed Int

update : Action -> Model -> Model
update action model =
  case action of
    DigitPressed digit -> model + digit
    NoOp -> model    


