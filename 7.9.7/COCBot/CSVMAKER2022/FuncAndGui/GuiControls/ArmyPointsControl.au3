; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Army Points Control In CSV Write
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

Func aAddTile0()
	$AddTile = 0
	$AddTileChoose = True
	GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	$GuiLastAddTilePoint = $aAddTile0
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	GUICtrlSetBkColor($GuiLastAddTilePoint, 0x000080) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER purple
	Local $x
	Local $y

	If  $SideType = "_A" Or $SideType = "_B" Then
		$x = 269
		$y = 62
		GUICtrlSetPos($AddCSV, $x - 67, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 265
			$y = 50
			GUICtrlSetPos($AddCSV, $x - 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_C" Or $SideType = "_D" Then
		$x = 270
		$y = 358
		GUICtrlSetPos($AddCSV, $x - 67, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 265
			$y = 355
			GUICtrlSetPos($AddCSV, $x - 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_E" Or $SideType = "_F" Then
		$x = 604
		$y = 357
		GUICtrlSetPos($AddCSV, $x + 64, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 610
			$y = 355
			GUICtrlSetPos($AddCSV, $x + 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_G" Or $SideType = "_H" Then
		$x = 605
		$y = 60
		GUICtrlSetPos($AddCSV, $x + 64, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 610
			$y = 50
			GUICtrlSetPos($AddCSV, $x + 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	EndIf
EndFunc

Func aAddTile1()
	$AddTile = 1
	$AddTileChoose = True
	GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	$GuiLastAddTilePoint = $aAddTile1
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	GUICtrlSetBkColor($GuiLastAddTilePoint, 0x000080) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER purple
	Local $x
	Local $y

	If  $SideType = "_A" Or $SideType = "_B" Then
		$x = 269
		$y = 62
		GUICtrlSetPos($AddCSV, $x - 67, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 265
			$y = 50
			GUICtrlSetPos($AddCSV, $x - 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_C" Or $SideType = "_D" Then
		$x = 270
		$y = 358
		GUICtrlSetPos($AddCSV, $x - 67, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 265
			$y = 355
			GUICtrlSetPos($AddCSV, $x - 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_E" Or $SideType = "_F" Then
		$x = 604
		$y = 357
		GUICtrlSetPos($AddCSV, $x + 64, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 610
			$y = 355
			GUICtrlSetPos($AddCSV, $x + 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_G" Or $SideType = "_H" Then
		$x = 605
		$y = 60
		GUICtrlSetPos($AddCSV, $x + 64, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 610
			$y = 50
			GUICtrlSetPos($AddCSV, $x + 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
		EndIf

EndFunc

Func aAddTile2()
	$AddTile = 2
	$AddTileChoose = True
	GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	$GuiLastAddTilePoint = $aAddTile2
	GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	GUICtrlSetBkColor($GuiLastAddTilePoint, 0x000080) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER purple
	Local $x
	Local $y

	If  $SideType = "_A" Or $SideType = "_B" Then
		$x = 269
		$y = 62
		GUICtrlSetPos($AddCSV, $x - 67, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 265
			$y = 50
			GUICtrlSetPos($AddCSV, $x - 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_C" Or $SideType = "_D" Then
		$x = 270
		$y = 358
		GUICtrlSetPos($AddCSV, $x - 67, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 265
			$y = 355
			GUICtrlSetPos($AddCSV, $x - 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_E" Or $SideType = "_F" Then
		$x = 604
		$y = 357
		GUICtrlSetPos($AddCSV, $x + 64, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 610
			$y = 355
			GUICtrlSetPos($AddCSV, $x + 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	ElseIf $SideType = "_G" Or $SideType = "_H" Then
		$x = 605
		$y = 60
		GUICtrlSetPos($AddCSV, $x + 64, $y + 76)
		If $MultiDropChoose = 1 Then
			$x = 610
			$y = 50
			GUICtrlSetPos($AddCSV, $x + 67 , $y + 27)
		EndIf
		GUICtrlSetState($AddCSV,$GUI_SHOW)
	EndIf
EndFunc


Func a1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_A"
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
	Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
	EndIf


EndFunc

Func a2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func a3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func a4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func a5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func a6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func a7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func a8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func a9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func a10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_A"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $a10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func b10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func b9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func b8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func b7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc




Func b6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
  Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func b5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func b4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func b3()
   If $TType = "Army" Then

	   $SideNumber = 3
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func b2()
   If $TType = "Army" Then

	   $SideNumber = 2
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func b1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_B"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $b1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 269
	   Local $y = 62
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func c10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func c9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func c8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func c7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

		   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func c6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func c5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func c4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

		   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func c3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func c2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func c1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_C"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $c1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc








Func d1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func d2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)

   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func d3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func d4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func d5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func d6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func d7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func d8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func d9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func d10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_D"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $d10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 270
	   Local $y = 358
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x - 67, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x - 47, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf


EndFunc


Func e1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func e2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func e3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc




Func e4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func e5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func e6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func e7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf


EndFunc



Func e8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func e9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func e10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_E"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $e10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf


EndFunc



Func f10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf


EndFunc
Func f9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf



EndFunc
Func f8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func f7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func f6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func f5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func f4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func f3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func f2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func f1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_F"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $f1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 604
	   Local $y = 357
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func g10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func g9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func g8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func g7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func g6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func g5()
   If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc



Func g4()
   If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func g3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func g2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func g1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_G"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $g1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf


EndFunc





Func h1()
   If $TType = "Army" Then
	   $SideNumber = 1
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h1
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc

Func h2()
   If $TType = "Army" Then
	   $SideNumber = 2
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h2
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc



Func h3()
   If $TType = "Army" Then
	   $SideNumber = 3
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h3
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func h4()
	  If $TType = "Army" Then
	   $SideNumber = 4
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h4
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc




Func h5()
	  If $TType = "Army" Then
	   $SideNumber = 5
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h5
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
  Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc

Func h6()
   If $TType = "Army" Then
	   $SideNumber = 6
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h6
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func h7()
   If $TType = "Army" Then
	   $SideNumber = 7
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h7
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf

EndFunc


Func h8()
   If $TType = "Army" Then
	   $SideNumber = 8
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h8
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf


EndFunc

Func h9()
   If $TType = "Army" Then
	   $SideNumber = 9
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h9
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc


Func h10()
   If $TType = "Army" Then
	   $SideNumber = 10
	   $SideType = "_H"
	   $AddTileChoose = False
	   GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
	   GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)

	   GUICtrlSetColor($GuiLastArmyPoint, 0xFFFFFF) ; MAKE LAST CHOOSEN NUMBER WHITE
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFF0000) ;MAKE CHOOSEN NUMBER BACKGROUN RED
	   $GuiLastArmyPoint = $h10
	   GUICtrlSetColor($GuiLastSpellPoint, 0xFFFF00) ;MAKE LAST CHOOSEN SPELL NUMBER YELLOW
	   GUICtrlSetBkColor($GuiLastSpellPoint, 0x000080) ;MAKE LAST CHOOSEN SPELL NUMBER BACKGROUND BLUE
	   GUICtrlSetColor($GuiLastArmyPoint, 0xFF0000) ;MAKE MAKE LAST CHOOSEN ARMY NUMBER RED
	   GUICtrlSetBkColor($GuiLastArmyPoint, 0xFFFFFF);MAKE MAKE LAST CHOOSEN ARMY NUMBER BACKGROUND WHITE
	   Local $x = 605
	   Local $y = 60
	   GUICtrlSetPos($aAddTile2, $x , $y)
	   GUICtrlSetPos($aAddTile1, $x , $y + 27)
	   GUICtrlSetPos($lblQTYxVector, $x + 64, $y + 27)
	   GUICtrlSetPos($aAddTile0, $x , $y + 54)
	   GUICtrlSetPos($InputBoxOnMap, $x + 82, $y + 55)
	   GUICtrlSetState($AddCSV,$GUI_HIDE)
	   GUICtrlSetState($lblQTYxVector,$GUI_SHOW)
	   GUICtrlSetState($InputBoxOnMap,$GUI_SHOW)
	   GUICtrlSetState($aAddTile0,$GUI_SHOW)
	   GUICtrlSetState($aAddTile1,$GUI_SHOW)
	   GUICtrlSetState($aAddTile2,$GUI_SHOW)
   Else
	   MsgBox($MB_OK,"WRONG CHOICE","Red Buttons are for Troops, Heroes and Siege Machines," & @CRLF & "Your Choice is " &$LOGName& ".",6)
   EndIf
EndFunc
