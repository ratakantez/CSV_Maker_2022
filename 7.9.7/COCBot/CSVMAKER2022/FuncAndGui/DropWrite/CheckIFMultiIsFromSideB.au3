; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunction for MultiDrop in Side _B
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
Func CheckIfMultiIsFrom_BsideAnd0AddTile()
   Local $OthersideforDOuble = "_A"
   If GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forB > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforB))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forB) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forB > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforB))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forB) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forB > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforB))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forB) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forB > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforB))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forB) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forB > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforB))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forB) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forB > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforB))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forB) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forB > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforB))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forB) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forB > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforB))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forB) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forB > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforB))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forB) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forB > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforB))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forB) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |A-D        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |D          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforB) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforB)),Number(GUICtrlRead($InputLineEndingforB)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforB)),Number(GUICtrlRead($InputLineEndingforB)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforB))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = "DROP  |A-D        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = "DROP  |D          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |D          |BACK-LEFT  |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |D          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |A          |BACK-RIGHT |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |A-D        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_BsideAnd1AddTile()
   Local $OthersideforDOuble = "_A"
   If GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forB > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforB))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forB) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forB > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforB))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forB) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forB > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforB))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forB) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forB > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforB))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forB) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forB > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforB))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forB) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forB > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforB))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forB) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forB > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforB))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forB) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forB > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforB))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forB) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forB > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforB))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forB) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forB > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforB))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forB) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |B-E        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |E          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforB) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforB)),Number(GUICtrlRead($InputLineEndingforB)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforB)),Number(GUICtrlRead($InputLineEndingforB)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforB))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = "DROP  |B-E        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = "DROP  |E          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |E          |BACK-RIGHT |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |E          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |B          |BACK-RIGHT |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |B-E        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_BsideAnd2AddTile()
   Local $OthersideforDOuble = "_A"
   If GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forB > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforB))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forB) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forB > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforB))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forB) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forB > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforB))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forB) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forB > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforB))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forB) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forB > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforB))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forB) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forB > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforB))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forB) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forB > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforB))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forB) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forB > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforB))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forB) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forB > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforB))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forB) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forB > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforB))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forB) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forB &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |C-F        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forB &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |F          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforB) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforB)),Number(GUICtrlRead($InputLineEndingforB)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforB)),Number(GUICtrlRead($InputLineEndingforB)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforB))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = "DROP  |C-F        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = "DROP  |F          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |F          |BACK-LEFT  |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforB) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |F          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |C          |BACK-RIGHT |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforB))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforB))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforB))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |C-F        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc
