; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _E
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
Func OpenMultiDropforE()
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
	Case $DidIdoSomethingforA
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side E, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side E?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforE_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
EndFunc
Func CancelMultiDropforE()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropEOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropE, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropRightBottom, $GUI_HIDE)
   If $MultiDropIsSetforE = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For E Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforE_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforE()
EndFunc

Func OkMultiDropforE()


   Local $txtforyesorno
   Local $errorInMultitouchforE
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforE) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforE)) > Number(GUICtrlRead($1stPointUpperSleepforE))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforE , Number(GUICtrlRead($1stPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforE) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforE)) > Number(GUICtrlRead($2ndPointUpperSleepforE))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforE , Number(GUICtrlRead($2ndPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforE) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforE)) > Number(GUICtrlRead($3rdPointUpperSleepforE))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforE , Number(GUICtrlRead($3rdPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforE) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforE)) > Number(GUICtrlRead($4thPointUpperSleepforE))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforE , Number(GUICtrlRead($4thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforE) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforE)) > Number(GUICtrlRead($5thPointUpperSleepforE))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforE , Number(GUICtrlRead($5thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforE) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforE)) > Number(GUICtrlRead($6thPointUpperSleepforE))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforE , Number(GUICtrlRead($6thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforE) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforE)) > Number(GUICtrlRead($7thPointUpperSleepforE))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforE , Number(GUICtrlRead($7thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforE) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforE)) > Number(GUICtrlRead($8thPointUpperSleepforE))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforE , Number(GUICtrlRead($8thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforE) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforE)) > Number(GUICtrlRead($9thPointUpperSleepforE))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforE , Number(GUICtrlRead($9thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforE) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforE)) > Number(GUICtrlRead($10thPointUpperSleepforE))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforE , Number(GUICtrlRead($10thPointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforE) = "" And GUICtrlRead($InputLineBeginingforE) = "" And GUICtrlRead($InputLineEndingforE) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforE)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforE)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforE)) > 10 Or GUICtrlRead($InputLineBeginingforE) = "" Or Number(GUICtrlRead($InputLineEndingforE)) < 1 Or Number(GUICtrlRead($InputLineEndingforE)) > 10 Or GUICtrlRead($InputLineEndingforE) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforE)) & " and " & Number(GUICtrlRead($InputLineEndingforE))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforE)) = 0 Or GUICtrlRead($ArmySizeinLineforE) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforE)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforE))-Number(GUICtrlRead($InputLineEndingforE)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforE) & " and " & GUICtrlRead($InputLineEndingforE) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforE))-Number(GUICtrlRead($InputLineEndingforE)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforE, Number(Abs(Number(GUICtrlRead($InputLineBeginingforE))-Number(GUICtrlRead($InputLineEndingforE)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforE)) > 0 And Number(GUICtrlRead($InputLineEndingforE)) < 11 And Number(GUICtrlRead($ArmySizeinLineforE)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforE))-Number(GUICtrlRead($InputLineEndingforE)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforE)) & " and " & Number(GUICtrlRead($InputLineEndingforE)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforE))-Number(GUICtrlRead($InputLineEndingforE)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforE, Number(Abs(Number(GUICtrlRead($InputLineBeginingforE))-Number(GUICtrlRead($InputLineEndingforE)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforE)) > Number(GUICtrlRead($InputLinePointUpperSleepforE))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforE) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforE) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforE = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforE = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforE)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforE , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforE , Number(GUICtrlRead($InputLinePointUpperSleepforE))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($RadioForLineforE) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforE) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_E"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforE = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforE) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforE) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforE) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforE) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforE) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
						If GUICtrlRead($ComboMultiDrop6thPointforE) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforE) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforE) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforE) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
									If GUICtrlRead($ComboMultiDrop10thPointforE) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforE = $ArmySizeforMixedDropPointforE + 1
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
		 If GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforE) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforE & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forE & " (" & Number(GUICtrlRead($1stPointLowerSleepforE)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforE)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforE & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forE
			If GUICtrlRead($ComboMultiDrop2ndPointforE) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forE & " (" & Number(GUICtrlRead($2ndPointLowerSleepforE)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforE)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forE
			   If GUICtrlRead($ComboMultiDrop3rdPointforE) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forE & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforE)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforE)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forE
				  If GUICtrlRead($ComboMultiDrop4thPointforE) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forE & " ( " & Number(GUICtrlRead($4thPointLowerSleepforE)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforE)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forE
					 If GUICtrlRead($ComboMultiDrop5thPointforE) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forE & " ( " & Number(GUICtrlRead($5thPointLowerSleepforE)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforE)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forE
						If GUICtrlRead($ComboMultiDrop6thPointforE) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forE & " ( " & Number(GUICtrlRead($6thPointLowerSleepforE)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforE)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forE
						   If GUICtrlRead($ComboMultiDrop7thPointforE) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forE & " ( " & Number(GUICtrlRead($7thPointLowerSleepforE)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforE)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forE
							  If GUICtrlRead($ComboMultiDrop8thPointforE) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forE & " ( " & Number(GUICtrlRead($8thPointLowerSleepforE)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforE)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forE
								 If GUICtrlRead($ComboMultiDrop9thPointforE) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forE & " ( " & Number(GUICtrlRead($9thPointLowerSleepforE)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforE) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forE
									If GUICtrlRead($ComboMultiDrop10thPointforE) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forE & " ( " & Number(GUICtrlRead($10thPointLowerSleepforE)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforE)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forE
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
		 If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _F at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforE) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _F at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforE = 1
			   GUICtrlSetState($MultiDropE, $GUI_HIDE)
			   GUICtrlSetState($MultiDropEOn, $GUI_SHOW)
			   Local $x = 610
			   Local $y = 355
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   CheckboxDoubleforE()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforE_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforE) <> "" And GUICtrlRead($InputLineBeginingforE) <> "" And GUICtrlRead($InputLineEndingforE) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforE)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforE)) & _
							 " and " & GUICtrlRead($InputLineEndingforE) & " from "
							 If GUICtrlRead($RadioCentertoCornerforE) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforE) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforE)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforE) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _F at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforE = 1
			   GUICtrlSetState($MultiDropE, $GUI_HIDE)
			   GUICtrlSetState($MultiDropEOn, $GUI_SHOW)
			   Local $x = 610
			   Local $y = 355
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   CheckboxDoubleforE()
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforE) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforE)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforE)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforE) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforE) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforE)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforE)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _F at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforE_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforE()
   EnableMixedGuiforE()
   GUICtrlSetState($RadioForRandomforE, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforE, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforE, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforE, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforE, $GUI_UNCHECKED)
   CheckboxDoubleforE()
   GuiCtrlSetData($1stPointLowerSleepforE, "50")
   GuiCtrlSetData($2ndPointLowerSleepforE, "50")
   GuiCtrlSetData($3rdPointLowerSleepforE, "50")
   GuiCtrlSetData($4thPointLowerSleepforE, "50")
   GuiCtrlSetData($5thPointLowerSleepforE, "50")
   GuiCtrlSetData($6thPointLowerSleepforE, "50")
   GuiCtrlSetData($7thPointLowerSleepforE, "50")
   GuiCtrlSetData($8thPointLowerSleepforE, "50")
   GuiCtrlSetData($9thPointLowerSleepforE, "50")
   GuiCtrlSetData($10thPointLowerSleepforE, "50")
   GuiCtrlSetData($1stPointUpperSleepforE, "70")
   GuiCtrlSetData($2ndPointUpperSleepforE, "70")
   GuiCtrlSetData($3rdPointUpperSleepforE, "70")
   GuiCtrlSetData($4thPointUpperSleepforE, "70")
   GuiCtrlSetData($5thPointUpperSleepforE, "70")
   GuiCtrlSetData($6thPointUpperSleepforE, "70")
   GuiCtrlSetData($7thPointUpperSleepforE, "70")
   GuiCtrlSetData($8thPointUpperSleepforE, "70")
   GuiCtrlSetData($9thPointUpperSleepforE, "70")
   GuiCtrlSetData($10thPointUpperSleepforE, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforE)
   GuiCtrlSetData($ArmySizeinLineforE, "")
   GuiCtrlSetData($InputLinePointLowerSleepforE, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforE, "50")
   GuiCtrlSetData($InputLineBeginingforE, "")
   GuiCtrlSetData($InputLineEndingforE, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforE()
   DisableUnderPoint1forE()
   DisablePoint2andBelowforE()
EndFunc

Func LogEnterforE()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforE) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforE) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforE & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forE & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforE)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforE)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforE) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forE & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforE)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforE)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforE) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forE & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforE)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforE)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforE) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forE & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforE)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforE)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforE) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forE & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforE)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforE)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforE) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forE & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforE)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforE)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforE) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forE & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforE)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforE)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforE) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forE & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforE)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforE)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforE) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forE & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforE)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforE)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforE) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forE & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforE)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforE)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _F at the same time with same settings."
   EndIf

   If GUICtrlRead($RadioForLineforE) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforE) <> "" And GUICtrlRead($InputLineBeginingforE) <> "" And GUICtrlRead($InputLineEndingforE) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforE)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforE)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforE)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforE) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforE) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforE)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforE)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _F at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforE) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforE) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc

