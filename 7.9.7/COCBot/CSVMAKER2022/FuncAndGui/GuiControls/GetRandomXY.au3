; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Get Get Random X and Y points for Spell
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
Func GetRandomXY()
   $InputRandomX = StringLeft(String(Number(Guictrlread($txtRandomX))) & $BlankCharacters, 11)
   $InputRandomY = StringLeft(String(Number(Guictrlread($txtRandomY))) & $BlankCharacters, 11)
EndFunc

Func AddRandomXandY()
	If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
		GUICtrlSetState($txtRandomX,$GUI_ENABLE)
		GUICtrlSetState($lblRandomXY1,$GUI_ENABLE)
		GUICtrlSetState($txtRandomY,$GUI_ENABLE)
		Local $txt = "RANDOM X and RANDOM Y are the amount of randomness to use when dropping. If you have a randomx of "&GUICtrlRead($txtRandomX)&" and a randomy of "&GUICtrlRead($txtRandomY)&", then the bot will drop each troop between [droppointX-"&GUICtrlRead($txtRandomX)&", droppointY-"&GUICtrlRead($txtRandomY)&"] and [droppointX+"&GUICtrlRead($txtRandomX)&", droppointY+"&GUICtrlRead($txtRandomY)&"]. A higher randomness amount may make the bot look more humanlike, but this is only for spell for now."
		MsgBox($MB_OK,"WARNING",$txt,15)
	Else
		GUICtrlSetState($txtRandomX,$GUI_DISABLE)
		GUICtrlSetState($lblRandomXY1,$GUI_DISABLE)
		GUICtrlSetState($txtRandomY,$GUI_DISABLE)
		GUICtrlSetData($txtRandomX, 0)
		GUICtrlSetData($txtRandomY, 0)
	EndIf
EndFunc



