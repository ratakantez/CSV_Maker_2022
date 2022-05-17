; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Undo Button Control In CSV Write
; Description ...:
; Syntax ........:
; Parameters ... -: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================


Func UNDO()

	If $iStep > 0 Then
	   ;###################################################################################################
	   ;########################## FIRST DELETE EVERYTHING ################################################
	   ;###################################################################################################

		Local $ReadLastLine
		Local $CountLinesinCSV = _FileCountLines($g_sSaveLocation)
		$ReadLastLine = FileReadLine($g_sSaveLocation, _FileCountLines($g_sSaveLocation))
		$TextToWrite = ""
		For $i = 1 to $CountLinesinCSV
			_FileWriteToLine($g_sSaveLocation, _FileCountLines($g_sSaveLocation), $TextToWrite, 1)
		Next
		GUICtrlSetData($ListofSteps,"")
	   ;###################################################################################################
	   ;########################## ADD ALL DATA BEFORE DROP OPTIONS AGAIN #################################
	   ;###################################################################################################

		ADDNotes()  ;Add Notes to CSV
		SetTrain()  ;SET Train Settings
		;--------------WRITE TRAIN and CCREQUEST SETTINGS TO CSV FILE #START----------------
		If Not $TrainCSVWrite = "" Then
			FileWrite($g_sSaveLocation,$TrainEnter)
			FileWrite($g_sSaveLocation, @CRLF)
			FileWrite($g_sSaveLocation,$TrainCSVWrite)
			FileWrite($g_sSaveLocation, @CRLF)
			FileWrite($g_sSaveLocation, @CRLF)
		Else
			FileWrite($g_sSaveLocation, @CRLF)
		EndIf
		GetRequestCC();Get CC Request if it is filled
		If Not $CCRequestCSVWrite = "" Then ; Write CCRequest to CSV if it is filled
			FileWrite($g_sSaveLocation,$CCRequestCSVEnter)
			FileWrite($g_sSaveLocation, @CRLF)
			FileWrite($g_sSaveLocation,$CCRequestCSVWrite)
			FileWrite($g_sSaveLocation, @CRLF)
			FileWrite($g_sSaveLocation, @CRLF)
		Else
			FileWrite($g_sSaveLocation, @CRLF)
		EndIf
		;--------------WRITE TRAIN SETTINGS TO CSV FILE #END----------------
		GetSidePoint()
		ADDSides() ;Add Side Dicision to CSV
		WriteNormalMakeCommand() ; Add Make Command for Army, Siege, and Heros
		FileWrite($g_sSaveLocation, @CRLF)

	   ;###################################################################################################
	   ;########################## ADD ALL OTHER DATA AGAIN WITHOUT LAST $iSTEP ###########################
	   ;###################################################################################################
		_ArrayDelete($Undo_Array_CSVWrite, $iStep)
		For $i = 1 To UBound($Undo_Array_CSVWrite) - 1
			FileWrite($g_sSaveLocation,$Undo_Array_CSVWrite[$i])
		Next
		_ArrayDelete($StepList, $iStep)
		Local $textinlist
		$textinlist = "List of Drop Troops"&@CRLF
		For $i = UBound($StepList) - 1 To 1 Step -1
			$textinlist = $textinlist & $StepList[$i]&@CRLF
		Next

		GUICtrlSetData($ListofSteps,$textinlist)


	   ;###################################################################################################
	   ;########################## SHOW LOGS ##############################################################
	   ;###################################################################################################
		_GUICtrlRichEdit_SetCharColor ( $LOG ,0xd40b0b)
		_GUICtrlRichEdit_AppendText($LOG, $Undo_Array_CSVLog[$iStep] & @CRLF)
		_ArrayDelete($Undo_Array_CSVLog, $iStep)

	   ;###################################################################################################
	   ;########################## CALCULATE TROOPS SIZE ##################################################
	   ;###################################################################################################
		CountUsedTroopsAfterUndo()
		GUICtrlSetData($TextUsedArmy,$ArmyCountTXT)
		_ArrayDelete($Undo_Array_CSVTroopName, $iStep)
		_ArrayDelete($Undo_Array_CSVTroopCount, $iStep)

	   ;###################################################################################################
	   ;########################## GUI AFTER UNDO #########################################################
	   ;###################################################################################################
	   ;Set Spell Building
		GuiCtrlSetState($CheckBuilding, $GUI_UNCHECKED)
		If $TType <> "Spell" Then
			GuiCtrlSetState($CheckBuilding, $GUI_DISABLE)
		EndIf
		CheckBuildingControl()
	   ;Set Random X and Y for Spell
		GUICtrlSetState($AddRandomXandY, $GUI_UNCHECKED)
		If $TType <> "Spell" Then
			GuiCtrlSetState($AddRandomXandY, $GUI_DISABLE)
		EndIf
		AddRandomXandY()
	   ;Set Sleep
		GuiCtrlSetState($Sleep, $GUI_UNCHECKED)
		If $MultiDropChoose = 1 Then
			GuiCtrlSetState($Sleep, $GUI_DISABLE)
		EndIf
		SleepCheckControl()
		;Set Randomness
		GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
		_GUICtrlComboBox_BeginUpdate($RandomnessSlider)
		_GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
		_GUICtrlComboBox_EndUpdate($RandomnessSlider)
		ComboRandomnessCombo()
		;Set Wait
		GuiCtrlSetState($CheckWait, $GUI_UNCHECKED)
		CheckWaitCheckBOX()
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
		$SideType = ""
		$AddTileChoose = False
		GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00)
		GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080)
		GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF)
		GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000)
		GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		GUICtrlSetState($aAddTile0,$GUI_HIDE)
		GUICtrlSetState($aAddTile1,$GUI_HIDE)
		GUICtrlSetState($aAddTile2,$GUI_HIDE)
		$SpellSideNumber = 0
		$SideNumber = 0
		$MultiDropIsSetforA = 0
		$MultiDropIsSetforB = 0
		$MultiDropIsSetforC = 0
		$MultiDropIsSetforD = 0
		$MultiDropIsSetforE = 0
		$MultiDropIsSetforF = 0
		$MultiDropIsSetforG = 0
		$MultiDropIsSetforH = 0
		$DidIdoSomethingforA = False
		$DidIdoSomethingforB = False
		$DidIdoSomethingforC = False
		$DidIdoSomethingforD = False
		$DidIdoSomethingforE = False
		$DidIdoSomethingforF = False
		$DidIdoSomethingforG = False
		$DidIdoSomethingforH = False
	    GUICtrlSetData($InputBoxOnMap,"1")
	    GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
	    GUICtrlSetState($lblQTYxVector,$GUI_HIDE)
		If $iStep = 1 Then
			$FirstAdding = True
		EndIf
	Else
		MsgBox(0, "You are at the begining", "You are at the begining of your CSV Writing. You can take a look at your activity in left of the window" ,10)
	EndIf

	$iStep = $iStep - 1
	If $iStep < 0 Then
		$iStep = 0
	EndIf


EndFunc