; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Get Quantity of X Vector
; Description ...:
; Syntax ........:
; Parameters ....:
; Return values .:
; Author ........: ratakantez
; Modified ......: ratakantez (12th March 2022)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2022
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; =================================================================================================================================
Func GetQTY_X_VECT()
   $ValueOfInputBox = Number(GUICtrlRead($InputBoxOnMap))
   $ADDCSVInputBox = String(StringLeft(String($ValueOfInputBox) & $BlankCharacters,11))
EndFunc