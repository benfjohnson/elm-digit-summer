import DigitSummer
import Graphics.Element exposing (Element)
import Keyboard exposing (presses)
import Char exposing (fromCode, isDigit)
import String exposing (toInt, fromChar)

-- signals and inputs
state : Signal DigitSummer.Model
state =
  Signal.foldp DigitSummer.update 0 actions

{-- signal of actions, filters out keypresses that weren't digits --}
actions : Signal DigitSummer.Action
actions = 
  let keyPressToAction keyPress =
    if 
      fromCode keyPress |> isDigit
    then
      DigitSummer.DigitPressed (fromCode keyPress |> fromChar |> toInt |> Result.toMaybe |> Maybe.withDefault 0)
    else
      DigitSummer.NoOp
  in
    Signal.map keyPressToAction presses
  

main : Signal Element
main =
  Signal.map DigitSummer.view state
