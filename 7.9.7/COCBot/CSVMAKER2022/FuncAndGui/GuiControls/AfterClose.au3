; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker after close Func In CSV Write
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

Func OnlySaveCSV_DontMoveTheFile()
	FileWrite($g_sSaveLocation,$ReCalc)
	FileWrite($g_sSaveLocation,$DropRemain)
	FileWrite($g_sSaveLocation,$endofCSV1)
	FileWrite($g_sSaveLocation,$endofCSV2)
	FileWrite($g_sSaveLocation,$endofCSV3)
	FileWrite($g_sSaveLocation,$endofCSV4)
	_GUICtrlRichEdit_AppendText($LOG,@CRLF & String(GUICtrlRead($TextUsedArmyEnter)) & @CRLF)
	_GUICtrlRichEdit_AppendText($LOG,$ArmyCountTXT)


    If Not FileExists(@ScriptDir & "\CSVMakerLog") Then DirCreate(@ScriptDir & "\CSVMakerLog")
	$g_lSaveLocation =  @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & ".log"
	For $Filenumber = 1 To $infinity
		if FileExists($g_lSaveLocation) Then
			$g_lSaveLocation = @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".log"
		EndIf
		if not FileExists($g_lSaveLocation) Then
			ExitLoop
		EndIf
	Next
	FileOpen($g_lSaveLocation,0)
	For $i = 1 to Number(_GUICtrlRichEdit_GetLineCount($LOG))
		FileWrite($g_lSaveLocation, _GUICtrlRichEdit_GetTextInLine($LOG,$i) & @CRLF)
	Next
	FileClose($g_lSaveLocation)
	_GUICtrlRichEdit_Destroy($LOG)

	GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_UNCHECKED)
	chkHideWhenMinimized()
	GUICtrlSetState($g_hCSVMakerMainButton, $GUI_ENABLE)
	GUISetState(@SW_HIDE, $GUI_CSV_in_function)
	WinSetState($g_hFrmBot, "", @SW_SHOW)
	ShellExecute (@ScriptDir & "\CSV\CSVMakerFiles\")
	Reset()
	ResetAllTrainGui()
	_OpenLastCSV()
EndFunc

Func SaveCSVMoveCSVandSaveLog()
	FileWrite($g_sSaveLocation,$ReCalc)
	FileWrite($g_sSaveLocation,$DropRemain)
	FileWrite($g_sSaveLocation,$endofCSV1)
	FileWrite($g_sSaveLocation,$endofCSV2)
	FileWrite($g_sSaveLocation,$endofCSV3)
	FileWrite($g_sSaveLocation,$endofCSV4)
	_GUICtrlRichEdit_AppendText($LOG,@CRLF & String(GUICtrlRead($TextUsedArmyEnter)) & @CRLF)
	_GUICtrlRichEdit_AppendText($LOG,$ArmyCountTXT)


    If Not FileExists(@ScriptDir & "\CSVMakerLog") Then DirCreate(@ScriptDir & "\CSVMakerLog")
	$g_lSaveLocation =  @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & ".log"
	For $Filenumber = 1 To $infinity
		if FileExists($g_lSaveLocation) Then
			$g_lSaveLocation = @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".log"
		EndIf
		if not FileExists($g_lSaveLocation) Then
			ExitLoop
		EndIf
	Next
	FileOpen($g_lSaveLocation,0)
	For $i = 1 to Number(_GUICtrlRichEdit_GetLineCount($LOG))
		FileWrite($g_lSaveLocation, _GUICtrlRichEdit_GetTextInLine($LOG,$i) & @CRLF)
	Next
	FileClose($g_lSaveLocation)
	_GUICtrlRichEdit_Destroy($LOG)

	FileCopy($g_sSaveLocation, @ScriptDir & "\CSV\Attack\", $FC_OVERWRITE + $FC_CREATEPATH)
	GUICtrlSetState($g_hCSVMakerMainButton, $GUI_ENABLE)
	GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_UNCHECKED)
	chkHideWhenMinimized()
	GUISetState(@SW_HIDE, $GUI_CSV_in_function)
	WinSetState($g_hFrmBot, "", @SW_SHOW)
	cmbScriptNameDB()
	cmbScriptNameAB()

	If StringInStr(String($g_sSaveLocation),"_" & String($Filenumber)) = 0 Then
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	Else
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	EndIf
	cmbScriptNameDB()
	cmbScriptNameAB()
	UpdateComboScriptNameDB()
	UpdateComboScriptNameAB()
	cmbScriptNameDB()
	cmbScriptNameAB()
	If StringInStr(String($g_sSaveLocation),"_" & String($Filenumber)) = 0 Then
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	Else
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	EndIf
	cmbScriptNameDB()
	cmbScriptNameAB()
	UpdateComboScriptNameDB()
	UpdateComboScriptNameAB()
	Reset()
    ResetAllTrainGui()
	SetLog(GUICtrlRead($FileInput) & "_" & $Filenumber & ".csv is set and applied for your Dead/Live Base", $COLOR_SUCCESS)
EndFunc


Func Reset()
	Local $x
	Local $y
	$g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\Cursor\_CSV.cur')
	GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
;~ ######### MIDDLE SIDE ############################################################################################
;Hide and Reset Drop / Addtile Buttons and its tree ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	HideBuildings()
	HideSpellPoint()
	HideArmyPoint()
    HideMultiArmy()
    HideMultiArmyOn()
	Local $x = 54900
	Local $y = 18000
	GUICtrlSetPos($aAddTile2, $x , $y)
	GUICtrlSetPos($aAddTile1, $x , $y + 27)
	GUICtrlSetPos($aAddTile0, $x , $y + 54)
	MakeAllDropANDAddtileButtonResetColor()
    GUICtrlSetState($lblQTYxVector, $GUI_HIDE)
    GUICtrlSetState($InputBoxOnMap, $GUI_HIDE)
    $ValueOfInputBox = 1
	GUICtrlSetData($InputBoxOnMap, "1")
	GUICtrlSetState($troops_pic, $GUI_HIDE)
	GUICtrlSetState($troops_picmulti, $GUI_HIDE)
;~ ######### RIGHT SIDE ############################################################################################
;Hide and reset Drop Option Group ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($grpfordrop, $GUI_HIDE)
;Hide and reset Troops Name ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($CMBTroops_Name, $GUI_HIDE)
	_GUICtrlComboBox_BeginUpdate($CMBTroops_Name)
	_GUICtrlComboBox_SelectString($CMBTroops_Name, "Barbarian")
	_GUICtrlComboBox_EndUpdate($CMBTroops_Name)
	CMBTroops_NameCOMBOBOX()
;Hide and reset Undo Button ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($Undo, $GUI_HIDE)
;Hide and reset Building and its tree ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($CheckBuilding, $GUI_UNCHECKED)
	CheckBuildingControl()
	GUICtrlSetState($CheckBuilding, $GUI_HIDE)
	GUICtrlSetState($CheckBuilding, $GUI_DISABLE)
;Hide and Reset Random X and Y for spells ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($AddRandomXandY, $GUI_UNCHECKED)
	GUICtrlSetState($AddRandomXandY, $GUI_HIDE)
	GUICtrlSetState($AddRandomXandY, $GUI_DISABLE)
	AddRandomXandY()
	GUICtrlSetState($txtRandomX, $GUI_HIDE)
	GUICtrlSetState($lblRandomXY1, $GUI_HIDE)
	GUICtrlSetState($txtRandomY, $GUI_HIDE)
;Hide and Reset Sleep ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($Sleep,$GUI_ENABLE)
	GUICtrlSetState($Sleep, $GUI_HIDE)
	GUICtrlSetState($SleepInput1, $GUI_HIDE)
	GUICtrlSetState($lblSleep, $GUI_HIDE)
	GUICtrlSetState($SleepInput2, $GUI_HIDE)
	GUICtrlSetState($lblSleep2, $GUI_HIDE)
	GUICtrlSetState($Sleep,$GUI_UNCHECKED)
	SleepCheckControl()
	GUICtrlSetData($SleepInput1, 50)
	GUICtrlSetData($SleepInput2, 70)
;Hide and Reset Randomise Options ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($RandomnessSlider, $GUI_HIDE)
	GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
	_GUICtrlComboBox_BeginUpdate($RandomnessSlider)
	_GUICtrlComboBox_SelectString($RandomnessSlider, "exact Point")
	_GUICtrlComboBox_EndUpdate($RandomnessSlider)
	ComboRandomnessCombo()
	GUICtrlSetState($RandomnessSliderLabel, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderLabel2, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderLabel, $GUI_ENABLE)
	GUICtrlSetState($RandomnessSliderLabel2, $GUI_ENABLE)
	GUICtrlSetState($RandomnessSliderImage0, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage1, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage2, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage3, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage4, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage5, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage6, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage7, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage8, $GUI_HIDE)
;Hide and reset Wair Option Group ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($grpforwait, $GUI_HIDE)
;Hide and Reset Wait~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($CheckWait, $GUI_UNCHECKED)
	GUICtrlSetState($CheckWait, $GUI_HIDE)
	GUICtrlSetState($AddWaitButton, $GUI_HIDE)
	GUICtrlSetState($WaitInput1, $GUI_HIDE)
	GUICtrlSetData($WaitInput1, 0)
	GUICtrlSetState($lblWait, $GUI_HIDE)
	GUICtrlSetState($lblWait2, $GUI_HIDE)
	GUICtrlSetState($WaitInput2, $GUI_HIDE)
	GUICtrlSetData($WaitInput2, 0)
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_HIDE)
	CheckWaitCheckBOX()
