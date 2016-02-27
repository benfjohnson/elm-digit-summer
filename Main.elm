import DigitSummer
import Graphics.Element exposing (Element)
import Keyboard exposing (presses)

state : Signal DigitSummer.Model
state =
  Signal.foldp (\ keyCode _ -> keyCode) 0 presses

main : Signal Element
main =
 Signal.map DigitSummer.view state
