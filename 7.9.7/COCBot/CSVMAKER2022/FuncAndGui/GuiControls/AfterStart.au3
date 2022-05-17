; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker AfterStart Controls
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



Func OpenPlace()
   	If Not FileExists(@ScriptDir & "\CSV\CSVMakerFiles") Then DirCreate(@ScriptDir & "\CSV\CSVMakerFiles")
	  $g_sSaveLocation = @ScriptDir & "\CSV\CSVMakerFiles\" & GUICtrlRead($FileInput) & ".csv"
	For $Filenumber = 1 To $infinity
		if FileExists($g_sSaveLocation) Then
			$g_sSaveLocation = @ScriptDir & "\CSV\CSVMakerFiles\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".csv"
		EndIf
		if not FileExists($g_sSaveLocation) Then
			ExitLoop
		EndIf

	Next
FileOpen($g_sSaveLocation,0)
EndFunc


Func StartButton()
	If GUICtrlRead($OffExpertRadio) = $GUI_CHECKED Then
		SliderControlInSideGui()
	EndIf
	GetSidePoint()
	If  GUICtrlRead($GoldStorageCheckBox) = $GUI_UNCHECKED And GUICtrlRead($ElixirStorageCheckBox) = $GUI_UNCHECKED And GUICtrlRead($DarkElixirStorageCheckBox) = $GUI_UNCHECKED And _
	    GUICtrlRead($GoldCollectorCheckBox) = $GUI_UNCHECKED And GUICtrlRead($ElixirCollectorCheckBox) = $GUI_UNCHECKED And GUICtrlRead($DarkElixirCollectorCheckBox) = $GUI_UNCHECKED And _
	    GUICtrlRead($THCheckBox) = $GUI_UNCHECKED And GUICtrlRead($InfernoTowerCheckBox) = $GUI_UNCHECKED And GUICtrlRead($EagleCheckBox) = $GUI_UNCHECKED And _
	    GUICtrlRead($XbowCheckBox) = $GUI_UNCHECKED And GUICtrlRead($WizzTowerCheckBox) = $GUI_UNCHECKED And GUICtrlRead($AirDeffanceCheckBox) = $GUI_UNCHECKED And _
	    GUICtrlRead($ScaterCheckBox) = $GUI_UNCHECKED And GUICtrlRead($MortarCheckBox) = $GUI_UNCHECKED And GUICtrlRead($AirSweeperCheckBox) = $GUI_UNCHECKED And _
	    GUICtrlRead($LeftFrontRadio) = $GUI_UNCHECKED And GUICtrlRead($LeftBottomRadio) = $GUI_UNCHECKED And GUICtrlRead($RightBottomRadio) = $GUI_UNCHECKED And _
	    GUICtrlRead($RightFrontRadio) = $GUI_UNCHECKED And GUICtrlRead($RandomRadio) = $GUI_UNCHECKED Then

		MsgBox($MB_OK,"NO SIDE DETECTED", "You didn't decide your attack side or You didnt give chance any building. (All are zero) !!!" & @CRLF & "If you are indecisive person =) , maybe you should choose Random Side")
	ElseIf (GUICtrlRead($GoldStorageCheckBox) = $GUI_CHECKED Or GUICtrlRead($ElixirStorageCheckBox) = $GUI_CHECKED Or GUICtrlRead($DarkElixirStorageCheckBox) = $GUI_CHECKED Or _
	    GUICtrlRead($GoldCollectorCheckBox) = $GUI_CHECKED Or GUICtrlRead($ElixirCollectorCheckBox) = $GUI_CHECKED Or GUICtrlRead($DarkElixirCollectorCheckBox) = $GUI_CHECKED Or _
	    GUICtrlRead($THCheckBox) = $GUI_CHECKED Or GUICtrlRead($InfernoTowerCheckBox) = $GUI_CHECKED Or GUICtrlRead($EagleCheckBox) = $GUI_CHECKED Or _
	    GUICtrlRead($XbowCheckBox) = $GUI_CHECKED Or GUICtrlRead($WizzTowerCheckBox) = $GUI_CHECKED Or GUICtrlRead($AirDeffanceCheckBox) = $GUI_CHECKED Or _
	    GUICtrlRead($ScaterCheckBox) = $GUI_CHECKED Or GUICtrlRead($MortarCheckBox) = $GUI_CHECKED Or GUICtrlRead($AirSweeperCheckBox) = $GUI_CHECKED) And $SideSUM = 0 Then
		MsgBox($MB_OK,"NO SIDE DETECTED", "You are trying to give chance buildings but your all chance values are ZERO.. You should give more chance than zero.",8)

	Else
		OpenPlace() ;Create CSV File
		ADDNotes()  ;Add Notes to CSV
		SetTrain()  ;SET Train Settings
;~ ---------------WRITE TRAIN and CCREQUEST SETTINGS TO CSV FILE #START----------------
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
			FileWrite($g_sSaveLocation,$CCRequestCSVWrite)
			FileWrite($g_sSaveLocation, @CRLF)
		Else
			FileWrite($g_sSaveLocation, @CRLF)
		EndIf
;~ ---------------WRITE TRAIN SETTINGS TO CSV FILE #END----------------
		GetSidePoint()
		ADDSides() ;Add Side Dicision to CSV

		WriteNormalMakeCommand() ; Add Make Command for Army, Siege, and Heros
		FileWrite($g_sSaveLocation, @CRLF)
		;GuiControl After Start
		AfterStart()
		_GUICtrlRichEdit_AppendText($LOG,"Your Notes added to CSV File : " & $g_sSaveLocation & @CRLF)
		_GUICtrlRichEdit_AppendText($LOG,"Your Sides added to CSV File : " & $g_sSaveLocation & @CRLF)
		_GUICtrlRichEdit_AppendText($LOG,"Your Train Settings added to CSV File : " & $g_sSaveLocation & @CRLF)
		_GUICtrlRichEdit_AppendText($LOG,"For Seeing CSV File, You can use HOT KEY ' ALT + F '" & @CRLF)
		_GUICtrlRichEdit_AppendText($LOG,"For Closing CSV File, You can use HOT KEY ' ALT + D '" & @CRLF)

	EndIf
EndFunc


Func AfterStart()

;~ -----------------------------HIDE EVERYTHING IN MAIN GUI-----------------------
;Hide Right Gui (Version Hisyory)
	GUICtrlSetState($LabelHis, $GUI_HIDE)
;Hide Attack Side Menu Slider
	For $i = $GoldStorageSlider To $DrillPoint
		GUICtrlSetState($i, $GUI_HIDE)
	Next
	For $i = $THSlider To $airpoint
		GUICtrlSetState($i, $GUI_HIDE)
	Next

	For $i = $ScaterSlider To $RandomRadio
		GUICtrlSetState($i, $GUI_HIDE)
	Next

	GUICtrlSetState($OnExpertRadio,$GUI_HIDE)
	GUICtrlSetState($OffExpertRadio,$GUI_HIDE)
	For $i = $MainLeftFrontPic To $RandomRadio
		GUICtrlSetState($i, $GUI_HIDE)
	Next
	GUICtrlSetState($MainPic, $GUI_HIDE)
	GUICtrlSetState($MainInfoPic, $GUI_HIDE)