;Hide and Reset Drop Type Option One Drop / Multi Drop ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    GUICtrlSetState($RadioOneDrop, $GUI_HIDE)
    GUICtrlSetState($RadioOneDrop, $GUI_CHECKED)
    GUICtrlSetState($RadioMultiDrop, $GUI_HIDE)
    GUICtrlSetState($RadioMultiDrop, $GUI_UNCHECKED)
    GUICtrlSetState($PicOneDrop, $GUI_HIDE)
    GUICtrlSetState($PicMultiDrop, $GUI_HIDE)
    GUICtrlSetState($lblOneDrop, $GUI_HIDE)
    GUICtrlSetState($lblMultiDrop, $GUI_HIDE)
    $OneDropChoose = 1
    $MultiDropChoose = 0
;Hide and Reset Info and Calculated Troop Size in GUI ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($InfoAfterStart, $GUI_HIDE)
	GUICtrlSetState($TextUsedArmyEnter, $GUI_HIDE)
	GUICtrlSetState($TextUsedArmy, $GUI_HIDE)
	GUICtrlSetData($TextUsedArmy, "")


;~ ######### LEFT SIDE ############################################################################################
	GUICtrlSetState($AttackSide2, $GUI_HIDE)
	GUICtrlSetState($ListofSteps,$GUI_HIDE)
	GUICtrlSetData($ListofSteps,"List of Drop Troops")
	GUICtrlSetState($SaveAndExit,$GUI_HIDE)
	GUICtrlSetState($GoOnLater,$GUI_HIDE)


