; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Radio OneDrop/MultiDrop Controls
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
Func RadioOneDrop()
   If $OneDropChoose = 0 Then
	  $SideNumber = 0
	  $SideType = ""
	  $AddTileChoose = False
	  MakeAllDropANDAddtileButtonResetColor()
	  HideAddTile()
	  GUICtrlSetState($Sleep,$GUI_ENABLE)
	  GUICtrlSetState($Sleep,$GUI_UNCHECKED)
	  SleepCheckControl()
	  GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
	  GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
	  GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
	  GUICtrlSetState($CheckWait,$GUI_UNCHECKED)
	  CheckWaitCheckBOX()
	  GUICtrlSetState($lblQTYxVector,$GUI_HIDE)
	  GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
	  GUICtrlSetState($AddCSV, $GUI_HIDE)
	  HideMultiArmy()
	  HideMultiArmyOn()
	  GUICtrlSetState($troops_pic,$GUI_SHOW)
	  GUICtrlSetState($troops_picmulti,$GUI_HIDE)
	  ShowArmyPoint()
	  If $SideType = "_A" and $MultiDropChoose = 1 Then
		CancelMultiDropforA()
	  ElseIf $SideType = "_B" and $MultiDropChoose = 1 Then
		CancelMultiDropforB()
	  ElseIf $SideType = "_C" and $MultiDropChoose = 1 Then
		CancelMultiDropforC()
	  ElseIf $SideType = "_D" and $MultiDropChoose = 1 Then
		CancelMultiDropforD()
	  ElseIf $SideType = "_E" and $MultiDropChoose = 1 Then
		CancelMultiDropforE()
	  ElseIf $SideType = "_F" and $MultiDropChoose = 1 Then
		CancelMultiDropforF()
	  ElseIf $SideType = "_G" and $MultiDropChoose = 1 Then
		CancelMultiDropforG()
	  ElseIf $SideType = "_H" and $MultiDropChoose = 1 Then
	    CancelMultiDropforH()
	  EndIf
	  $LOGEnter = "Multi Drop Points are unset!"
	  _GUICtrlRichEdit_SetCharColor ( $LOG ,0x76423D)
	  _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF & "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" & @CRLF)

	  $OneDropChoose = 1
	  $MultiDropChoose = 0
   EndIf
EndFunc

Func RadioMultiDrop()
   If $MultiDropChoose = 0 Then
	  $SideNumber = 0
	  $SideType = ""
	  $AddTileChoose = False
	  MakeAllDropANDAddtileButtonResetColor()
	  HideAddTile()
	  GUICtrlSetState($lblQTYxVector,$GUI_HIDE)
	  GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
	  GUICtrlSetState($Sleep,$GUI_DISABLE)
	  GUICtrlSetState($Sleep,$GUI_UNCHECKED)
	  SleepCheckControl()
	  GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
	  GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
	  GUICtrlSetState($AddCSV, $GUI_HIDE)
	  GUICtrlSetState($CheckWait,$GUI_UNCHECKED)
	  CheckWaitCheckBOX()
	  HideArmyPoint()
	  GUICtrlSetState($troops_picmulti,$GUI_SHOW)
	  GUICtrlSetState($troops_pic,$GUI_HIDE)
	  ShowMultiArmy()
	  HideMultiArmyOn()
	  $OneDropChoose = 0
	  $MultiDropChoose = 1
   EndIf
EndFunc


