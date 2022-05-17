; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Building Radio Control In CSV Write
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

Func CheckBuildingControl()

	If GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then
		EnableBuildings()
		UncheckBuildings()
		GUICtrlSetState($lblQTYxVector,$GUI_HIDE)
		GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
		GUICtrlSetState($AddCSV,$GUI_HIDE)
		GUICtrlSetBkColor($RadioWall1, 0xada466)
		GUICtrlSetBkColor($RadioAirDefense, 0xaea868)
		GUICtrlSetBkColor($RadioInferno, 0xada768)
		GUICtrlSetBkColor($RadioEagle, 0xada768)
		GUICtrlSetBkColor($RadioTH, 0xada768)
		GUICtrlSetBkColor($RadioMortar, 0xb0a869)
		GUICtrlSetBkColor($RadioXbow, 0xb0aa69)
		GUICtrlSetBkColor($RadioScatterShot, 0xb0aa69)
		GUICtrlSetBkColor($RadioWizzTower, 0xaaa367)
		GUICtrlSetBkColor($RadioWall2, 0xb0aa69)
		GUICtrlSetState($BuildingFrame,$GUI_DISABLE)
		GUICtrlSetBkColor($RadioWall1, 0xada466)
		GUICtrlSetState($BuildingFrame,$GUI_SHOW)
		GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
		GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
		$AddTile = ""
		$SpellSideType = ""
		$SpellSideNumber = ""
    Else
		DisableBuildings()
		UncheckBuildings()
		GUICtrlSetState($lblQTYxVector,$GUI_HIDE)
		GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
		GUICtrlSetState($AddCSV,$GUI_HIDE)
		GUICtrlSetBkColor($RadioWall1, 0xd3ce7d)
		GUICtrlSetBkColor($RadioAirDefense, 0xd3ce7d)
		GUICtrlSetBkColor($RadioInferno, 0xd3ce7d)
		GUICtrlSetBkColor($RadioEagle, 0xd3ce7d)
		GUICtrlSetBkColor($RadioTH, 0xd3ce7d)
		GUICtrlSetBkColor($RadioMortar, 0xd3ce7d)
		GUICtrlSetBkColor($RadioXbow, 0xd3ce7d)
		GUICtrlSetBkColor($RadioScatterShot, 0xd3ce7d)
		GUICtrlSetBkColor($RadioWizzTower, 0xd3ce7d)
		GUICtrlSetBkColor($RadioWall2, 0xd3ce7d)
 		GUICtrlSetState($BuildingFrame,$GUI_HIDE)
	    $PtRadiowall1 = 0
 	    $PtRadiowall2 = 0
 	    $PtRadioEagle= 0
 	    $PtRadioInferno= 0
 	    $PtRadioXbow= 0
	    $PtRadioWizzTower= 0
	    $PtRadioAirDefense= 0
	    $PtRadioTH= 0
	    $PtRadioMortar= 0
	    $PtRadioScatterShot = 0
		$AddTile = ""
		$SpellSideType = ""
		$SpellSideNumber = ""
	EndIf
EndFunc

Func RadioWall1()
	$LogBuilding = "First Most Outer Wall"
	$PtRadiowall1 = 1
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 248
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_ENABLE)
EndFunc

Func RadioEagle()
	$LogBuilding = "Eagle Artillery"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 1
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 248
	Local $y = 357
	GUICtrlSetBkColor($RadioEagle, 0xada768)
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc
Func RadioInferno()
	$LogBuilding = "Inferno Tower"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 1
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 248
	Local $y = 357
	GUICtrlSetBkColor($RadioEagle, 0xada768)
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc

Func RadioAirDefense()
	$LogBuilding = "Air Defense"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 1
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 248
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc

Func RadioTH()
	$LogBuilding = "Town Hall"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 1
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 248
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc
Func RadioMortar()
	$LogBuilding = "Mortar"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 1
	$PtRadioScatterShot = 0
	Local $x = 621
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x  , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc
Func RadioScatterShot()
	$LogBuilding = "ScatorShot"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 1
	Local $x = 621
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc
Func RadioXbow()
	$LogBuilding = "X-Bow"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 1
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 621
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc
Func RadioWizzTower()
	$LogBuilding = "Wizzard Tower"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 0
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 1
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 621
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc
Func RadioWall2()
	$LogBuilding = "Second Most Outer Wall"
	$PtRadiowall1 = 0
	$PtRadiowall2 = 1
	$PtRadioEagle= 0
	$PtRadioInferno= 0
	$PtRadioXbow= 0
	$PtRadioWizzTower= 0
	$PtRadioAirDefense= 0
	$PtRadioTH= 0
	$PtRadioMortar= 0
	$PtRadioScatterShot = 0
	Local $x = 621
	Local $y = 357
	GUICtrlSetPos($lblQTYxVector, $x , $y)
	GUICtrlSetPos($InputBoxOnMap, $x + 17, $y + 27)
	GUICtrlSetPos($AddCSV, $x, $y + 47)
    GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
    GUICtrlSetState($AddCSV,$GUI_SHOW)
EndFunc