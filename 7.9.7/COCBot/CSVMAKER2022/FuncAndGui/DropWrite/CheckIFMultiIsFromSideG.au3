; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunction for MultiDrop in Side _G
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
Func CheckIfMultiIsFrom_GsideAnd0AddTile()
   Local $OthersideforDOuble = "_H"
   If GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forG > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforG))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forG) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forG > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforG))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forG) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forG > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforG))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forG) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forG > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforG))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forG) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forG > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforG))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forG) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forG > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforG))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forG) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forG > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforG))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forG) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forG > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforG))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forG) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forG > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforG))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forG) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forG > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforG))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forG) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |S-V        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |S          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforG) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforG)),Number(GUICtrlRead($InputLineEndingforG)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforG)),Number(GUICtrlRead($InputLineEndingforG)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforG))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = "DROP  |S-V        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = "DROP  |S          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |S          |RIGHT-FRONT|10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |S          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |V          |RIGHT-BACK |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |S-V        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_GsideAnd1AddTile()
   Local $OthersideforDOuble = "_H"
   If GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forG > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforG))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forG) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forG > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforG))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forG) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forG > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforG))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forG) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forG > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforG))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forG) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forG > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforG))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forG) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forG > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforG))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forG) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forG > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforG))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forG) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forG > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforG))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forG) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forG > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforG))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forG) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forG > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforG))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forG) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |T-W        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |T          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforG) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforG)),Number(GUICtrlRead($InputLineEndingforG)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforG)),Number(GUICtrlRead($InputLineEndingforG)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforG))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = "DROP  |T-W        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = "DROP  |T          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |T          |RIGHT-FRONT|10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |T          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |W          |RIGHT-BACK |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |T-W        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_GsideAnd2AddTile()
   Local $OthersideforDOuble = "_H"
   If GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forG > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforG))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forG) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forG > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforG))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forG) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forG > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforG))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forG) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forG > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforG))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forG) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forG > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforG))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forG) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forG > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforG))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forG) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forG > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforG))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forG) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forG > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforG))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forG) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forG > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforG))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forG) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forG > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforG))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forG) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forG &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |U-X        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forG &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |U          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforG) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforG)),Number(GUICtrlRead($InputLineEndingforG)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforG)),Number(GUICtrlRead($InputLineEndingforG)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforG))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = "DROP  |U-X        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = "DROP  |U          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |U          |RIGHT-FRONT|10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforG) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |U          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |X          |RIGHT-BACK |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforG))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforG))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforG))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |U-X        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

