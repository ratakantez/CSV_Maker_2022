; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunction for MultiDrop in Side _C
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
Func CheckIfMultiIsFrom_CsideAnd0AddTile()
   Local $OthersideforDOuble = "_D"
   If GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forC > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforC))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forC) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forC > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforC))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forC) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forC > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforC))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forC) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forC > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforC))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forC) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forC > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforC))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forC) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forC > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforC))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forC) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forC > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforC))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forC) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forC > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforC))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forC) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forC > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforC))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forC) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forC > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforC))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forC) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |G          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   EndIf
											   $UNDOLine = 10
										   EndIf
									   EndIf
								   EndIf
							   EndIf
						   EndIf
					   EndIf
				   EndIf
			   EndIf
		   EndIf
	   EndIf
   EndIf
   If GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforC) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforC)),Number(GUICtrlRead($InputLineEndingforC)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforC)),Number(GUICtrlRead($InputLineEndingforC)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforC))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = "DROP  |G-J        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = "DROP  |G          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |G          |LEFT-BACK  |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |G          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |J          |LEFT-FRONT |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |G-J        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_CsideAnd1AddTile()
   Local $OthersideforDOuble = "_D"
   If GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forC > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforC))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forC) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forC > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforC))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forC) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forC > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforC))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forC) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forC > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforC))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forC) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forC > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforC))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forC) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forC > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforC))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forC) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forC > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforC))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forC) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forC > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforC))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forC) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forC > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforC))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forC) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forC > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforC))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forC) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |H          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   EndIf
											   $UNDOLine = 10
										   EndIf
									   EndIf
								   EndIf
							   EndIf
						   EndIf
					   EndIf
				   EndIf
			   EndIf
		   EndIf
	   EndIf
   EndIf
   If GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforC) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforC)),Number(GUICtrlRead($InputLineEndingforC)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforC)),Number(GUICtrlRead($InputLineEndingforC)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforC))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = "DROP  |H-K        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = "DROP  |H          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |H          |LEFT-BACK  |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |H          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |H          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |K          |LEFT-FRONT |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |H-K        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_CsideAnd2AddTile()
   Local $OthersideforDOuble = "_B"
   If GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forC > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforC))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forC) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forC > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforC))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forC) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forC > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforC))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forC) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forC > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforC))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forC) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forC > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforC))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forC) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forC > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforC))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forC) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forC > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforC))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forC) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forC > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforC))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forC) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forC > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforC))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forC) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forC > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforC))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forC) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forC &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forC &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |I          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   EndIf
											   $UNDOLine = 10
										   EndIf
									   EndIf
								   EndIf
							   EndIf
						   EndIf
					   EndIf
				   EndIf
			   EndIf
		   EndIf
	   EndIf
   EndIf
   If GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforC) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforC)),Number(GUICtrlRead($InputLineEndingforC)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforC)),Number(GUICtrlRead($InputLineEndingforC)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforC))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = "DROP  |I-L        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = "DROP  |I          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |I          |LEFT-BACK  |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforC) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |I          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |L          |LEFT-FRONT |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforC))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforC))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforC))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |I-L        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc
