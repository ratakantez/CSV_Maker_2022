; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Get Get Sleep Size
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
Func GetSleepSize()
	$GetSleep1 = _Min(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2)))
	$GetSleep2 = _Max(Number(GUICtrlRead($SleepInput1)),Number(GUICtrlRead($SleepInput2)))
    $ADDSleepCSV = StringLeft(String($GetSleep1) & "-" & String($GetSleep2) & $BlankCharacters, 11)
 EndFunc


Func SleepCheckControl()

	if GUICtrlRead($Sleep) = $GUI_CHECKED Then
		GuiCtrlSetState($SleepInput1,$GUI_ENABLE)
		GuiCtrlSetState($lblSleep,$GUI_ENABLE)
		GuiCtrlSetState($SleepInput2,$GUI_ENABLE)
		GuiCtrlSetState($lblSleep2,$GUI_ENABLE)
	Else
		GuiCtrlSetState($SleepInput1,$GUI_DISABLE)
		GuiCtrlSetState($lblSleep,$GUI_DISABLE)
		GuiCtrlSetState($lblSleep2,$GUI_DISABLE)
		GuiCtrlSetState($SleepInput2,$GUI_DISABLE)
	EndIf
EndFunc
