; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Main DropFunction in Side _C
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
Func _ifSide_is_C_On_Army()
   GetQTY_X_VECT()
   GetWideness()
   Local $k
   if $SideType = "_C" Then
	  Select
		  Case $AddTile = 0 And $OneDropChoose = 1
			For $i = 1 To 10
			   If $i = $SideNumber Then
				   $DropPoint = "DROP  |G          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |"&$Wideness&"|           |... - " & $Comment
				   If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |"&$Wideness&"|           |... - " & $Comment
					   Next
				   EndIf
				   If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					   GetSleepSize()
					   $DropPoint = "DROP  |G          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   If $ValueOfInputBox > 1 Then
						   For $k = 2 To $ValueOfInputBox
							   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Next
  					   EndIf
				   EndIf
			   EndIf
			Next
		  Case $AddTile = 0 And $MultiDropChoose = 1
			CheckIfMultiIsFrom_CsideAnd0AddTile()
		  Case $AddTile = 1 And $OneDropChoose = 1
			For $i = 1 To 10
			   If $i = $SideNumber Then
				   $DropPoint = "DROP  |H          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |"&$Wideness&"|           |... - " & $Comment
				   If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |"&$Wideness&"|           |... - " & $Comment
					   Next
				   EndIf
				   If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					   GetSleepSize()
					   $DropPoint = "DROP  |H          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   If $ValueOfInputBox > 1 Then
						   For $k = 2 To $ValueOfInputBox
							   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Next
  					   EndIf
				   EndIf
			   EndIf
			Next
		  Case $AddTile = 1 And $MultiDropChoose = 1
			CheckIfMultiIsFrom_CsideAnd1AddTile()
		  Case $AddTile = 2 And $OneDropChoose = 1
			For $i = 1 To 10
			   If $i = $SideNumber Then
				   $DropPoint = "DROP  |I          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |"&$Wideness&"|           |... - " & $Comment
				   If $ValueOfInputBox > 1 Then
					   For $k = 2 To $ValueOfInputBox
						   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |50-70      |"&$Wideness&"|           |... - " & $Comment
					   Next
				   EndIf
				   If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					   GetSleepSize()
					   $DropPoint = "DROP  |I          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   If $ValueOfInputBox > 1 Then
						   For $k = 2 To $ValueOfInputBox
							   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & StringLeft(String($i) & $BlankCharacters, 11) & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Next
  					   EndIf
				   EndIf
			   EndIf
			Next
		  Case $AddTile = 2 And $MultiDropChoose = 1
			CheckIfMultiIsFrom_CsideAnd2AddTile()
		 EndSelect
   EndIf
EndFunc