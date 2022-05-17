; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunction for Spells
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

Func _ifSide_is_SF_On_Spell ()
   GetQTY_X_VECT()
   GetSleepSize()
   GetRandomXY()
   Local $k
   if $SpellSideType = "_SF" Then
	  For $i = 0 To 36
		 if String("-" & $i) = $AddTile Then
			For $i = 0 To 100
			   If $i = $SpellSideNumber Then
				  $MakeSpell = @CRLF & $MakeEnter & $Make_SF & StringLeft(String($AddTile) & $BlankCharacters,11) & "|INT-EXT    |0          |0          |           |           |" & @CRLF
				  If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
					 $MakeSpell = @CRLF & $MakeEnter & $Make_SF & StringLeft(String($AddTile) & $BlankCharacters,11) & "|INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
				  EndIf
				  $DropPoint = $MakeSpell & @CRLF & $DropEnter & "DROP  |Z          |" & StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|0          |0          |50-70      |           |           |... - " & $Comment
				  If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |Z          |" & StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|0          |0          |50-70      |           |           |... - " & $Comment
					   Next
				  EndIf
				  If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					 $DropPoint = $MakeSpell & @CRLF & $DropEnter & "DROP  |Z          |"& StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|0          |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
					 If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |Z          |" & StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|0          |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
					   Next
					 EndIf
				  EndIf
			   EndIf
			Next
		 Else
		    ContinueLoop
		 EndIf
	  Next
   EndIf
EndFunc

Func _ifSide_is_SE_On_Spell ()
   GetQTY_X_VECT()
   GetSleepSize()
   GetRandomXY()
   if $SpellSideType = "_SE" Then
	  For $i = 0 To 36
		 if String("-" & $i) = $AddTile Then
			For $i = 0 To 100
			   If $i = $SpellSideNumber Then
				  $MakeSpell = @CRLF & $MakeEnter & $Make_SE & StringLeft(String($AddTile) & $BlankCharacters,11) & "|INT-EXT    |0          |0          |           |           |" & @CRLF
				  If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
					 $MakeSpell = @CRLF & $MakeEnter & $Make_SE & StringLeft(String($AddTile) & $BlankCharacters,11) & "|INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
				  EndIf
				  $DropPoint = $MakeSpell & @CRLF & $DropEnter & "DROP  |Y          |"& StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |           |           |... - " & $Comment
				  If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |Y          |" & StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|0          |0          |50-70      |           |           |... - " & $Comment
					   Next
				  EndIf
				  If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					 $DropPoint = $MakeSpell & @CRLF & $DropEnter & "DROP  |Y          |"& StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|" & $ADDSleepCSV & "|" & $ADDSleepCSV & "|" & $ADDSleepCSV & "|           |           |... - " & $Comment
					 If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |Y          |" & StringLeft(String($SpellSideNumber) & $BlankCharacters, 11) & "|1          |" & $TName & "|0          |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
					   Next
					 EndIf
				  EndIf
			   EndIf
			Next
		 Else
		    ContinueLoop
		 EndIf
	  Next
   EndIf
EndFunc

Func  _ifSide_is_Building_On_Spell()
   GetQTY_X_VECT()
   GetSleepSize()
   GetRandomXY()
   Select
   Case GUICtrlRead($RadioWall1) = $GUI_CHECKED
	  $SpellOnBuildingName = "EX-WALL    |"
	  $LogBuilding = "First Most Outer Wall"
   Case GUICtrlRead($RadioWall2) = $GUI_CHECKED
	  $SpellOnBuildingName = "IN-WALL    |"
	  $LogBuilding = "Second Most Outer Wall"
   Case GUICtrlRead($RadioEagle) = $GUI_CHECKED
	  $SpellOnBuildingName = "EAGLE      |"
	  $LogBuilding = "Eagle Artillery"
   Case GUICtrlRead($RadioInferno) = $GUI_CHECKED
	  $SpellOnBuildingName = "INFERNO    |"
	  $LogBuilding = "Inferno Tower"
   Case GUICtrlRead($RadioXbow) = $GUI_CHECKED
	  $SpellOnBuildingName = "XBOW       |"
	  $LogBuilding = "X-Bow"
   Case GUICtrlRead($RadioWizzTower) = $GUI_CHECKED
	  $SpellOnBuildingName = "WIZTOWER   |"
	  $LogBuilding = "Wizzard Tower"
   Case GUICtrlRead($RadioAirDefense) = $GUI_CHECKED
	  $SpellOnBuildingName = "AIRDEFENSE |"
	  $LogBuilding = "Air Defense"
   Case GUICtrlRead($RadioScatterShot) = $GUI_CHECKED
	  $SpellOnBuildingName = "SCATTER    |"
	  $LogBuilding = "Scatter Shot"
   Case GUICtrlRead($RadioTH) = $GUI_CHECKED
	  $SpellOnBuildingName = "TOWNHALL   |"
	  $LogBuilding = "Town Hall"
   Case GUICtrlRead($RadioMortar) = $GUI_CHECKED
	  $SpellOnBuildingName = "MORTAR     |"
	  $LogBuilding = "Mortar"
   EndSelect
   If GUICtrlRead($CheckBuilding) = $GUI_CHECKED And $TType = "Spell" Then
	  $MakeSpell = @CRLF & $MakeEnter & "MAKE  |Z          |FRONT-RIGHT|1          |0          |IGNORE     |0          |0          |" & $SpellOnBuildingName & "           |" & @CRLF
	  If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
		 $MakeSpell = @CRLF & $MakeEnter & "MAKE  |Z          |FRONT-RIGHT|1          |0          |IGNORE     |" &$InputRandomX& "|" &$InputRandomY& "|" & $SpellOnBuildingName  & "           |" & @CRLF
	  EndIf
	  $DropPoint = $MakeSpell & $DropEnter & "DROP  |Z          |1          |1          |" & $TName & "|0          |0          |50-70      |           |           |... - " & $Comment
	  If $ValueOfInputBox > 1 Then
		  For $k = 2 To $ValueOfInputBox
			 $DropPoint = $DropPoint & @CRLF & "DROP  |Z          |1          |1          |" & $TName & "|0          |0          |50-70      |           |           |... - " & $Comment
		  Next
	  EndIf
	  If GUICtrlRead($Sleep) = $GUI_CHECKED Then
		 $DropPoint = $MakeSpell & $DropEnter & "DROP  |Z          |1          |1          |" & $TName & "|0          |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
		 If $ValueOfInputBox > 1 Then
			 For $k = 2 To $ValueOfInputBox
				 $DropPoint = $DropPoint & @CRLF & "DROP  |Z          |1          |1          |" & $TName & "|0          |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
			 Next
		 EndIf
	  EndIf
   EndIf
EndFunc

