import DigitSummer
import Graphics.Element exposing (Element)

initialModel : DigitSummer.Model
initialModel = 0

main : Element
main =
  DigitSummer.view initialModel 