;Disable Attack Side Menu for After Start GUI
	GUICtrlSetPos($MainGoldStoragePic, 10, 35 - 12, 23, 25)
	GUICtrlSetPos($GoldStoragePoint, 35, 36 - 12, 25, 23)
	GUICtrlSetPos($MainElixirStoragePic, 10, 65 - 12, 23, 25)
	GUICtrlSetPos($ElixirStoragePoint, 35, 66 - 12, 25, 23)
	GUICtrlSetPos($MainDarkElixirStoragePic, 10, 95 - 12, 23, 25)
	GUICtrlSetPos($DarkElixirStoragePoint, 35, 96 - 12, 25, 23)
	GUICtrlSetPos($MainGoldCollectorPic, 10, 125 - 12, 23, 25)
	GUICtrlSetPos($MinePoint, 35, 126 - 12, 25, 23)
	GUICtrlSetPos($MainElixirCollectorPic, 10, 153 - 12, 23, 25)
	GUICtrlSetPos($CollectorPoint, 35, 156 - 12, 25, 23)
	GUICtrlSetPos($MainDarkElixirCollectorPic, 10, 182 - 12, 23, 25)
	GUICtrlSetPos($DrillPoint, 35, 186 - 12, 25, 23)
	GUICtrlSetPos($MainTHPic, 10, 211 - 12, 23, 25)
	GUICtrlSetPos($THPoint, 35, 216 - 12, 25, 23)
	GUICtrlSetPos($MainInfernoTowerPic, 10, 240 - 12, 23, 25)
	GUICtrlSetPos($infernoPoint, 35, 246 - 12, 25, 23)

	GUICtrlSetPos($MainEaglePic, 10 + 70, 35 - 12, 23, 25)
	GUICtrlSetPos($eaglePoint, 35 + 70, 36 - 12, 25, 23)
	GUICtrlSetPos($MainXbowPic, 10 + 70, 65 - 12, 23, 25)
	GUICtrlSetPos($XbowpointPoint, 35 + 70, 66 - 12, 25, 23)
	GUICtrlSetPos($MainWizzTowerPic, 10 + 70, 95 - 12, 23, 25)
	GUICtrlSetPos($WTowerPoint, 35 + 70, 96 - 12, 25, 23)
	GUICtrlSetPos($MainAirDeffancePic, 10 + 70, 125 - 12, 23, 25)
	GUICtrlSetPos($airPoint, 35 + 70, 126 - 12, 25, 23)
	GUICtrlSetPos($MainScaterPic, 10 + 70, 153 - 12, 23, 25)
	GUICtrlSetPos($ScatterShotPoint, 35 + 70, 156 - 12, 25, 23)
	GUICtrlSetPos($MainMortarPic, 10 + 70, 182 - 12, 23, 25)
	GUICtrlSetPos($MortarPoint, 35 + 70, 186 - 12, 25, 23)
	GUICtrlSetPos($MainAirSweeperPic, 10 + 70, 211 - 12, 23, 25)
	GUICtrlSetPos($AirSweeperpoint, 35 + 70, 216 - 12, 25, 23)

	For $i = $GoldStoragePoint To $DrillPoint
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $THPoint To $airpoint
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $ScatterShotPoint To $AirSweeperpoint
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	If GUICtrlRead($LeftFrontRadio) = $GUI_CHECKED Then
		GUICtrlSetPos($MainLeftFrontPic, 10 + 70, 240 - 12, 28, 28)
		GUICtrlSetState($MainLeftFrontPic, $GUI_DISABLE)
		GUICtrlSetState($MainLeftFrontPic, $GUI_SHOW)
	ElseIf GUICtrlRead($LeftBottomRadio) = $GUI_CHECKED Then
		GUICtrlSetPos($MainLeftBottomPic, 10 + 70, 240 - 12, 28, 28)
		GUICtrlSetState($MainLeftBottomPic, $GUI_DISABLE)
		GUICtrlSetState($MainLeftBottomPic, $GUI_SHOW)
	ElseIf GUICtrlRead($RightBottomRadio) = $GUI_CHECKED Then
		GUICtrlSetPos($MainRightBottomPic, 10 + 70, 240 - 12, 28, 28)
		GUICtrlSetState($MainRightBottomPic, $GUI_DISABLE)
		GUICtrlSetState($MainRightBottomPic, $GUI_SHOW)
	ElseIf GUICtrlRead($RightFrontRadio) = $GUI_CHECKED Then
		GUICtrlSetPos($MainRightFrontPic, 10 + 70, 240 - 12, 28, 28)
		GUICtrlSetState($MainRightFrontPic, $GUI_DISABLE)
		GUICtrlSetState($MainRightFrontPic, $GUI_SHOW)
	ElseIf GUICtrlRead($RandomRadio) = $GUI_CHECKED Then
		GUICtrlSetPos($MainRandomPic, 10 + 70, 240 - 12, 28, 28)
		GUICtrlSetState($MainRandomPic, $GUI_DISABLE)
		GUICtrlSetState($MainRandomPic, $GUI_SHOW)
	Else
		GUICtrlSetPos($Tick, 10 + 70, 240 - 12, 28, 28)
		GUICtrlSetState($Tick, $GUI_DISABLE)
		GUICtrlSetState($Tick, $GUI_SHOW)
	EndIf
	GUICtrlSetState($AttackSide2, $GUI_SHOW)

	GUICtrlSetState($troops_pic, $GUI_SHOW)
	GUICtrlSetState($troops_pic, $GUI_DISABLE)

