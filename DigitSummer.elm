module DigitSummer (Model, view) where

import Graphics.Element exposing (..)
import Keyboard exposing (presses)
import Char exposing (KeyCode)

-- model 

type alias Model = KeyCode

-- view

view : Model -> Element
view model =
  show model
