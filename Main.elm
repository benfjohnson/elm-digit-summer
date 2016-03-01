import DigitSummer
import Keyboard exposing (presses)
import Char exposing (fromCode, isDigit)
import String exposing (toInt, fromChar)
import Html exposing (..)

-- signals and inputs
state : Signal DigitSummer.Model
state =
  Signal.foldp DigitSummer.update 0 (Signal.merge inbox.signal actions)

inbox : Signal.Mailbox DigitSummer.Action
inbox = Signal.mailbox DigitSummer.NoOp

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
  

main : Signal Html
main =
  Signal.map (DigitSummer.view inbox.address) state
