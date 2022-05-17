; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunction for MultiDrop in Side _H
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
Func CheckIfMultiIsFrom_HsideAnd0AddTile()
   Local $OthersideforDOuble = "_G"
   If GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forH > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforH))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forH) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forH > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforH))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forH) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forH > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforH))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forH) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forH > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforH))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forH) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forH > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforH))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forH) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forH > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforH))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forH) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forH > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforH))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forH) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forH > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforH))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forH) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forH > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforH))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forH) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forH > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforH))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forH) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |V          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforH) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforH)),Number(GUICtrlRead($InputLineEndingforH)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforH)),Number(GUICtrlRead($InputLineEndingforH)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforH))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = "DROP  |S-V        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = "DROP  |V          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |V          |RIGHT-BACK |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |V          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |S          |RIGHT-FRONT|10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |S-V        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_HsideAnd1AddTile()
   Local $OthersideforDOuble = "_G"
   If GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forH > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforH))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forH) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forH > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforH))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forH) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forH > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforH))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forH) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forH > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforH))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forH) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forH > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforH))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forH) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forH > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforH))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forH) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forH > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforH))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forH) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forH > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforH))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forH) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forH > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforH))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forH) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forH > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforH))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forH) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |W          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforH) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforH)),Number(GUICtrlRead($InputLineEndingforH)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforH)),Number(GUICtrlRead($InputLineEndingforH)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforH))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = "DROP  |T-W        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = "DROP  |W          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED Then

		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |W          |RIGHT-BACK |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |W          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |T          |RIGHT-FRONT|10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |T-W        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_HsideAnd2AddTile()
   Local $OthersideforDOuble = "_G"
   If GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forH > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforH))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forH) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forH > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforH))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forH) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forH > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforH))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forH) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forH > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforH))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forH) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forH > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforH))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forH) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forH > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforH))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forH) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forH > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforH))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forH) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forH > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforH))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forH) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forH > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforH))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forH) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forH > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforH))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forH) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forH &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forH &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |X          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforH) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforH)),Number(GUICtrlRead($InputLineEndingforH)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforH)),Number(GUICtrlRead($InputLineEndingforH)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforH))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = "DROP  |U-X        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = "DROP  |X          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |X          |RIGHT-BACK |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforH) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |X          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |U          |RIGHT-FRONT|10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforH))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforH))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforH))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |U-X        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc