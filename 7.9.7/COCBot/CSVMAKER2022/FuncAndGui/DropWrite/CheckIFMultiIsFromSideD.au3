; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunction for MultiDrop in Side _E
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
Func CheckIfMultiIsFrom_DsideAnd0AddTile()
   Local $OthersideforDOuble = "_C"
   If GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forD > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforD))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forD) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forD > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforD))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forD) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forD > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforD))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forD) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forD > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforD))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forD) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forD > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforD))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forD) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forD > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforD))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forD) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forD > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforD))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forD) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forD > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforD))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forD) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forD > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforD))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forD) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forD > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforD))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forD) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |G-J        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |J          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforD) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforD)),Number(GUICtrlRead($InputLineEndingforD)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforD)),Number(GUICtrlRead($InputLineEndingforD)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforD))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = "DROP  |G-J        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = "DROP  |J          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |J          |LEFT-FRONT |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |J          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |G          |LEFT-BACK  |10         |0          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |G-J        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_DsideAnd1AddTile()
   Local $OthersideforDOuble = "_C"
   If GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forD > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforD))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forD) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forD > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforD))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forD) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forD > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforD))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forD) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forD > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforD))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forD) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forD > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforD))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forD) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forD > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforD))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forD) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forD > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforD))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forD) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forD > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforD))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forD) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forD > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforD))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forD) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forD > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforD))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forD) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |H-K        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |K          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforD) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforD)),Number(GUICtrlRead($InputLineEndingforD)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforD)),Number(GUICtrlRead($InputLineEndingforD)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforD))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = "DROP  |H-K        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = "DROP  |K          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |K          |LEFT-FRONT |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |K          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |K          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |H          |LEFT-BACK  |10         |1          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |H-K        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc

Func CheckIfMultiIsFrom_DsideAnd2AddTile()
   Local $OthersideforDOuble = "_C"
   If GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
	   Local $ADDMultiMixedSleepCSV = ""
	   Local $ADDMultiMixedPointCSV = ""
	   $SideNumber = 10
	   If $MultiMixedDropPoint1forD > 0 Then
		   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($1stPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($1stPointUpperSleepforD))) & $BlankCharacters, 11)
		   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint1forD) & $BlankCharacters, 11)
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
		       $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
		       $DropPoint = "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   Else
			   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
			   $DropPoint = "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
		   EndIf
		   $UNDOLine = 1
		   If $MultiMixedDropPoint2forD > 0 Then
			   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($2ndPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($2ndPointUpperSleepforD))) & $BlankCharacters, 11)
			   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint2forD) & $BlankCharacters, 11)
			   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
				   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   Else
				   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
	    		   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
			   EndIf
			   $UNDOLine = 2
			   If $MultiMixedDropPoint3forD > 0 Then
				   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($3rdPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($3rdPointUpperSleepforD))) & $BlankCharacters, 11)
				   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint3forD) & $BlankCharacters, 11)
				   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   Else
					   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
					   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
				   EndIf
			       $UNDOLine = 3
			       If $MultiMixedDropPoint4forD > 0 Then
				       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($4thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($4thPointUpperSleepforD))) & $BlankCharacters, 11)
				       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint4forD) & $BlankCharacters, 11)
					   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   Else
						   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
						   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
					   EndIf
					   $UNDOLine = 4
				       If $MultiMixedDropPoint5forD > 0 Then
						   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($5thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($5thPointUpperSleepforD))) & $BlankCharacters, 11)
						   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint5forD) & $BlankCharacters, 11)
						   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   Else
							   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
							   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
						   EndIf
						   $UNDOLine = 5
						   If $MultiMixedDropPoint6forD > 0 Then
							   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($6thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($6thPointUpperSleepforD))) & $BlankCharacters, 11)
						       $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint6forD) & $BlankCharacters, 11)
							   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   Else
								   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
								   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
							   EndIf
							   $UNDOLine = 6
							   If $MultiMixedDropPoint7forD > 0 Then
								   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($7thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($7thPointUpperSleepforD))) & $BlankCharacters, 11)
								   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint7forD) & $BlankCharacters, 11)
								   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   Else
									   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
									   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
								   EndIf
								   $UNDOLine = 7
								   If $MultiMixedDropPoint8forD > 0 Then
									   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($8thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($8thPointUpperSleepforD))) & $BlankCharacters, 11)
									   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint8forD) & $BlankCharacters, 11)
									   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   Else
										   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
										   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
									   EndIf
									   $UNDOLine = 8
									   If $MultiMixedDropPoint9forD > 0 Then
										   $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($9thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($9thPointUpperSleepforD))) & $BlankCharacters, 11)
										   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint9forD) & $BlankCharacters, 11)
										   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   Else
											   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
											   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
										   EndIf
										   $UNDOLine = 9
										   If $MultiMixedDropPoint10forD > 0 Then
										       $ADDMultiMixedSleepCSV = StringLeft(String(Number(GUICtrlRead($10thPointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($10thPointUpperSleepforD))) & $BlankCharacters, 11)
											   $ADDMultiMixedPointCSV = StringLeft(String($MultiMixedDropPoint10forD) & $BlankCharacters, 11)
											   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint1forD &  " from " & $SideType & " and " & $OthersideforDOuble & " side with " & $AddTile & " addtile at the same time. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |I-L        |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
											   Else
												   $Comment = "1 " & $LOGName & " will drop will drop at Point : "  & $MultiMixedDropPoint2forD &  " from " & $SideType & " side with " & $AddTile & " AddTile. (1 AddTile = 1,5 Square from red line.) and then bot will sleep " & StringStripWS($ADDMultiMixedSleepCSV,8) & " ms."
												   $DropPoint = $DropPoint & @CRLF & "DROP  |L          |" & $ADDMultiMixedPointCSV & "|1          |" & $TName & "|50-70      |50-70      |" & $ADDMultiMixedSleepCSV & "|"&$Wideness&"|           |... - " & $Comment
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
   If GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforD) <> "" Then
	   Local $ADDMultiLineDelayCSV = ""
	   Local $ADDMultiLineArmySizeCSV = ""
	   Local $ADDMultiLinePointCSV = ""
	   Local $Max_Point = _Max(Number(GUICtrlRead($InputLineBeginingforD)),Number(GUICtrlRead($InputLineEndingforD)))
	   Local $Min_Point = _Min(Number(GUICtrlRead($InputLineBeginingforD)),Number(GUICtrlRead($InputLineEndingforD)))
	   $ADDMultiLineArmySizeCSV = StringLeft(String(Number(GUICtrlRead($ArmySizeinLineforD))) & $BlankCharacters, 11)
	   $ADDMultiLineDelayCSV = StringLeft(String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & $BlankCharacters, 11)
	   $ADDMultiLinePointCSV = StringLeft(String($Min_Point) & "-" & String($Max_Point) & $BlankCharacters, 11)
	   If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = "DROP  |I-L        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   Else
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from center to cornor in side " & $SideType & " with " & $AddTile & " and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = "DROP  |L          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment
		   EndIf
	   ElseIf GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Then
		   $DropPoint = @CRLF & $MakeEnter & "MAKE  |L          |LEFT-FRONT |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
		   If GUICtrlRead($DoubleMultiDropforD) = $GUI_UNCHECKED Then
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from cornor to center in side " & $SideType & " with " & $AddTile & " addtile and then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |L          |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"
		   Else
			   $DropPoint = $DropPoint & "MAKE  |I          |LEFT-BACK  |10         |2          |EXT-INT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & $DropEnter
			   $Comment = String(Number(GUICtrlRead($ArmySizeinLineforD))) & " " & $LOGName & "(s) will drop in order between point " & String($Min_Point) & "-" & String($Max_Point) & " from side " & $SideType & " and " & $OthersideforDOuble & " with " & $AddTile & " addtile and from center to cornor. Then bot will sleep " & String(Number(GUICtrlRead($InputLinePointLowerSleepforD))) & "-" & String(Number(GUICtrlRead($InputLinePointUpperSleepforD))) & "ms."
			   $DropPoint = $DropPoint & "DROP  |I-L        |" & $ADDMultiLinePointCSV & "|" & $ADDMultiLineArmySizeCSV & "|" & $TName & "|50-70      |" & $ADDMultiLineDelayCSV & "|" & $ADDMultiLineDelayCSV & "|           |           |... - " & $Comment & @CRLF
			   $DropPoint = $DropPoint & @CRLF & $MakeEnter & "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |" & @CRLF
			   $DropPoint = $DropPoint & "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"
		   EndIf
	   EndIf
   EndIf
EndFunc
