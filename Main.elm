import DigitSummer
import Graphics.Element exposing (Element)
import Keyboard exposing (presses)

-- signals and inputs
state : Signal DigitSummer.Model
state =
  Signal.foldp DigitSummer.update 0 actions

{-- todo: should rename actions to digitsPressed (or something like that)
once we've udpated this logic to fliter out non-digits --}
actions : Signal DigitSummer.Action
actions = 
  Signal.map (\keyPress -> DigitSummer.KeyPress keyPress) presses
  

main : Signal Element
main =
  Signal.map DigitSummer.view state
