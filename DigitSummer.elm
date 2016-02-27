module DigitSummer (Model, view) where

import Graphics.Element exposing (..)


-- model 

type alias Model = Int

-- view

view : Model -> Element
view model =
  show model

-- update

-- inputs
