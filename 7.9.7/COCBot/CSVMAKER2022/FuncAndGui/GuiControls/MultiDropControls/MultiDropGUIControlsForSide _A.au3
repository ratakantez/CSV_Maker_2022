; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _A
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
; ===============================================================================================================================
Func OpenMultiDropforA()
	DidIdoSomethingforA()
	DidIdoSomethingforB()
	DidIdoSomethingforC()
	DidIdoSomethingforD()
	DidIdoSomethingforE()
	DidIdoSomethingforF()
	DidIdoSomethingforG()
	DidIdoSomethingforH()
	Local $yesorno
	Local $question
	Select
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side A, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side A?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case Else
		$DidIdoSomethingforA = False
		$DidIdoSomethingforB = False
		$DidIdoSomethingforC = False
		$DidIdoSomethingforD = False
		$DidIdoSomethingforE = False
		$DidIdoSomethingforF = False
		$DidIdoSomethingforG = False
		$DidIdoSomethingforH = False
		GUISetState(@SW_SHOW, $GUI_MultiDropforA_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)


  	EndSelect
 EndFunc

Func CancelMultiDropforA()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropAOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropA, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropLeftUp, $GUI_HIDE)
   If $MultiDropIsSetforA = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For A Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforA_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforA()
EndFunc

Func OkMultiDropforA()


   Local $txtforyesorno
   Local $errorInMultitouchforA
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforA) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforA)) > Number(GUICtrlRead($1stPointUpperSleepforA))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforA , Number(GUICtrlRead($1stPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforA) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforA)) > Number(GUICtrlRead($2ndPointUpperSleepforA))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforA , Number(GUICtrlRead($2ndPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforA) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforA)) > Number(GUICtrlRead($3rdPointUpperSleepforA))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforA , Number(GUICtrlRead($3rdPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforA) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforA)) > Number(GUICtrlRead($4thPointUpperSleepforA))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforA , Number(GUICtrlRead($4thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforA) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforA)) > Number(GUICtrlRead($5thPointUpperSleepforA))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforA , Number(GUICtrlRead($5thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforA) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforA)) > Number(GUICtrlRead($6thPointUpperSleepforA))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforA , Number(GUICtrlRead($6thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforA) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforA)) > Number(GUICtrlRead($7thPointUpperSleepforA))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforA , Number(GUICtrlRead($7thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforA) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforA)) > Number(GUICtrlRead($8thPointUpperSleepforA))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforA , Number(GUICtrlRead($8thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforA) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforA)) > Number(GUICtrlRead($9thPointUpperSleepforA))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforA , Number(GUICtrlRead($9thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforA) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforA)) > Number(GUICtrlRead($10thPointUpperSleepforA))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforA , Number(GUICtrlRead($10thPointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforA) = "" And GUICtrlRead($InputLineBeginingforA) = "" And GUICtrlRead($InputLineEndingforA) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforA)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforA)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforA)) > 10 Or GUICtrlRead($InputLineBeginingforA) = "" Or Number(GUICtrlRead($InputLineEndingforA)) < 1 Or Number(GUICtrlRead($InputLineEndingforA)) > 10 Or GUICtrlRead($InputLineEndingforA) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforA)) & " and " & Number(GUICtrlRead($InputLineEndingforA))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforA)) = 0 Or GUICtrlRead($ArmySizeinLineforA) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforA)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforA))-Number(GUICtrlRead($InputLineEndingforA)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforA) & " and " & GUICtrlRead($InputLineEndingforA) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforA))-Number(GUICtrlRead($InputLineEndingforA)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforA, Number(Abs(Number(GUICtrlRead($InputLineBeginingforA))-Number(GUICtrlRead($InputLineEndingforA)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforA)) > 0 And Number(GUICtrlRead($InputLineEndingforA)) < 11 And Number(GUICtrlRead($ArmySizeinLineforA)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforA))-Number(GUICtrlRead($InputLineEndingforA)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforA)) & " and " & Number(GUICtrlRead($InputLineEndingforA)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforA))-Number(GUICtrlRead($InputLineEndingforA)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforA, Number(Abs(Number(GUICtrlRead($InputLineBeginingforA))-Number(GUICtrlRead($InputLineEndingforA)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforA)) > Number(GUICtrlRead($InputLinePointUpperSleepforA))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforA) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforA) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforA = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforA = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforA)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforA , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforA , Number(GUICtrlRead($InputLinePointUpperSleepforA))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($RadioForLineforA) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforA) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_A"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforA = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforA) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforA) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforA) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforA) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforA) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
						If GUICtrlRead($ComboMultiDrop6thPointforA) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforA) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforA) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforA) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
									If GUICtrlRead($ComboMultiDrop10thPointforA) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforA = $ArmySizeforMixedDropPointforA + 1
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
		 Local $txtformultimixedLog
		 If GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforA) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforA & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forA & " (" & Number(GUICtrlRead($1stPointLowerSleepforA)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforA)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforA & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forA
			If GUICtrlRead($ComboMultiDrop2ndPointforA) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forA & " (" & Number(GUICtrlRead($2ndPointLowerSleepforA)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforA)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forA
			   If GUICtrlRead($ComboMultiDrop3rdPointforA) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forA & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforA)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforA)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forA
				  If GUICtrlRead($ComboMultiDrop4thPointforA) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forA & " ( " & Number(GUICtrlRead($4thPointLowerSleepforA)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforA)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forA
					 If GUICtrlRead($ComboMultiDrop5thPointforA) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forA & " ( " & Number(GUICtrlRead($5thPointLowerSleepforA)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforA)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forA
						If GUICtrlRead($ComboMultiDrop6thPointforA) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forA & " ( " & Number(GUICtrlRead($6thPointLowerSleepforA)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforA)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forA
						   If GUICtrlRead($ComboMultiDrop7thPointforA) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forA & " ( " & Number(GUICtrlRead($7thPointLowerSleepforA)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforA)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forA
							  If GUICtrlRead($ComboMultiDrop8thPointforA) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forA & " ( " & Number(GUICtrlRead($8thPointLowerSleepforA)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforA)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forA
								 If GUICtrlRead($ComboMultiDrop9thPointforA) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forA & " ( " & Number(GUICtrlRead($9thPointLowerSleepforA)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforA) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forA
									If GUICtrlRead($ComboMultiDrop10thPointforA) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forA & " ( " & Number(GUICtrlRead($10thPointLowerSleepforA)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforA)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forA
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
		 If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _B at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforA) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _B at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
				$MultiDropIsSetforA = 1
			    GUICtrlSetState($MultiDropA, $GUI_HIDE)
			    GUICtrlSetState($MultiDropAOn, $GUI_SHOW)
			    Local $x = 265
			    Local $y = 50
			    GUICtrlSetPos($aAddTile2, $x , $y)
			    GUICtrlSetPos($aAddTile1, $x , $y + 27)
			    GUICtrlSetPos($aAddTile0, $x , $y + 54)
			    GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			    GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			    GUICtrlSetState($aAddTile0,$GUI_SHOW)
			    GUICtrlSetState($aAddTile1,$GUI_SHOW)
			    GUICtrlSetState($aAddTile2,$GUI_SHOW)
				CheckboxDoubleforA()
			    GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			    GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			    GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			    _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			    _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			    GUISetState(@SW_HIDE, $GUI_MultiDropforA_in_function)
			    WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			    $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforA) <> "" And GUICtrlRead($InputLineBeginingforA) <> "" And GUICtrlRead($InputLineEndingforA) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforA)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforA)) & _
							 " and " & GUICtrlRead($InputLineEndingforA) & " from "
							 If GUICtrlRead($RadioCentertoCornerforA) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforA) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforA)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforA) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _B at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforA = 1
			   GUICtrlSetState($MultiDropA, $GUI_HIDE)
			   GUICtrlSetState($MultiDropAOn, $GUI_SHOW)
			   Local $x = 265
			   Local $y = 50
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   CheckboxDoubleforA()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforA) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforA)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforA)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforA) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforA) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforA)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforA)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _B at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforA_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforA()
   EnableMixedGuiforA()
   GUICtrlSetState($RadioForRandomforA, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforA, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforA, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforA, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforA, $GUI_UNCHECKED)
   CheckboxDoubleforA()
   GuiCtrlSetData($1stPointLowerSleepforA, "50")
   GuiCtrlSetData($2ndPointLowerSleepforA, "50")
   GuiCtrlSetData($3rdPointLowerSleepforA, "50")
   GuiCtrlSetData($4thPointLowerSleepforA, "50")
   GuiCtrlSetData($5thPointLowerSleepforA, "50")
   GuiCtrlSetData($6thPointLowerSleepforA, "50")
   GuiCtrlSetData($7thPointLowerSleepforA, "50")
   GuiCtrlSetData($8thPointLowerSleepforA, "50")
   GuiCtrlSetData($9thPointLowerSleepforA, "50")
   GuiCtrlSetData($10thPointLowerSleepforA, "50")
   GuiCtrlSetData($1stPointUpperSleepforA, "70")
   GuiCtrlSetData($2ndPointUpperSleepforA, "70")
   GuiCtrlSetData($3rdPointUpperSleepforA, "70")
   GuiCtrlSetData($4thPointUpperSleepforA, "70")
   GuiCtrlSetData($5thPointUpperSleepforA, "70")
   GuiCtrlSetData($6thPointUpperSleepforA, "70")
   GuiCtrlSetData($7thPointUpperSleepforA, "70")
   GuiCtrlSetData($8thPointUpperSleepforA, "70")
   GuiCtrlSetData($9thPointUpperSleepforA, "70")
   GuiCtrlSetData($10thPointUpperSleepforA, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforA)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforA)
   GuiCtrlSetData($ArmySizeinLineforA, "")
   GuiCtrlSetData($InputLinePointLowerSleepforA, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforA, "50")
   GuiCtrlSetData($InputLineBeginingforA, "")
   GuiCtrlSetData($InputLineEndingforA, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()

   DisableLineGuiforA()
   DisableUnderPoint1forA()
   DisablePoint2andBelowforA()
EndFunc

Func LogEnterforA()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforA) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforA) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforA & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forA & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforA)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforA)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforA) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forA & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforA)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforA)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforA) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forA & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforA)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforA)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforA) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forA & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforA)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforA)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforA) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forA & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforA)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforA)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforA) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forA & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforA)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforA)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforA) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forA & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforA)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforA)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforA) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forA & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforA)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforA)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforA) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forA & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforA)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforA)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforA) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forA & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforA)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforA)) & " ms. "
								 $LOGEnter =  $txtformultimixedLog
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
   If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _B at the same time with same settings."
   EndIf
   If GUICtrlRead($RadioForLineforA) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforA) <> "" And GUICtrlRead($InputLineBeginingforA) <> "" And GUICtrlRead($InputLineEndingforA) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforA)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforA)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforA)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforA) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforA) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforA)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforA)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _B at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforA) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforA) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc

Func CheckboxDoubleforA()
   If GUICtrlRead($DoubleMultiDropforA) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforA, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforA, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforA, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftUp, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforA, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforA, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforA, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftUp, $GUI_HIDE)
   EndIf
EndFunc



Func CheckComboMultiDrop1stPointforA()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforA)
	  Case 0
		 $MultiMixedDropPoint1forA = 0
		 GUICtrlSetData($1stPointLowerSleepforA, "50")
		 GUICtrlSetData($1stPointUpperSleepforA, "70")
		 DisableUnderPoint1forA()
		 DisablePoint2andBelowforA()
	  case 1
		 $MultiMixedDropPoint1forA = 1
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
      case 2
		 $MultiMixedDropPoint1forA = 2
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 3
		 $MultiMixedDropPoint1forA = 3
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 4
		 $MultiMixedDropPoint1forA = 4
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 5
		 $MultiMixedDropPoint1forA = 5
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 6
		 $MultiMixedDropPoint1forA = 6
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 7
		 $MultiMixedDropPoint1forA = 7
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 8
		 $MultiMixedDropPoint1forA = 8
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 9
		 $MultiMixedDropPoint1forA = 9
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
	  case 10
		 $MultiMixedDropPoint1forA = 10
		 EnableUnderPoint1forA()
		 EnablePoint2forA()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforA)
	  Case 0
		 $MultiMixedDropPoint2forA = 0
		 GUICtrlSetData($2ndPointLowerSleepforA, "50")
		 GUICtrlSetData($2ndPointUpperSleepforA, "70")
		 DisableUnderPoint2forA()
		 DisablePoint3andBelowforA()
	  case 1
		 $MultiMixedDropPoint2forA = 1
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 2
		 $MultiMixedDropPoint2forA = 2
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 3
		 $MultiMixedDropPoint2forA = 3
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 4
		 $MultiMixedDropPoint2forA = 4
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 5
		 $MultiMixedDropPoint2forA = 5
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 6
		 $MultiMixedDropPoint2forA = 6
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 7
		 $MultiMixedDropPoint2forA = 7
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 8
		 $MultiMixedDropPoint2forA = 8
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 9
		 $MultiMixedDropPoint2forA = 9
		 EnableUnderPoint2forA()
		 EnablePoint3forA()
	  case 10
		 $MultiMixedDropPoint2forA = 10
		 EnableUnderPoint2forA()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforA)
	  Case 0
		 $MultiMixedDropPoint3forA = 0
		 GUICtrlSetData($3rdPointLowerSleepforA, "50")
		 GUICtrlSetData($3rdPointUpperSleepforA, "70")
		 DisableUnderPoint3forA()
		 DisablePoint4andBelowforA()
	  case 1
		 $MultiMixedDropPoint3forA = 1
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 2
		 $MultiMixedDropPoint3forA = 2
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 3
		 $MultiMixedDropPoint3forA = 3
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 4
		 $MultiMixedDropPoint3forA = 4
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 5
		 $MultiMixedDropPoint3forA = 5
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 6
		 $MultiMixedDropPoint3forA = 6
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 7
		 $MultiMixedDropPoint3forA = 7
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 8
		 $MultiMixedDropPoint3forA = 8
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 9
		 $MultiMixedDropPoint3forA = 9
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
	  case 10
		 $MultiMixedDropPoint3forA = 10
		 EnableUnderPoint3forA()
		 EnablePoint4forA()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforA)
	  Case 0
		 $MultiMixedDropPoint4forA = 0
		 GUICtrlSetData($4thPointLowerSleepforA, "50")
		 GUICtrlSetData($4thPointUpperSleepforA, "70")
		 DisableUnderPoint4forA()
		 DisablePoint5andBelowforA()
	  case 1
		 $MultiMixedDropPoint4forA = 1
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 2
		 $MultiMixedDropPoint4forA = 2
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 3
		 $MultiMixedDropPoint4forA = 3
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 4
		 $MultiMixedDropPoint4forA = 4
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 5
		 $MultiMixedDropPoint4forA = 5
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 6
		 $MultiMixedDropPoint4forA = 6
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 7
		 $MultiMixedDropPoint4forA = 7
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 8
		 $MultiMixedDropPoint4forA = 8
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 9
		 $MultiMixedDropPoint4forA = 9
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
	  case 10
		 $MultiMixedDropPoint4forA = 10
		 EnableUnderPoint4forA()
		 EnablePoint5forA()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforA)
	  Case 0
		 $MultiMixedDropPoint5forA = 0
		 GUICtrlSetData($5thPointLowerSleepforA, "50")
		 GUICtrlSetData($5thPointUpperSleepforA, "70")
		 DisableUnderPoint5forA()
		 DisablePoint6andBelowforA()
	  case 1
		 $MultiMixedDropPoint5forA = 1
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 2
		 $MultiMixedDropPoint5forA = 2
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 3
		 $MultiMixedDropPoint5forA = 3
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 4
		 $MultiMixedDropPoint5forA = 4
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 5
		 $MultiMixedDropPoint5forA = 5
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 6
		 $MultiMixedDropPoint5forA = 6
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 7
		 $MultiMixedDropPoint5forA = 7
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 8
		 $MultiMixedDropPoint5forA = 8
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 9
		 $MultiMixedDropPoint5forA = 9
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
	  case 10
		 $MultiMixedDropPoint5forA = 10
		 EnableUnderPoint5forA()
		 EnablePoint6forA()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforA)
	  Case 0
		 $MultiMixedDropPoint6forA = 0
		 GUICtrlSetData($6thPointLowerSleepforA, "50")
		 GUICtrlSetData($6thPointUpperSleepforA, "70")
		 DisableUnderPoint6forA()
		 DisablePoint7andBelowforA()
	  case 1
		 $MultiMixedDropPoint6forA = 1
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 2
		 $MultiMixedDropPoint6forA = 2
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 3
		 $MultiMixedDropPoint6forA = 3
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 4
		 $MultiMixedDropPoint6forA = 4
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 5
		 $MultiMixedDropPoint6forA = 5
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 6
		 $MultiMixedDropPoint6forA = 6
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 7
		 $MultiMixedDropPoint6forA = 7
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 8
		 $MultiMixedDropPoint6forA = 8
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 9
		 $MultiMixedDropPoint6forA = 9
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
	  case 10
		 $MultiMixedDropPoint6forA = 10
		 EnableUnderPoint6forA()
		 EnablePoint7forA()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforA)
	  Case 0
		 $MultiMixedDropPoint7forA = 0
		 GUICtrlSetData($7thPointLowerSleepforA, "50")
		 GUICtrlSetData($7thPointUpperSleepforA, "70")
		 DisableUnderPoint7forA()
		 DisablePoint8andBelowforA()
	  case 1
		 $MultiMixedDropPoint7forA = 1
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 2
		 $MultiMixedDropPoint7forA = 2
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 3
		 $MultiMixedDropPoint7forA = 3
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 4
		 $MultiMixedDropPoint7forA = 4
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 5
		 $MultiMixedDropPoint7forA = 5
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 6
		 $MultiMixedDropPoint7forA = 6
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 7
		 $MultiMixedDropPoint7forA = 7
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 8
		 $MultiMixedDropPoint7forA = 8
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 9
		 $MultiMixedDropPoint7forA = 9
		 EnableUnderPoint7forA()
		 EnablePoint8forA()
	  case 10
		 $MultiMixedDropPoint7forA = 10
		 EnableUnderPoint7forA()
		 EnablePoint8forA()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforA)
	  Case 0
		 $MultiMixedDropPoint8forA = 0
		 GUICtrlSetData($8thPointLowerSleepforA, "50")
		 GUICtrlSetData($8thPointUpperSleepforA, "70")
		 DisableUnderPoint8forA()
		 DisablePoint9andBelowforA()
	  case 1
		 $MultiMixedDropPoint8forA = 1
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 2
		 $MultiMixedDropPoint8forA = 2
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 3
		 $MultiMixedDropPoint8forA = 3
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 4
		 $MultiMixedDropPoint8forA = 4
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 5
		 $MultiMixedDropPoint8forA = 5
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 6
		 $MultiMixedDropPoint8forA = 6
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 7
		 $MultiMixedDropPoint8forA = 7
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 8
		 $MultiMixedDropPoint8forA = 8
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 9
		 $MultiMixedDropPoint8forA = 9
		 EnableUnderPoint8forA()
		 EnablePoint9forA()
	  case 10
		 $MultiMixedDropPoint8forA = 10
		 EnableUnderPoint8forA()
		 EnablePoint9forA()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforA()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforA)
	  Case 0
		 $MultiMixedDropPoint9forA = 0
		 GUICtrlSetData($9thPointLowerSleepforA, "50")
		 GUICtrlSetData($9thPointUpperSleepforA, "70")
		 DisableUnderPoint9forA()
		 DisablePoint10andBelowforA()
	  case 1
		 $MultiMixedDropPoint9forA = 1
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 2
		 $MultiMixedDropPoint9forA = 2
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 3
		 $MultiMixedDropPoint9forA = 3
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 4
		 $MultiMixedDropPoint9forA = 4
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 5
		 $MultiMixedDropPoint9forA = 5
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 6
		 $MultiMixedDropPoint9forA = 6
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 7
		 $MultiMixedDropPoint9forA = 7
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 8
		 $MultiMixedDropPoint9forA = 8
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 9
		 $MultiMixedDropPoint9forA = 9
		 EnableUnderPoint9forA()
		 EnablePoint10forA()
	  case 10
		 $MultiMixedDropPoint9forA = 10
		 EnableUnderPoint9forA()
		 EnablePoint10forA()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforA()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforA)
	  Case 0
		 $MultiMixedDropPoint10forA = 0
		 GUICtrlSetData($10thPointLowerSleepforA, "50")
		 GUICtrlSetData($10thPointUpperSleepforA, "70")
		 DisableUnderPoint10forA()
	  case 1
		 $MultiMixedDropPoint10forA = 1
		 EnableUnderPoint10forA()
	  case 2
		 $MultiMixedDropPoint10forA = 2
		 EnableUnderPoint10forA()
	  case 3
		 $MultiMixedDropPoint10forA = 3
		 EnableUnderPoint10forA()
	  case 4
		 $MultiMixedDropPoint10forA = 4
		 EnableUnderPoint10forA()
	  case 5
		 $MultiMixedDropPoint10forA = 5
		 EnableUnderPoint10forA()
	  case 6
		 $MultiMixedDropPoint10forA = 6
		 EnableUnderPoint10forA()
	  case 7
		 $MultiMixedDropPoint10forA = 7
		 EnableUnderPoint10forA()
	  case 8
		 $MultiMixedDropPoint10forA = 8
		 EnableUnderPoint10forA()
	  case 9
		 $MultiMixedDropPoint10forA = 9
		 EnableUnderPoint10forA()
	  case 10
		 $MultiMixedDropPoint10forA = 10
		 EnableUnderPoint10forA()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforA()
   For $i = $ComboMultiDrop1ndPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforA()
   For $i = $ComboMultiDrop2ndPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforA()
   For $i = $ComboMultiDrop3rdPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforA()
   For $i = $ComboMultiDrop4thPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforA()
   For $i = $ComboMultiDrop5thPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforA()
   For $i = $ComboMultiDrop6thPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforA()
   For $i = $ComboMultiDrop7thPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforA()
   For $i = $ComboMultiDrop8thPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforA()
   For $i = $ComboMultiDrop9thPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forA To $Lbl10forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forA To $Lbl20forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forA To $Lbl30forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forA To $Lbl40forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforA()
   GUICtrlSetState($ComboMultiDrop10thPointforA, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforA)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforA, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforA)
   GUICtrlSetState($Lbl10forA, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forA, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforA, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforA, "50")
   GUICtrlSetState($Lbl30forA, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforA, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforA, "70")
   GUICtrlSetState($Lbl40forA, $GUI_DISABLE)