;Hide Train and Exit buttons
	GUICtrlSetState($OpenTrain,$GUI_HIDE)
    GUICtrlSetState($CloseTrain,$GUI_HIDE)
	GUICtrlSetState($Exit,$GUI_HIDE)


	GUICtrlSetState($Note,$GUI_DISABLE)
	GUICtrlSetState($Note,$GUI_HIDE)
	GUICtrlSetState($ListofSteps,$GUI_SHOW)
	GUICtrlSetState($lblFile, $GUI_DISABLE)
	GUICtrlSetPos($lblFile, 15, 430, 35, -1)
	GUICtrlSetState($FileInput, $GUI_DISABLE)
	GUICtrlSetPos($FileInput, 15  + 39, 427, 100, 23)
	GUICtrlSetState($ShowFile,$GUI_SHOW)
	GUICtrlSetState($GoOnLater, $GUI_SHOW)
	GUICtrlSetState($SaveAndExit, $GUI_SHOW)
	GUICtrlSetState($Start, $GUI_DISABLE)
	GUICtrlSetPos($Start, 15, 410 + 69, 139, 27)

	;Right Coulumn in second Page
	GUICtrlSetState($grpfordrop, $GUI_SHOW)
	GUICtrlSetState($CMBTroops_Name, $GUI_SHOW)
	GUICtrlSetState($Undo, $GUI_SHOW)
	GUICtrlSetState($AddRandomXandY, $GUI_SHOW)
	GUICtrlSetState($txtRandomX, $GUI_SHOW)
	GUICtrlSetState($lblRandomXY1, $GUI_SHOW)
	GUICtrlSetState($txtRandomY, $GUI_SHOW)
	GUICtrlSetState($AddRandomXandY, $GUI_DISABLE)
	AddRandomXandY()
	GUICtrlSetState($CheckBuilding, $GUI_SHOW)
	GUICtrlSetState($CheckBuilding, $GUI_DISABLE)
	GUICtrlSetState($Sleep, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_SHOW)
	GUICtrlSetState($lblSleep, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_SHOW)
	GUICtrlSetState($SleepInput2, $GUI_SHOW)
	GUICtrlSetState($lblSleep, $GUI_SHOW)
	GUICtrlSetState($lblSleep2, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_SHOW)
	GUICtrlSetState($lblSleep, $GUI_SHOW)
	SleepCheckControl()
	GUICtrlSetState($RandomnessSlider, $GUI_SHOW)
	GUICtrlSetState($RandomnessSliderLabel, $GUI_SHOW)
	GUICtrlSetState($RandomnessSliderLabel2, $GUI_SHOW)
	GUICtrlSetState($RandomnessSliderImage0, $GUI_SHOW)
	GUICtrlSetState($grpforwait, $GUI_SHOW)
	GUICtrlSetState($CheckWait, $GUI_SHOW)
	GUICtrlSetState($AddWaitButton, $GUI_SHOW)
	GUICtrlSetState($WaitInput1, $GUI_SHOW)
	GUICtrlSetState($lblWait, $GUI_SHOW)
	GUICtrlSetState($lblWait2, $GUI_SHOW)
	GUICtrlSetState($WaitInput1, $GUI_SHOW)
	GUICtrlSetState($WaitInput2, $GUI_SHOW)
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_SHOW)
	CheckWaitCheckBOX()
	_GUICtrlComboBox_BeginUpdate($RandomnessSlider)
	_GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
	_GUICtrlComboBox_EndUpdate($RandomnessSlider)
	CMBWaitBreakCommandCOMBOBOX()
	GUICtrlSetState($InfoAfterStart, $GUI_SHOW)
	GUICtrlSetState($RadioOneDrop, $GUI_SHOW)
	GUICtrlSetState($PicOneDrop, $GUI_SHOW)
	GUICtrlSetState($lblOneDrop, $GUI_SHOW)
	GUICtrlSetState($RadioMultiDrop, $GUI_SHOW)
	GUICtrlSetState($PicMultiDrop, $GUI_SHOW)
	GUICtrlSetState($lblMultiDrop, $GUI_SHOW)
	GUICtrlSetState($TextUsedArmyEnter, $GUI_SHOW)
	GUICtrlSetState($TextUsedArmy, $GUI_SHOW)
	ShowArmyPoint()
	ShowSpellPoint()
	ShowBuildings()
	DisableBuildings()
	$iStep = 0
	ReDim $Undo_Array_CSVWrite[1]
	$Undo_Array_CSVWrite[0] = ""
	ReDim $Undo_Array_CSVTroopName[1]
	$Undo_Array_CSVTroopName[0] = ""
	ReDim $Undo_Array_CSVTroopCount[1]
	$Undo_Array_CSVTroopCount[0] = ""
	ReDim $Undo_Array_CSVLog[1]
	$Undo_Array_CSVLog[0] = ""
	ReDim $StepList[1]
	$StepList[0] = "List of Drop Troops"
	$g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2022\Cursor\Barbarian.cur')
	GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	OnAutoItExitRegister('OnAutoItExit')
EndFunc   ;==>AfterStart

