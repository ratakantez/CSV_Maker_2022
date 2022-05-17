
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Variable
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func ADDSides()
	GetSidePoint()

	FileWrite($g_sSaveLocation,$ASideEnter)
	FileWrite($g_sSaveLocation, @CRLF)
	$GetSideA = "SIDE  |" & $ExtrGoldCSV & "|" & $ExtrElixirCSV & "|" & $ExtrDarkCSV & "|" & $DepoGoldCSV & "|" & $DepoElixirCSV & "|" & $DepoDarkCSV & "|" & $TownHallCSV & "|" & $ForcedSideCSV &	"|           |"
	FileWrite($g_sSaveLocation,$GetSideA)
	FileWrite($g_sSaveLocation, @CRLF)
	FileWrite($g_sSaveLocation,$BSideEnter)
	FileWrite($g_sSaveLocation, @CRLF)
	$GetSideB = "SIDEB |" & $EagleCSV & "|" & $InfernoCSV & "|" & $XbowCSV & "|" & $WizzTowerCSV & "|" & $MortarCSV & "|" & $AirDefanceCSV & "|" & $ScatterShotCSV & "|" & $AirSweeperCSV & "|           |"
	FileWrite($g_sSaveLocation,$GetSideB)
	FileWrite($g_sSaveLocation, @CRLF)
	FileWrite($g_sSaveLocation, @CRLF)
EndFunc

Func GetSidePoint()
  $GetInferno = Number(GUICtrlRead($infernoPoint))
  $GetAirDefance = Number(GUICtrlRead($airpoint))
  $GetEagle = Number(GUICtrlRead($eaglepoint))
  $GetScatterShot = Number(GUICtrlRead($ScatterShotPoint))
  $GetTH = Number(GUICtrlRead($THPoint))
  $GetMortar = Number(GUICtrlRead($MortarPoint))
  $GetScatterShot = Number(GUICtrlRead($ScatterShotPoint))
  $GetXbow = Number(GUICtrlRead($XbowpointPoint))
  $GetWizzTower = Number(GUICtrlRead($WTowerPoint))
  $GetGoldStorage = Number(GUICtrlRead($GoldStoragePoint))
  $GetElixirStorage = Number(GUICtrlRead($ElixirStoragePoint))
  $GetDarkElixirStorage = Number(GUICtrlRead($DarkElixirStoragePoint))
  $GetMine = Number(GUICtrlRead($MinePoint))
  $GetCollector = Number(GUICtrlRead($CollectorPoint))
  $GetDrill = Number(GUICtrlRead($DrillPoint))
  $GetAirSweeper = Number(GUICtrlRead($AirSweeperPoint))

  $SideSUM = $GetGoldStorage + $GetElixirStorage + $GetDarkElixirStorage + $GetMine + $GetCollector + $GetDrill + _
			 $GetTH + $GetInferno + $GetEagle + $GetXbow + $GetWizzTower + $GetAirDefance + _
			 $GetScatterShot + $GetMortar + $GetAirSweeper

  $DepoGoldCSV = StringLeft(String($GetGoldStorage) & $BlankCharacters, 11)
  $DepoElixirCSV = StringLeft(String($GetElixirStorage) & $BlankCharacters, 11)
  $DepoDarkCSV = StringLeft(String($GetDarkElixirStorage) & $BlankCharacters, 11)
  $ExtrGoldCSV = StringLeft(String($GetMine) & $BlankCharacters, 11)
  $ExtrElixirCSV = StringLeft(String($GetCollector) & $BlankCharacters, 11)
  $ExtrDarkCSV = StringLeft(String($GetDrill) & $BlankCharacters, 11)
  $TownHallCSV = StringLeft(String($GetTH) & $BlankCharacters, 11)
  $InfernoCSV = StringLeft(String($GetInferno) & $BlankCharacters, 11)
  $EagleCSV = StringLeft(String($GetEagle) & $BlankCharacters, 11)
  $XbowCSV = StringLeft(String($GetXbow) & $BlankCharacters, 11)
  $WizzTowerCSV = StringLeft(String($GetWizzTower) & $BlankCharacters, 11)
  $AirDefanceCSV = StringLeft(String($GetAirDefance) & $BlankCharacters, 11)
  $ScatterShotCSV = StringLeft(String($GetScatterShot) & $BlankCharacters, 11)
  $MortarCSV = StringLeft(String($GetMortar) & $BlankCharacters, 11)
  $AirSweeperCSV = StringLeft(String($GetAirSweeper) & $BlankCharacters, 11)
  If GUICtrlRead($LeftFrontRadio) = $GUI_CHECKED Then
	$ForcedSideCSV = "TOP-LEFT   "
  ElseIf GUICtrlRead($RightFrontRadio) = $GUI_CHECKED Then
	$ForcedSideCSV = "TOP-RIGHT  "
  ElseIf GUICtrlRead($LeftBottomRadio) = $GUI_CHECKED Then
	$ForcedSideCSV = "BOTTOM-LEFT"
  ElseIf GUICtrlRead($RightBottomRadio) = $GUI_CHECKED Then
	$ForcedSideCSV = "BOTTOM-RIGHT"
  ElseIf GUICtrlRead($RandomRadio) = $GUI_CHECKED Then
	$ForcedSideCSV = "RANDOM     "
  Else
	$ForcedSideCSV = "           "
  EndIf

EndFunc


Func GoldStorageCheckBox()
	If GUICtrlRead($GoldStorageCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($GoldStoragePoint, $GUI_ENABLE)
			GUICtrlSetState($GoldStoragePoint, $GUI_SHOW)
			GUICtrlSetState($GoldStorageSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($GoldStoragePoint, $GUI_DISABLE)
			GUICtrlSetState($GoldStoragePoint, $GUI_HIDE)
			GUICtrlSetState($GoldStorageSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($GoldStorageSlider, $GUI_DISABLE)
		GUICtrlSetState($GoldStoragePoint, $GUI_DISABLE)
		GUICtrlSetState($GoldStoragePoint, $GUI_HIDE)
		GUICtrlSetData($GoldStoragePoint, 0)
		GUICtrlSetData($GoldStorageSlider, 0)
	EndIf
EndFunc
Func ElixirStorageCheckBox()
	If GUICtrlRead($ElixirStorageCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($ElixirStoragePoint, $GUI_ENABLE)
			GUICtrlSetState($ElixirStoragePoint, $GUI_SHOW)
			GUICtrlSetState($ElixirStorageSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($ElixirStoragePoint, $GUI_DISABLE)
			GUICtrlSetState($ElixirStoragePoint, $GUI_HIDE)
			GUICtrlSetState($ElixirStorageSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($ElixirStorageSlider, $GUI_DISABLE)
		GUICtrlSetState($ElixirStoragePoint, $GUI_DISABLE)
		GUICtrlSetState($ElixirStoragePoint, $GUI_HIDE)
		GUICtrlSetData($ElixirStoragePoint, 0)
		GUICtrlSetData($ElixirStorageSlider, 0)
	EndIf
EndFunc
Func DarkElixirStorageCheckBox()
	If GUICtrlRead($DarkElixirStorageCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_ENABLE)
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_SHOW)
			GUICtrlSetState($DarkElixirStorageSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_DISABLE)
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_HIDE)
			GUICtrlSetState($DarkElixirStorageSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($DarkElixirStorageSlider, $GUI_DISABLE)
		GUICtrlSetState($DarkElixirStoragePoint, $GUI_DISABLE)
		GUICtrlSetState($DarkElixirStoragePoint, $GUI_HIDE)
		GUICtrlSetData($DarkElixirStoragePoint, 0)
		GUICtrlSetData($DarkElixirStorageSlider, 0)
	EndIf
EndFunc
Func GoldCollectorCheckBox()
	If GUICtrlRead($GoldCollectorCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($MinePoint, $GUI_ENABLE)
			GUICtrlSetState($MinePoint, $GUI_SHOW)
			GUICtrlSetState($GoldCollectorSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($MinePoint, $GUI_DISABLE)
			GUICtrlSetState($MinePoint, $GUI_HIDE)
			GUICtrlSetState($GoldCollectorSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($GoldCollectorSlider, $GUI_DISABLE)
		GUICtrlSetState($MinePoint, $GUI_DISABLE)
		GUICtrlSetState($MinePoint, $GUI_HIDE)
		GUICtrlSetData($MinePoint, 0)
		GUICtrlSetData($GoldCollectorSlider, 0)
	EndIf
EndFunc
Func ElixirCollectorCheckBox()
	If GUICtrlRead($ElixirCollectorCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($CollectorPoint, $GUI_ENABLE)
			GUICtrlSetState($CollectorPoint, $GUI_SHOW)
			GUICtrlSetState($ElixirCollectorSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($CollectorPoint, $GUI_DISABLE)
			GUICtrlSetState($CollectorPoint, $GUI_HIDE)
			GUICtrlSetState($ElixirCollectorSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($ElixirCollectorSlider, $GUI_DISABLE)
		GUICtrlSetState($CollectorPoint, $GUI_DISABLE)
		GUICtrlSetState($CollectorPoint, $GUI_HIDE)
		GUICtrlSetData($CollectorPoint, 0)
		GUICtrlSetData($ElixirCollectorSlider, 0)
	EndIf
EndFunc
Func DarkElixirCollectorCheckBox()
	If GUICtrlRead($DarkElixirCollectorCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($DrillPoint, $GUI_ENABLE)
			GUICtrlSetState($DrillPoint, $GUI_SHOW)
			GUICtrlSetState($DarkElixirCollectorSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($DrillPoint, $GUI_DISABLE)
			GUICtrlSetState($DrillPoint, $GUI_HIDE)
			GUICtrlSetState($DarkElixirCollectorSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($DarkElixirCollectorSlider, $GUI_DISABLE)
		GUICtrlSetState($DrillPoint, $GUI_DISABLE)
		GUICtrlSetState($DrillPoint, $GUI_HIDE)
		GUICtrlSetData($DrillPoint, 0)
		GUICtrlSetData($DarkElixirCollectorSlider, 0)
	EndIf
EndFunc
;~ --------------------------------------------------------------------
Func THCheckBox()
	If GUICtrlRead($THCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($THPoint, $GUI_ENABLE)
			GUICtrlSetState($THPoint, $GUI_SHOW)
			GUICtrlSetState($THSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($THPoint, $GUI_DISABLE)
			GUICtrlSetState($THPoint, $GUI_HIDE)
			GUICtrlSetState($THSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($THSlider, $GUI_DISABLE)
		GUICtrlSetState($THPoint, $GUI_DISABLE)
		GUICtrlSetState($THPoint, $GUI_HIDE)
		GUICtrlSetData($THPoint, 0)
		GUICtrlSetData($THSlider, 0)
	EndIf
EndFunc
Func InfernoTowerCheckBox()
	If GUICtrlRead($InfernoTowerCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($infernoPoint, $GUI_ENABLE)
			GUICtrlSetState($infernoPoint, $GUI_SHOW)
			GUICtrlSetState($InfernoTowerSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($infernoPoint, $GUI_DISABLE)
			GUICtrlSetState($infernoPoint, $GUI_HIDE)
			GUICtrlSetState($InfernoTowerSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($InfernoTowerSlider, $GUI_DISABLE)
		GUICtrlSetState($infernoPoint, $GUI_DISABLE)
		GUICtrlSetState($infernoPoint, $GUI_HIDE)
		GUICtrlSetData($infernoPoint, 0)
		GUICtrlSetData($InfernoTowerSlider, 0)
	EndIf
EndFunc
Func EagleCheckBox()
	If GUICtrlRead($EagleCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($eaglepoint, $GUI_ENABLE)
			GUICtrlSetState($eaglepoint, $GUI_SHOW)
			GUICtrlSetState($EagleSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($eaglepoint, $GUI_DISABLE)
			GUICtrlSetState($eaglepoint, $GUI_HIDE)
			GUICtrlSetState($EagleSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($EagleSlider, $GUI_DISABLE)
		GUICtrlSetState($eaglepoint, $GUI_DISABLE)
		GUICtrlSetState($eaglepoint, $GUI_HIDE)
		GUICtrlSetData($eaglepoint, 0)
		GUICtrlSetData($EagleSlider, 0)
	EndIf
EndFunc
Func XbowCheckBox()
	If GUICtrlRead($XbowCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($XbowpointPoint, $GUI_ENABLE)
			GUICtrlSetState($XbowpointPoint, $GUI_SHOW)
			GUICtrlSetState($XbowSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($XbowpointPoint, $GUI_DISABLE)
			GUICtrlSetState($XbowpointPoint, $GUI_HIDE)
			GUICtrlSetState($XbowSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($XbowSlider, $GUI_DISABLE)
		GUICtrlSetState($XbowpointPoint, $GUI_DISABLE)
		GUICtrlSetState($XbowpointPoint, $GUI_HIDE)
		GUICtrlSetData($XbowpointPoint, 0)
		GUICtrlSetData($XbowSlider, 0)
	EndIf
EndFunc
Func WizzTowerCheckBox()
	If GUICtrlRead($WizzTowerCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($WTowerPoint, $GUI_ENABLE)
			GUICtrlSetState($WTowerPoint, $GUI_SHOW)
			GUICtrlSetState($WizzTowerSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($WTowerPoint, $GUI_DISABLE)
			GUICtrlSetState($WTowerPoint, $GUI_HIDE)
			GUICtrlSetState($WizzTowerSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($WizzTowerSlider, $GUI_DISABLE)
		GUICtrlSetState($WTowerPoint, $GUI_DISABLE)
		GUICtrlSetState($WTowerPoint, $GUI_HIDE)
		GUICtrlSetData($WTowerPoint, 0)
		GUICtrlSetData($WizzTowerSlider, 0)
	EndIf
EndFunc
Func AirDeffanceCheckBox()
	If GUICtrlRead($AirDeffanceCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($airpoint, $GUI_ENABLE)
			GUICtrlSetState($airpoint, $GUI_SHOW)
			GUICtrlSetState($AirDeffanceSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($airpoint, $GUI_DISABLE)
			GUICtrlSetState($airpoint, $GUI_HIDE)
			GUICtrlSetState($AirDeffanceSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($AirDeffanceSlider, $GUI_DISABLE)
		GUICtrlSetState($airpoint, $GUI_DISABLE)
		GUICtrlSetState($airpoint, $GUI_HIDE)
		GUICtrlSetData($airpoint, 0)
		GUICtrlSetData($AirDeffanceSlider, 0)
	EndIf
EndFunc
;~ ---------------------------------------------------------------------
Func ScaterCheckBox()
	If GUICtrlRead($ScaterCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($ScatterShotPoint, $GUI_ENABLE)
			GUICtrlSetState($ScatterShotPoint, $GUI_SHOW)
			GUICtrlSetState($ScaterSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($ScatterShotPoint, $GUI_DISABLE)
			GUICtrlSetState($ScatterShotPoint, $GUI_HIDE)
			GUICtrlSetState($ScaterSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($ScaterSlider, $GUI_DISABLE)
		GUICtrlSetState($ScatterShotPoint, $GUI_DISABLE)
		GUICtrlSetState($ScatterShotPoint, $GUI_HIDE)
		GUICtrlSetData($ScatterShotPoint, 0)
		GUICtrlSetData($ScaterSlider, 0)
	EndIf
EndFunc
Func MortarCheckBox()
	If GUICtrlRead($MortarCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($MortarPoint, $GUI_ENABLE)
			GUICtrlSetState($MortarPoint, $GUI_SHOW)
			GUICtrlSetState($MortarSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($MortarPoint, $GUI_DISABLE)
			GUICtrlSetState($MortarPoint, $GUI_HIDE)
			GUICtrlSetState($MortarSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($MortarSlider, $GUI_DISABLE)
		GUICtrlSetState($MortarPoint, $GUI_DISABLE)
		GUICtrlSetState($MortarPoint, $GUI_HIDE)
		GUICtrlSetData($MortarPoint, 0)
		GUICtrlSetData($MortarSlider, 0)
	EndIf
EndFunc
Func AirSweeperCheckBox()
	If GUICtrlRead($AirSweeperCheckBox) = $GUI_CHECKED Then
		GUICtrlSetState($LeftFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($LeftBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightBottomRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RightFrontRadio, $GUI_UNCHECKED)
		GUICtrlSetState($RandomRadio, $GUI_UNCHECKED)
		If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
			GUICtrlSetState($AirSweeperpoint, $GUI_ENABLE)
			GUICtrlSetState($AirSweeperpoint, $GUI_SHOW)
			GUICtrlSetState($AirSweeperSlider, $GUI_DISABLE)
		Else
			GUICtrlSetState($AirSweeperpoint, $GUI_DISABLE)
			GUICtrlSetState($AirSweeperpoint, $GUI_HIDE)
			GUICtrlSetState($AirSweeperSlider, $GUI_ENABLE)
		EndIf
	Else
		GUICtrlSetState($AirSweeperSlider, $GUI_DISABLE)
		GUICtrlSetState($AirSweeperpoint, $GUI_DISABLE)
		GUICtrlSetState($AirSweeperpoint, $GUI_HIDE)
		GUICtrlSetData($AirSweeperpoint, 0)
		GUICtrlSetData($AirSweeperSlider, 0)
	EndIf
EndFunc
Func ForcedSideRadio()
	GUICtrlSetState($GoldStorageCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($ElixirStorageCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($DarkElixirStorageCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($GoldCollectorCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($ElixirCollectorCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($DarkElixirCollectorCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($THCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($InfernoTowerCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($EagleCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($XbowCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($WizzTowerCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($AirDeffanceCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($ScaterCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($MortarCheckBox, $GUI_UNCHECKED)
	GUICtrlSetState($AirSweeperCheckBox, $GUI_UNCHECKED)

	GoldStorageCheckBox()
	ElixirStorageCheckBox()
	DarkElixirStorageCheckBox()
	GoldCollectorCheckBox()
	ElixirCollectorCheckBox()
	DarkElixirCollectorCheckBox()
	THCheckBox()
	InfernoTowerCheckBox()
	EagleCheckBox()
	XbowCheckBox()
	WizzTowerCheckBox()
	AirDeffanceCheckBox()
	ScaterCheckBox()
	MortarCheckBox()
	AirSweeperCheckBox()

EndFunc
Func ExpertONorOFF()
	If GUICtrlRead($OnExpertRadio) = $GUI_CHECKED Then
		SliderControlInSideGui()
		If GUICtrlRead($GoldStorageCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($GoldStoragePoint, $GUI_ENABLE)
			GUICtrlSetState($GoldStoragePoint, $GUI_SHOW)
			GUICtrlSetState($GoldStorageSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($ElixirStorageCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($ElixirStoragePoint, $GUI_ENABLE)
			GUICtrlSetState($ElixirStoragePoint, $GUI_SHOW)
			GUICtrlSetState($ElixirStorageSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($DarkElixirStorageCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_ENABLE)
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_SHOW)
			GUICtrlSetState($DarkElixirStorageSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($GoldCollectorCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($MinePoint, $GUI_ENABLE)
			GUICtrlSetState($MinePoint, $GUI_SHOW)
			GUICtrlSetState($GoldCollectorSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($ElixirCollectorCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($CollectorPoint, $GUI_ENABLE)
			GUICtrlSetState($CollectorPoint, $GUI_SHOW)
			GUICtrlSetState($ElixirCollectorSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($DarkElixirCollectorCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($DrillPoint, $GUI_ENABLE)
			GUICtrlSetState($DrillPoint, $GUI_SHOW)
			GUICtrlSetState($DarkElixirCollectorSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($THCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($THPoint, $GUI_ENABLE)
			GUICtrlSetState($THPoint, $GUI_SHOW)
			GUICtrlSetState($THSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($InfernoTowerCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($infernoPoint, $GUI_ENABLE)
			GUICtrlSetState($infernoPoint, $GUI_SHOW)
			GUICtrlSetState($InfernoTowerSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($EagleCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($eaglepoint, $GUI_ENABLE)
			GUICtrlSetState($eaglepoint, $GUI_SHOW)
			GUICtrlSetState($EagleSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($XbowCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($XbowpointPoint, $GUI_ENABLE)
			GUICtrlSetState($XbowpointPoint, $GUI_SHOW)
			GUICtrlSetState($XbowSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($WizzTowerCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($WTowerPoint, $GUI_ENABLE)
			GUICtrlSetState($WTowerPoint, $GUI_SHOW)
			GUICtrlSetState($WizzTowerSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($AirDeffanceCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($airpoint, $GUI_ENABLE)
			GUICtrlSetState($airpoint, $GUI_SHOW)
			GUICtrlSetState($AirDeffanceSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($ScaterCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($ScatterShotPoint, $GUI_ENABLE)
			GUICtrlSetState($ScatterShotPoint, $GUI_SHOW)
			GUICtrlSetState($ScaterSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($MortarCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($MortarPoint, $GUI_ENABLE)
			GUICtrlSetState($MortarPoint, $GUI_SHOW)
			GUICtrlSetState($MortarSlider, $GUI_DISABLE)
		EndIf

		If GUICtrlRead($AirSweeperCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($AirSweeperpoint, $GUI_ENABLE)
			GUICtrlSetState($AirSweeperpoint, $GUI_SHOW)
			GUICtrlSetState($AirSweeperSlider, $GUI_DISABLE)
		EndIf

	ElseIf GUICtrlRead($OffExpertRadio) = $GUI_CHECKED Then
		If GUICtrlRead($GoldStorageCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($GoldStoragePoint, $GUI_DISABLE)
			GUICtrlSetState($GoldStoragePoint, $GUI_HIDE)
			GUICtrlSetState($GoldStorageSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($ElixirStorageCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($ElixirStoragePoint, $GUI_DISABLE)
			GUICtrlSetState($ElixirStoragePoint, $GUI_HIDE)
			GUICtrlSetState($ElixirStorageSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($DarkElixirStorageCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_DISABLE)
			GUICtrlSetState($DarkElixirStoragePoint, $GUI_HIDE)
			GUICtrlSetState($DarkElixirStorageSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($GoldCollectorCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($MinePoint, $GUI_DISABLE)
			GUICtrlSetState($MinePoint, $GUI_HIDE)
			GUICtrlSetState($GoldCollectorSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($ElixirCollectorCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($CollectorPoint, $GUI_DISABLE)
			GUICtrlSetState($CollectorPoint, $GUI_HIDE)
			GUICtrlSetState($ElixirCollectorSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($DarkElixirCollectorCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($DrillPoint, $GUI_DISABLE)
			GUICtrlSetState($DrillPoint, $GUI_HIDE)
			GUICtrlSetState($DarkElixirCollectorSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($THCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($THPoint, $GUI_DISABLE)
			GUICtrlSetState($THPoint, $GUI_HIDE)
			GUICtrlSetState($THSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($InfernoTowerCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($infernoPoint, $GUI_DISABLE)
			GUICtrlSetState($infernoPoint, $GUI_HIDE)
			GUICtrlSetState($InfernoTowerSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($EagleCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($eaglepoint, $GUI_DISABLE)
			GUICtrlSetState($eaglepoint, $GUI_HIDE)
			GUICtrlSetState($EagleSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($XbowCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($XbowpointPoint, $GUI_DISABLE)
			GUICtrlSetState($XbowpointPoint, $GUI_HIDE)
			GUICtrlSetState($XbowSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($WizzTowerCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($WTowerPoint, $GUI_DISABLE)
			GUICtrlSetState($WTowerPoint, $GUI_HIDE)
			GUICtrlSetState($WizzTowerSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($AirDeffanceCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($airpoint, $GUI_DISABLE)
			GUICtrlSetState($airpoint, $GUI_HIDE)
			GUICtrlSetState($AirDeffanceSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($ScaterCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($ScatterShotPoint, $GUI_DISABLE)
			GUICtrlSetState($ScatterShotPoint, $GUI_HIDE)
			GUICtrlSetState($ScaterSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($MortarCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($MortarPoint, $GUI_DISABLE)
			GUICtrlSetState($MortarPoint, $GUI_HIDE)
			GUICtrlSetState($MortarSlider, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($AirSweeperCheckBox) = $GUI_CHECKED Then
			GUICtrlSetState($AirSweeperpoint, $GUI_DISABLE)
			GUICtrlSetState($AirSweeperpoint, $GUI_HIDE)
			GUICtrlSetState($AirSweeperSlider, $GUI_ENABLE)
		EndIf

	EndIf

EndFunc

Func SliderControlInSideGui()
	GUICtrlSetData($GoldStoragePoint, GUICtrlRead($GoldStorageSlider) )
	GUICtrlSetData($ElixirStoragePoint, GUICtrlRead($ElixirStorageSlider))
	GUICtrlSetData($DarkElixirStoragePoint, GUICtrlRead($DarkElixirStorageSlider))
	GUICtrlSetData($MinePoint, GUICtrlRead($GoldCollectorSlider))
	GUICtrlSetData($CollectorPoint, GUICtrlRead($ElixirCollectorSlider))
	GUICtrlSetData($DrillPoint, GUICtrlRead($DarkElixirCollectorSlider))
	GUICtrlSetData($THPoint, GUICtrlRead($THSlider))
	GUICtrlSetData($infernoPoint, GUICtrlRead($InfernoTowerSlider))
	GUICtrlSetData($eaglepoint, GUICtrlRead($EagleSlider))
	GUICtrlSetData($XbowpointPoint, GUICtrlRead($XbowSlider))
	GUICtrlSetData($WTowerPoint, GUICtrlRead($WizzTowerSlider))
	GUICtrlSetData($airpoint, GUICtrlRead($AirDeffanceSlider))
	GUICtrlSetData($ScatterShotPoint, GUICtrlRead($ScaterSlider))
	GUICtrlSetData($MortarPoint, GUICtrlRead($MortarSlider))
	GUICtrlSetData($AirSweeperpoint, GUICtrlRead($AirSweeperSlider))
EndFunc