Func CheckboxDoubleforE()
   If GUICtrlRead($DoubleMultiDropforE) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforE, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforE, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforE, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightBottom, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforE, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforE, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforE, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightBottom, $GUI_HIDE)
   EndIf
EndFunc
Func CheckComboMultiDrop1stPointforE()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforE)
	  Case 0
		 $MultiMixedDropPoint1forE = 0
		 GUICtrlSetData($1stPointLowerSleepforE, "50")
		 GUICtrlSetData($1stPointUpperSleepforE, "70")
		 DisableUnderPoint1forE()
		 DisablePoint2andBelowforE()
	  case 1
		 $MultiMixedDropPoint1forE = 1
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
      case 2
		 $MultiMixedDropPoint1forE = 2
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 3
		 $MultiMixedDropPoint1forE = 3
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 4
		 $MultiMixedDropPoint1forE = 4
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 5
		 $MultiMixedDropPoint1forE = 5
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 6
		 $MultiMixedDropPoint1forE = 6
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 7
		 $MultiMixedDropPoint1forE = 7
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 8
		 $MultiMixedDropPoint1forE = 8
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 9
		 $MultiMixedDropPoint1forE = 9
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
	  case 10
		 $MultiMixedDropPoint1forE = 10
		 EnableUnderPoint1forE()
		 EnablePoint2forE()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforE)
	  Case 0
		 $MultiMixedDropPoint2forE = 0
		 GUICtrlSetData($2ndPointLowerSleepforE, "50")
		 GUICtrlSetData($2ndPointUpperSleepforE, "70")
		 DisableUnderPoint2forE()
		 DisablePoint3andBelowforE()
	  case 1
		 $MultiMixedDropPoint2forE = 1
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 2
		 $MultiMixedDropPoint2forE = 2
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 3
		 $MultiMixedDropPoint2forE = 3
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 4
		 $MultiMixedDropPoint2forE = 4
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 5
		 $MultiMixedDropPoint2forE = 5
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 6
		 $MultiMixedDropPoint2forE = 6
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 7
		 $MultiMixedDropPoint2forE = 7
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 8
		 $MultiMixedDropPoint2forE = 8
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 9
		 $MultiMixedDropPoint2forE = 9
		 EnableUnderPoint2forE()
		 EnablePoint3forE()
	  case 10
		 $MultiMixedDropPoint2forE = 10
		 EnableUnderPoint2forE()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforE)
	  Case 0
		 $MultiMixedDropPoint3forE = 0
		 GUICtrlSetData($3rdPointLowerSleepforE, "50")
		 GUICtrlSetData($3rdPointUpperSleepforE, "70")
		 DisableUnderPoint3forE()
		 DisablePoint4andBelowforE()
	  case 1
		 $MultiMixedDropPoint3forE = 1
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 2
		 $MultiMixedDropPoint3forE = 2
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 3
		 $MultiMixedDropPoint3forE = 3
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 4
		 $MultiMixedDropPoint3forE = 4
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 5
		 $MultiMixedDropPoint3forE = 5
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 6
		 $MultiMixedDropPoint3forE = 6
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 7
		 $MultiMixedDropPoint3forE = 7
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 8
		 $MultiMixedDropPoint3forE = 8
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 9
		 $MultiMixedDropPoint3forE = 9
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
	  case 10
		 $MultiMixedDropPoint3forE = 10
		 EnableUnderPoint3forE()
		 EnablePoint4forE()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforE)
	  Case 0
		 $MultiMixedDropPoint4forE = 0
		 GUICtrlSetData($4thPointLowerSleepforE, "50")
		 GUICtrlSetData($4thPointUpperSleepforE, "70")
		 DisableUnderPoint4forE()
		 DisablePoint5andBelowforE()
	  case 1
		 $MultiMixedDropPoint4forE = 1
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 2
		 $MultiMixedDropPoint4forE = 2
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 3
		 $MultiMixedDropPoint4forE = 3
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 4
		 $MultiMixedDropPoint4forE = 4
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 5
		 $MultiMixedDropPoint4forE = 5
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 6
		 $MultiMixedDropPoint4forE = 6
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 7
		 $MultiMixedDropPoint4forE = 7
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 8
		 $MultiMixedDropPoint4forE = 8
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 9
		 $MultiMixedDropPoint4forE = 9
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
	  case 10
		 $MultiMixedDropPoint4forE = 10
		 EnableUnderPoint4forE()
		 EnablePoint5forE()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforE)
	  Case 0
		 $MultiMixedDropPoint5forE = 0
		 GUICtrlSetData($5thPointLowerSleepforE, "50")
		 GUICtrlSetData($5thPointUpperSleepforE, "70")
		 DisableUnderPoint5forE()
		 DisablePoint6andBelowforE()
	  case 1
		 $MultiMixedDropPoint5forE = 1
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 2
		 $MultiMixedDropPoint5forE = 2
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 3
		 $MultiMixedDropPoint5forE = 3
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 4
		 $MultiMixedDropPoint5forE = 4
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 5
		 $MultiMixedDropPoint5forE = 5
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 6
		 $MultiMixedDropPoint5forE = 6
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 7
		 $MultiMixedDropPoint5forE = 7
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 8
		 $MultiMixedDropPoint5forE = 8
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 9
		 $MultiMixedDropPoint5forE = 9
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
	  case 10
		 $MultiMixedDropPoint5forE = 10
		 EnableUnderPoint5forE()
		 EnablePoint6forE()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforE)
	  Case 0
		 $MultiMixedDropPoint6forE = 0
		 GUICtrlSetData($6thPointLowerSleepforE, "50")
		 GUICtrlSetData($6thPointUpperSleepforE, "70")
		 DisableUnderPoint6forE()
		 DisablePoint7andBelowforE()
	  case 1
		 $MultiMixedDropPoint6forE = 1
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 2
		 $MultiMixedDropPoint6forE = 2
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 3
		 $MultiMixedDropPoint6forE = 3
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 4
		 $MultiMixedDropPoint6forE = 4
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 5
		 $MultiMixedDropPoint6forE = 5
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 6
		 $MultiMixedDropPoint6forE = 6
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 7
		 $MultiMixedDropPoint6forE = 7
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 8
		 $MultiMixedDropPoint6forE = 8
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 9
		 $MultiMixedDropPoint6forE = 9
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
	  case 10
		 $MultiMixedDropPoint6forE = 10
		 EnableUnderPoint6forE()
		 EnablePoint7forE()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforE)
	  Case 0
		 $MultiMixedDropPoint7forE = 0
		 GUICtrlSetData($7thPointLowerSleepforE, "50")
		 GUICtrlSetData($7thPointUpperSleepforE, "70")
		 DisableUnderPoint7forE()
		 DisablePoint8andBelowforE()
	  case 1
		 $MultiMixedDropPoint7forE = 1
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 2
		 $MultiMixedDropPoint7forE = 2
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 3
		 $MultiMixedDropPoint7forE = 3
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 4
		 $MultiMixedDropPoint7forE = 4
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 5
		 $MultiMixedDropPoint7forE = 5
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 6
		 $MultiMixedDropPoint7forE = 6
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 7
		 $MultiMixedDropPoint7forE = 7
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 8
		 $MultiMixedDropPoint7forE = 8
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 9
		 $MultiMixedDropPoint7forE = 9
		 EnableUnderPoint7forE()
		 EnablePoint8forE()
	  case 10
		 $MultiMixedDropPoint7forE = 10
		 EnableUnderPoint7forE()
		 EnablePoint8forE()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforE)
	  Case 0
		 $MultiMixedDropPoint8forE = 0
		 GUICtrlSetData($8thPointLowerSleepforE, "50")
		 GUICtrlSetData($8thPointUpperSleepforE, "70")
		 DisableUnderPoint8forE()
		 DisablePoint9andBelowforE()
	  case 1
		 $MultiMixedDropPoint8forE = 1
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 2
		 $MultiMixedDropPoint8forE = 2
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 3
		 $MultiMixedDropPoint8forE = 3
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 4
		 $MultiMixedDropPoint8forE = 4
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 5
		 $MultiMixedDropPoint8forE = 5
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 6
		 $MultiMixedDropPoint8forE = 6
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 7
		 $MultiMixedDropPoint8forE = 7
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 8
		 $MultiMixedDropPoint8forE = 8
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 9
		 $MultiMixedDropPoint8forE = 9
		 EnableUnderPoint8forE()
		 EnablePoint9forE()
	  case 10
		 $MultiMixedDropPoint8forE = 10
		 EnableUnderPoint8forE()
		 EnablePoint9forE()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforE()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforE)
	  Case 0
		 $MultiMixedDropPoint9forE = 0
		 GUICtrlSetData($9thPointLowerSleepforE, "50")
		 GUICtrlSetData($9thPointUpperSleepforE, "70")
		 DisableUnderPoint9forE()
		 DisablePoint10andBelowforE()
	  case 1
		 $MultiMixedDropPoint9forE = 1
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 2
		 $MultiMixedDropPoint9forE = 2
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 3
		 $MultiMixedDropPoint9forE = 3
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 4
		 $MultiMixedDropPoint9forE = 4
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 5
		 $MultiMixedDropPoint9forE = 5
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 6
		 $MultiMixedDropPoint9forE = 6
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 7
		 $MultiMixedDropPoint9forE = 7
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 8
		 $MultiMixedDropPoint9forE = 8
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 9
		 $MultiMixedDropPoint9forE = 9
		 EnableUnderPoint9forE()
		 EnablePoint10forE()
	  case 10
		 $MultiMixedDropPoint9forE = 10
		 EnableUnderPoint9forE()
		 EnablePoint10forE()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforE()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforE)
	  Case 0
		 $MultiMixedDropPoint10forE = 0
		 GUICtrlSetData($10thPointLowerSleepforE, "50")
		 GUICtrlSetData($10thPointUpperSleepforE, "70")
		 DisableUnderPoint10forE()
	  case 1
		 $MultiMixedDropPoint10forE = 1
		 EnableUnderPoint10forE()
	  case 2
		 $MultiMixedDropPoint10forE = 2
		 EnableUnderPoint10forE()
	  case 3
		 $MultiMixedDropPoint10forE = 3
		 EnableUnderPoint10forE()
	  case 4
		 $MultiMixedDropPoint10forE = 4
		 EnableUnderPoint10forE()
	  case 5
		 $MultiMixedDropPoint10forE = 5
		 EnableUnderPoint10forE()
	  case 6
		 $MultiMixedDropPoint10forE = 6
		 EnableUnderPoint10forE()
	  case 7
		 $MultiMixedDropPoint10forE = 7
		 EnableUnderPoint10forE()
	  case 8
		 $MultiMixedDropPoint10forE = 8
		 EnableUnderPoint10forE()
	  case 9
		 $MultiMixedDropPoint10forE = 9
		 EnableUnderPoint10forE()
	  case 10
		 $MultiMixedDropPoint10forE = 10
		 EnableUnderPoint10forE()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforE()
   For $i = $ComboMultiDrop1ndPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforE()
   For $i = $ComboMultiDrop2ndPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforE()
   For $i = $ComboMultiDrop3rdPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforE()
   For $i = $ComboMultiDrop4thPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforE()
   For $i = $ComboMultiDrop5thPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforE()
   For $i = $ComboMultiDrop6thPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforE()
   For $i = $ComboMultiDrop7thPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforE()
   For $i = $ComboMultiDrop8thPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforE()
   For $i = $ComboMultiDrop9thPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forE To $Lbl10forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forE To $Lbl20forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forE To $Lbl30forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forE To $Lbl40forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforE()
   GUICtrlSetState($ComboMultiDrop10thPointforE, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforE)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforE, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforE)
   GUICtrlSetState($Lbl10forE, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forE, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforE, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforE, "50")
   GUICtrlSetState($Lbl30forE, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforE, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforE, "70")
   GUICtrlSetState($Lbl40forE, $GUI_DISABLE)
EndFunc


Func EnablePoint1forE()
   GUICtrlSetState($ComboMultiDrop1stPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforE, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint2forE()
   GUICtrlSetState($ComboMultiDrop2ndPointforE, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint3forE()
   GUICtrlSetState($ComboMultiDrop3rdPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint4forE()
   GUICtrlSetState($ComboMultiDrop4thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint5forE()
   GUICtrlSetState($ComboMultiDrop5thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint6forE()
   GUICtrlSetState($ComboMultiDrop6thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint7forE()
   GUICtrlSetState($ComboMultiDrop7thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint8forE()
   GUICtrlSetState($ComboMultiDrop8thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint9forE()
   GUICtrlSetState($ComboMultiDrop9thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforE, "70")
   EndIf
EndFunc
Func EnablePoint10forE()
   GUICtrlSetState($ComboMultiDrop10thPointforE, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forE, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforE)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforE, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforE)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforE, "70")
   EndIf
EndFunc


Func ChooseLineGuiforE()
   DisableMixedGuiforE()
   EnableLineGuiforE()
EndFunc

Func ChooseMixedGuiforE()
   DisableLineGuiforE()
   EnableMixedGuiforE()
EndFunc

Func DisableMixedGuiforE()
   For $i = $ComboMultiDrop1stPointforE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forE To $ComboMultiDrop10thPointforE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforE To $10thPointLowerSleepforE
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforE To $10thPointUpperSleepforE
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforE()
   For $i = $LblRandom1forE To $LblRandom2forE
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forE()
   DisableUnderPoint1forE()
EndFunc

Func DisableLineGuiforE()

   GUICtrlSetData($ArmySizeinLineforE, "")
   GUICtrlSetData($InputLineBeginingforE, "")
   GUICtrlSetData($InputLineEndingforE, "")
   GUICtrlSetData($InputLinePointLowerSleepforE, "50")
   GUICtrlSetData($InputLinePointUpperSleepforE, "70")
   GUICtrlSetState($RadioCentertoCornerforE, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforE, $GUI_UNCHECKED)

   For $i = $LblLine1forE To $LblLine11forE
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforE()
   For $i = $LblLine1forE To $LblLine11forE
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforE) = "" Then
	  GUICtrlSetData($ArmySizeinLineforE, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforE) = "" Then
	  GUICtrlSetData($InputLineBeginingforE, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforE) = "" Then
	  GUICtrlSetData($InputLineEndingforE, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforE) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforE, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforE) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforE, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforE, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforE, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forE()
   GUICtrlSetState($Lbl11forE,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forE,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forE()
   GUICtrlSetState($Lbl12forE,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forE,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forE()
   GUICtrlSetState($Lbl13forE,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forE,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forE()
   GUICtrlSetState($Lbl14forE,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forE,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forE()
   GUICtrlSetState($Lbl15forE,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forE,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forE()
   GUICtrlSetState($Lbl16forE,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forE,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forE()
   GUICtrlSetState($Lbl17forE,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forE,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forE()
   GUICtrlSetState($Lbl18forE,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forE,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forE()
   GUICtrlSetState($Lbl19forE,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forE,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forE,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forE()
   GUICtrlSetState($Lbl20forE,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forE,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforE,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forE,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forE()
   GUICtrlSetState($Lbl11forE,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forE,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forE()
   GUICtrlSetState($Lbl12forE,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forE,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forE()
   GUICtrlSetState($Lbl13forE,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forE,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forE()
   GUICtrlSetState($Lbl14forE,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forE,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forE()
   GUICtrlSetState($Lbl15forE,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forE,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forE()
   GUICtrlSetState($Lbl16forE,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forE,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forE()
   GUICtrlSetState($Lbl17forE,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forE,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forE()
   GUICtrlSetState($Lbl18forE,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forE,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forE()
   GUICtrlSetState($Lbl19forE,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forE,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forE,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forE()
   GUICtrlSetState($Lbl20forE,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forE,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforE,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forE,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforE()
	If GUICtrlRead($ComboMultiDrop1stPointforE) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforE) <> "" Then
		$DidIdoSomethingforE = True
	EndIf
EndFunc