;~ ######### CREATE MAIN GUI AGAIN#################################################################################

;Prepare Side Menu ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Local $k = 0
	For $i = $GoldStoragePoint To $DrillPoint
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_HIDE)
		GUICtrlSetPos($i, 255, 28 + $k*55, 25, 23)
		GUICtrlSetData($i, 0)
		$k=$k+1
	Next
	Local $l = 0
	For $i = $THPoint To $airpoint
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_HIDE)
		GUICtrlSetPos($i, 290+240, 28 + $l*55, 25, 23)
		GUICtrlSetData($i, 0)
		$l=$l+1
	Next
	Local $m = 0
	For $i = $ScatterShotPoint To $AirSweeperpoint
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_HIDE)
		GUICtrlSetPos($i, 571+240, 28 + $m*55, 25, 23)
		GUICtrlSetData($i, 0)
		$m=$m+1
	Next
	Local $n = 0
	For $i = $MainGoldStoragePic To $MainDarkElixirCollectorPic
		GUICtrlSetPos($i, 15, 18 + $n*55, 50, 50)
		$n=$n+1
	Next
	Local $o = 0
	For $i = $MainTHPic To $MainAirDeffancePic
		GUICtrlSetPos($i, 280 + 15, 18 + $o*55, 50, 50)
		$o=$o+1
	Next
	Local $p = 0
	For $i = $MainScaterPic To $MainAirSweeperPic
		GUICtrlSetPos($i, 561 + 15, 18 + $p*55, 50, 50)
		$p=$p+1
	Next
	Local $x = 571
	Local $y = 38
	GUICtrlSetPos($MainLeftFrontPic, $x + 10, $y + 170, 65, 65)
	GUICtrlSetPos($MainLeftBottomPic, $x + 100, $y + 170, 65, 65)
	GUICtrlSetPos($MainRightBottomPic, $x + 190, $y + 170, 65, 65)
	GUICtrlSetPos($MainRightFrontPic, $x + 55, $y + 245, 65, 65)
	GUICtrlSetPos($MainRandomPic, $x + 145, $y + 245, 65, 65)
	GUICtrlSetPos($Tick, 1, 1100000000, 50, 50)
	For $i = $MainLeftFrontPic to $RandomRadio
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $GoldStorageSlider To $DarkElixirCollectorCheckBox
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $THSlider To $AirDeffanceCheckBox
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $ScaterSlider To $AirSweeperCheckBox
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	ForcedSideRadio() ; to disable sliders, uncheck checkboxes and set 0 sliders and set 0 point boxes
	For $i = $OnExpertRadio To $OffExpertRadio
		GUICtrlSetState($i, $GUI_SHOW)
		GUICtrlSetState($i, $GUI_ENABLE)
	Next
	GUICtrlSetState($OnExpertRadio, $GUI_UNCHECKED)
	GUICtrlSetState($OffExpertRadio, $GUI_CHECKED)

	GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
	GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
	GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
	GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
	GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
	For $i = $MainLeftFrontPic To $RandomRadio
		GUICtrlSetState($i, $GUI_SHOW)
		GUICtrlSetState($i, $GUI_ENABLE)
	Next
	GUICtrlSetState($MainLeftFrontPic, $GUI_DISABLE)
	GUICtrlSetState($MainLeftBottomPic, $GUI_DISABLE)
	GUICtrlSetState($MainRightBottomPic, $GUI_DISABLE)
	GUICtrlSetState($MainRightFrontPic, $GUI_DISABLE)
	GUICtrlSetState($MainRandomPic, $GUI_DISABLE)

