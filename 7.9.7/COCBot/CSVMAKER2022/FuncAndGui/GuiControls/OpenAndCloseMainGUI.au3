; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Open/Close Main GUI
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
Func OpenCSVMakerGUI()
   GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_CHECKED)
   chkHideWhenMinimized()
   GUICtrlSetState($RandomnessSliderImage0, $GUI_HIDE)
   GUICtrlSetState($g_hCSVMakerMainButton, $GUI_DISABLE)
   $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\Cursor\Barbarian.cur')
   GUISetState(@SW_SHOW, $GUI_CSV_in_function)
   WinSetState($g_hFrmBot, "", @SW_HIDE)
EndFunc

Func CloseCSVMakerGUI()
    GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_UNCHECKED)
    chkHideWhenMinimized()
    GUICtrlSetState($g_hCSVMakerMainButton, $GUI_ENABLE)
    GUISetState(@SW_HIDE, $GUI_CSV_in_function)
    WinSetState($g_hFrmBot, "", @SW_SHOW)
	If $ShowTrainTH6GuiIS = 1 Then
		HideTrainTH6()
	ElseIf $ShowTrainTH7GuiIS = 1 Then
		HideTrainTH7()
	ElseIf $ShowTrainTH8GuiIS = 1 Then
		HideTrainTH8()
	ElseIf $ShowTrainTH9GuiIS = 1 Then
		HideTrainTH9()
	ElseIf $ShowTrainTH10GuiIS = 1 Then
		HideTrainTH10()
	ElseIf $ShowTrainTH11GuiIS = 1 Then
		HideTrainTH11()
	ElseIf $ShowTrainTH12GuiIS = 1 Then
		HideTrainTH12()
	ElseIf $ShowTrainTH13GuiIS = 1 Then
		HideTrainTH13()
	ElseIf $ShowTrainTH14GuiIS = 1 Then
		HideTrainTH14()
	EndIf
	$ShowTrainTH6GuiIS = 0
	$ShowTrainTH7GuiIS = 0
	$ShowTrainTH8GuiIS = 0
	$ShowTrainTH9GuiIS = 0
	$ShowTrainTH10GuiIS = 0
	$ShowTrainTH11GuiIS = 0
	$ShowTrainTH12GuiIS = 0
	$ShowTrainTH13GuiIS = 0
	$ShowTrainTH14GuiIS = 0
	GUICtrlSetState($TrainBackGround,$GUI_HIDE)
	For $i=$TrainSelectTH6Click to $TrainSelectTH14Click
		GUICtrlSetState($i,$GUI_HIDE)
	Next
	GUICtrlSetState($Traininfo,$GUI_HIDE)
	GUICtrlSetState($CloseTrain,$GUI_HIDE)
    ResetAllTrainGui()
	Reset()

EndFunc