EndFunc


Func EnablePoint1forA()
   GUICtrlSetState($ComboMultiDrop1stPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforA, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint2forA()
   GUICtrlSetState($ComboMultiDrop2ndPointforA, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint3forA()
   GUICtrlSetState($ComboMultiDrop3rdPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint4forA()
   GUICtrlSetState($ComboMultiDrop4thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint5forA()
   GUICtrlSetState($ComboMultiDrop5thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint6forA()
   GUICtrlSetState($ComboMultiDrop6thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint7forA()
   GUICtrlSetState($ComboMultiDrop7thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint8forA()
   GUICtrlSetState($ComboMultiDrop8thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint9forA()
   GUICtrlSetState($ComboMultiDrop9thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforA, "70")
   EndIf
EndFunc
Func EnablePoint10forA()
   GUICtrlSetState($ComboMultiDrop10thPointforA, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forA, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforA)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforA, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforA)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforA, "70")
   EndIf
EndFunc


Func ChooseLineGuiforA()
   DisableMixedGuiforA()
   EnableLineGuiforA()
EndFunc

Func ChooseMixedGuiforA()
   DisableLineGuiforA()
   EnableMixedGuiforA()
EndFunc

Func DisableMixedGuiforA()
   For $i = $ComboMultiDrop1stPointforA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forA To $ComboMultiDrop10thPointforA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforA To $10thPointLowerSleepforA
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforA To $10thPointUpperSleepforA
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforA()
   For $i = $LblRandom1forA To $LblRandom2forA
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forA()
   DisableUnderPoint1forA()
EndFunc

Func DisableLineGuiforA()

   GUICtrlSetData($ArmySizeinLineforA, "")
   GUICtrlSetData($InputLineBeginingforA, "")
   GUICtrlSetData($InputLineEndingforA, "")
   GUICtrlSetData($InputLinePointLowerSleepforA, "50")
   GUICtrlSetData($InputLinePointUpperSleepforA, "70")
   GUICtrlSetState($RadioCentertoCornerforA, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforA, $GUI_UNCHECKED)

   For $i = $LblLine1forA To $LblLine11forA
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforA()
   For $i = $LblLine1forA To $LblLine11forA
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforA) = "" Then
	  GUICtrlSetData($ArmySizeinLineforA, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforA) = "" Then
	  GUICtrlSetData($InputLineBeginingforA, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforA) = "" Then
	  GUICtrlSetData($InputLineEndingforA, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforA) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforA, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforA) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforA, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforA, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforA, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forA()
   GUICtrlSetState($Lbl11forA,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forA,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forA()
   GUICtrlSetState($Lbl12forA,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forA,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forA()
   GUICtrlSetState($Lbl13forA,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forA,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forA()
   GUICtrlSetState($Lbl14forA,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forA,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forA()
   GUICtrlSetState($Lbl15forA,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forA,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forA()
   GUICtrlSetState($Lbl16forA,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forA,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forA()
   GUICtrlSetState($Lbl17forA,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forA,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forA()
   GUICtrlSetState($Lbl18forA,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forA,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forA()
   GUICtrlSetState($Lbl19forA,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forA,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forA,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forA()
   GUICtrlSetState($Lbl20forA,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forA,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforA,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forA,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forA()
   GUICtrlSetState($Lbl11forA,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forA,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forA()
   GUICtrlSetState($Lbl12forA,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forA,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forA()
   GUICtrlSetState($Lbl13forA,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forA,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forA()
   GUICtrlSetState($Lbl14forA,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forA,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forA()
   GUICtrlSetState($Lbl15forA,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forA,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forA()
   GUICtrlSetState($Lbl16forA,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forA,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forA()
   GUICtrlSetState($Lbl17forA,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forA,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forA()
   GUICtrlSetState($Lbl18forA,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forA,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forA()
   GUICtrlSetState($Lbl19forA,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forA,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forA,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forA()
   GUICtrlSetState($Lbl20forA,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forA,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforA,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forA,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforA()
	If GUICtrlRead($ComboMultiDrop1stPointforA) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforA) <> "" Then
		$DidIdoSomethingforA = True
	EndIf
EndFunc