;Prepare bottom in Main Menu ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	GUICtrlSetState($Note,$GUI_ENABLE)
	GUICtrlSetState($Note,$GUI_SHOW)
	GUICtrlSetData($Note, "")
	GUICtrlSetData($Note, "Author: " & @UserName & " - ver. x.x" & @CRLF & _NowDate() & @CRLF & @CRLF & "Troops: " & @CRLF & "Spells: " & @CRLF & "CC: " & @CRLF & "Info..... ")
	GUICtrlSetPos($lblFile, 15, 365 + 151, 35, -1)
	GUICtrlSetPos($FileInput, 15 + 39 , 365 + 148, 100, 23)
	GUICtrlSetState($lblFile, $GUI_ENABLE)
	GUICtrlSetState($FileInput, $GUI_ENABLE)
	GUICtrlSetData($FileInput, "NoName_")
	GUICtrlSetState($ShowFile,$GUI_HIDE)
	GUICtrlSetPos($Start, 15, 365 + 175, 139, 27)
	GUICtrlSetState($LabelHis, $GUI_SHOW)
	GUICtrlSetState($MainPic, $GUI_SHOW)

	For $i = $OpenTrain To $MainInfoPic
		GUICtrlSetState($i, $GUI_SHOW); 	 <=
	Next;	                                 <=
	GUICtrlSetState($CloseTrain, $GUI_HIDE);    this will shown in for loop (up), i am lazy to do something for this, so here it is hiden again.
	GUICtrlSetState($Start, $GUI_ENABLE)
	GUICtrlSetState($Exit,$GUI_SHOW)
	$LOG = _GUICtrlRichEdit_Create($h_hGUI_MakeCsv, "CSV WRITING IS STARTING" & @CRLF, 156, 513, 620, 100, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, $ES_UPPERCASE, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_NUMBER, 0x200), $WS_EX_STATICEDGE)

