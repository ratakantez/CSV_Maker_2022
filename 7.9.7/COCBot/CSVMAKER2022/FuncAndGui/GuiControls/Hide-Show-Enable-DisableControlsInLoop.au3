; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker HIDE/SHOW/ENABLE/DISABLE Controls in MAIN GUI
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

Func MakeAllDropANDAddtileButtonResetColor()
	$AddTile = ""
	$SideType = ""
	$SpellSideType = ""
	$SpellSideNumber = 0
	$SideNumber = 0
	$AddTileChoose = False
	GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;yellow
	GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;blue
	GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; white
	GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;red
	GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	GUICtrlSetState($aAddTile0,$GUI_HIDE)
	GUICtrlSetState($aAddTile1,$GUI_HIDE)
	GUICtrlSetState($aAddTile2,$GUI_HIDE)
	GUICtrlSetState($lblQTYxVector, $GUI_HIDE)
	GUICtrlSetState($InputBoxOnMap, $GUI_HIDE)
	GUICtrlSetState($AddCSV, $GUI_HIDE)
EndFunc

Func HideBuildings()
	For $i = $RadioWall1 To $RadioWall2
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc   ;==>HideBuildings

Func ShowBuildings()
	For $i = $RadioWall1 To $RadioWall2
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowBuildings

Func EnableBuildings()
	For $i = $RadioWall1 To $RadioWall2
		GUICtrlSetState($i, $GUI_ENABLE)
	Next
EndFunc   ;==>EnableBuildings
Func DisableBuildings()
	For $i = $RadioWall1 To $RadioWall2
		GUICtrlSetState($i, $GUI_DISABLE)
	Next
EndFunc   ;==>DisableBuildings
Func UncheckBuildings()
	For $i = $RadioWall1 To $RadioWall2
		GUICtrlSetState($i, $GUI_UNCHECKED)
	Next
EndFunc   ;==>UncheckBuildings

Func HideAddTile()
	GUICtrlSetState($aAddTile0, $GUI_HIDE)
	GUICtrlSetState($aAddTile1, $GUI_HIDE)
	GUICtrlSetState($aAddTile2, $GUI_HIDE)
EndFunc   ;==>HideAddTile

Func ShowAddTile()
	GUICtrlSetState($aAddTile0, $GUI_SHOW)
	GUICtrlSetState($aAddTile1, $GUI_SHOW)
	GUICtrlSetState($aAddTile2, $GUI_SHOW)
EndFunc   ;==>ShowAddTile

Func HideSpellPoint()
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc   ;==>HideSpellPoint
Func DisableSpellPoint()
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_DISABLE)
	Next
EndFunc   ;==>DisableSpellPoint

Func ShowSpellPoint()
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowSpellPoint

Func HideArmyPoint()
   	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc

Func ShowArmyPoint()
   	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_SHOW)
    Next
EndFunc

Func ShowMultiArmy()
   GUICtrlSetState($MultiDropA, $GUI_SHOW)
   GUICtrlSetState($MultiDropB, $GUI_SHOW)
   GUICtrlSetState($MultiDropC, $GUI_SHOW)
   GUICtrlSetState($MultiDropD, $GUI_SHOW)
   GUICtrlSetState($MultiDropE, $GUI_SHOW)
   GUICtrlSetState($MultiDropF, $GUI_SHOW)
   GUICtrlSetState($MultiDropG, $GUI_SHOW)
   GUICtrlSetState($MultiDropH, $GUI_SHOW)
EndFunc
Func ShowMultiArmyOn()
   GUICtrlSetState($MultiDropAOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropBOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropCOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropDOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropEOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropFOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropGOn, $GUI_SHOW)
   GUICtrlSetState($MultiDropHOn, $GUI_SHOW)
EndFunc
Func HideMultiArmy()
   GUICtrlSetState($MultiDropA, $GUI_HIDE)
   GUICtrlSetState($MultiDropB, $GUI_HIDE)
   GUICtrlSetState($MultiDropC, $GUI_HIDE)
   GUICtrlSetState($MultiDropD, $GUI_HIDE)
   GUICtrlSetState($MultiDropE, $GUI_HIDE)
   GUICtrlSetState($MultiDropF, $GUI_HIDE)
   GUICtrlSetState($MultiDropG, $GUI_HIDE)
   GUICtrlSetState($MultiDropH, $GUI_HIDE)
EndFunc
Func HideMultiArmyOn()
   GUICtrlSetState($MultiDropAOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropBOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropCOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropDOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropEOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropFOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropGOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropHOn, $GUI_HIDE)
EndFunc
Func EnableMultiArmy()
   	For $i = $MultiDropA To $MultiDropH
		GUICtrlSetState($i, $GUI_ENABLE)
	Next
EndFunc

Func DisableMultiArmy()
   	For $i = $MultiDropA To $MultiDropH
		GUICtrlSetState($i, $GUI_DISABLE)
	Next
EndFunc