;Prepare Train Settings in Main Menu ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	$CountBarbarian = 0
	$CountBarbarianSize = 0
	$CountSuperBarbarian = 0
	$CountSuperBarbarianSize = 0
	$CountArcher = 0
	$CountArcherSize = 0
	$CountSuperArcher = 0
	$CountSuperArcherSize = 0
	$CountGiant = 0
	$CountGiantSize = 0
	$CountSuperGiant = 0
	$CountSuperGiantSize = 0
	$CountGoblin = 0
	$CountGoblinSize = 0
	$CountSuperGoblin = 0
	$CountSuperGoblinSize = 0
	$CountWallBreaker = 0
	$CountWallBreakerSize = 0
	$CountSuperWallBreaker = 0
	$CountSuperWallBreakerSize = 0
	$CountBaloon = 0
	$CountBaloonSize = 0
	$CountRocketBaloon = 0
	$CountRocketBaloonSize = 0
	$CountWizard = 0
	$CountWizardSize = 0
	$CountSuperWizard = 0
	$CountSuperWizardSize = 0
	$CountHealer = 0
	$CountHealerSize = 0
	$CountDragon = 0
	$CountDragonSize  = 0
	$CountInfernoDragonSize  = 0
	$CountInfernoDragon = 0
	$CountPekka = 0
	$CountPekkaSize = 0
	$CountBabyDragon = 0
	$CountBabyDragonSize = 0
	$CountMiner = 0
	$CountMinerSize = 0
	$CountElectroDragon = 0
	$CountElectroDragonSize = 0
	$CountDragonRider = 0
	$CountDragonRiderSize = 0
	$CountYeti = 0
	$CountYetiSize = 0
	$CountHunter = 0
	$CountHunterSize = 0
	$CountMinion = 0
	$CountMinionSize = 0
	$CountSuperMinion = 0
	$CountSuperMinionSize = 0
	$CountHogRider = 0
	$CountHogRiderSize = 0
	$CountValkyre = 0
	$CountValkyreSize = 0
	$CountSuperValkyre = 0
	$CountSuperValkyreSize = 0
	$CountGolem = 0
	$CountGolemSize = 0
	$CountSuperWitch = 0
	$CountSuperWitchSize = 0
	$CountWitch = 0
	$CountWitchSize = 0
	$CountLavaHound = 0
	$CountLavaHoundSize = 0
	$CountIceHound = 0
	$CountIceHoundSize = 0
	$CountBowler = 0
	$CountBowlerSize = 0
	$CountSuperBowler = 0
	$CountSuperBowlerSize = 0
	$CountIceGolem = 0
	$CountIceGolemSize = 0
	$CountLSpell = 0
	$CountLSpellSize = 0
	$CountHSpell = 0
	$CountHSpellSize = 0
	$CountRSpell = 0
	$CountRSpellSize = 0
	$CountJSpell = 0
	$CountJSpellSize = 0
	$CountFSpell = 0
	$CountFSpellSize = 0
	$CountCSpell = 0
	$CountCSpellSize = 0
	$CountISpell = 0
	$CountISpellSize = 0
	$CountPSpell = 0
	$CountPSpellSize = 0
	$CountESpell = 0
	$CountESpellSize = 0
	$CountHaSpell = 0
	$CountHaSpellSize = 0
	$CountSkSpell = 0
	$CountSkSpellSize = 0
	$CountBtSpell = 0
	$CountBtSpellSize = 0
	$CountKing = 0
	$CountQueen = 0
	$CountWarden = 0
	$CountRoyaleChampion = 0
	$CountCC = 0
	$CountWW = 0
	$CountSS = 0
	$CountBB = 0
	$CountSB = 0
	$CountLL = 0
	$CountUsedBarbarianShow = ""
	$CountUsedSuperBarbarianShow = ""
	$CountUsedArcherShow = ""
	$CountUsedSuperArcherShow = ""
	$CountUsedGiantShow = ""
	$CountUsedSuperGiantShow = ""
	$CountUsedGoblinShow = ""
	$CountUsedSuperGoblinShow = ""
	$CountUsedWallBreakerShow = ""
	$CountUsedSuperWallBreakerShow = ""
	$CountUsedBaloonShow = ""
	$CountUsedRocketBaloonShow = ""
	$CountUsedWizardShow = ""
	$CountUsedSuperWizardShow = ""
	$CountUsedHealerShow = ""
	$CountUsedDragonShow = ""
	$CountUsedInfernoDragonShow = ""
	$CountUsedPekkaShow = ""
	$CountUsedBabyDragonShow = ""
	$CountUsedMinerShow = ""
	$CountUsedElectroDragonShow = ""
	$CountUsedDragonRiderShow = ""
	$CountUsedYetiShow = ""
	$CountUsedHunterShow = ""
	$CountUsedMinionShow = ""
	$CountUsedSuperMinionShow = ""
	$CountUsedHogRiderShow = ""
	$CountUsedValkyreShow = ""
	$CountUsedSuperValkyreShow = ""
	$CountUsedGolemShow = ""
	$CountUsedWitchShow = ""
	$CountUsedSuperWitchShow = ""
	$CountUsedLavaHoundShow = ""
	$CountUsedIceHoundShow = ""
	$CountUsedBowlerShow = ""
	$CountUsedSuperBowlerShow = ""
	$CountUsedIceGolemShow = ""
	$CountUsedLSpellShow = ""
	$CountUsedHSpellShow = ""
	$CountUsedRSpellShow = ""
	$CountUsedJSpellShow = ""
	$CountUsedFSpellShow = ""
	$CountUsedCSpellShow = ""
	$CountUsedISpellShow = ""
	$CountUsedPSpellShow = ""
	$CountUsedHaSpellShow = ""
	$CountUsedSkSpellShow = ""
	$CountUsedBtSpellShow = ""
	$CountUsedKingShow = ""
	$CountUsedQueenShow = ""
	$CountUsedWardenShow = ""
	$CountUsedRoyaleChampionShow = ""
	$CountUsedSSShow = ""
	$CountUsedSBShow = ""
	$CountUsedCCShow = ""
	$CountUsedBBShow = ""
	$CountUsedWWShow = ""
	$CountUsedLLShow = ""
	$CounterTroop_SpellSize = 0
	$CounterTroop_TroopSize = 1
	$ArmyCountTXT = ""
	$SumOfArmySizeCount = 0
	$SumOfArmySizeCountShow = ""
	$SumOfSpellSizeCount = 0
	$SumOfSpellSizeCountShow = ""

;Reset Multi Controls  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
	ResetGuiforA()
	ResetGuiforB()
	ResetGuiforC()
	ResetGuiforD()
	ResetGuiforE()
	ResetGuiforF()
	ResetGuiforG()
	ResetGuiforH()
;Reset Other Controls  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 	FileClose($g_sSaveLocation)
	$SideType = ""
	$SpellSideType = ""
	$AddTile = ""
	$SideNumber = 0
	$SpellSideNumber = 0
	$DropPoint = ""
	$Wideness = ""
	$Comment = ""
	$Comment2 = ""
	$InputRandomX=0
	$InputRandomY=0
	$SpellOnBuildingName = ""
	$LogBuilding = ""
	$FirstAdding = True
	$TName = "Barb       "
	$TType = "Army"
	$LOGName = "Barbarian"
	$AddTileChoose = False
	$CCRequestCSVWrite = ""
	$TrainCSVWrite = ""
	$ReadNote = ""
	_KillCSV()

;~ 	_____to prevent hiding building pic if user open set train and close main gui at beginig__________________________________
	For $i = $MainGoldStoragePic To $MainDarkElixirCollectorPic
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $MainTHPic To $MainAirDeffancePic
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $MainScaterPic To $MainAirSweeperPic
		GUICtrlSetState($i, $GUI_DISABLE)
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc
