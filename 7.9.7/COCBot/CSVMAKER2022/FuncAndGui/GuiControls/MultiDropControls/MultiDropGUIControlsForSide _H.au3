; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _H
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
Func OpenMultiDropforH()
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
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side H, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side H?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforH_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
EndFunc

Func CancelMultiDropforH()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropHOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropH, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropRightUp, $GUI_HIDE)
   If $MultiDropIsSetforH = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For H Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforH_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforH()
EndFunc

Func OkMultiDropforH()


   Local $txtforyesorno
   Local $errorInMultitouchforH
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforH)) > Number(GUICtrlRead($1stPointUpperSleepforH))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforH , Number(GUICtrlRead($1stPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforH) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforH)) > Number(GUICtrlRead($2ndPointUpperSleepforH))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforH , Number(GUICtrlRead($2ndPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforH) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforH)) > Number(GUICtrlRead($3rdPointUpperSleepforH))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforH , Number(GUICtrlRead($3rdPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforH) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforH)) > Number(GUICtrlRead($4thPointUpperSleepforH))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforH , Number(GUICtrlRead($4thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforH) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforH)) > Number(GUICtrlRead($5thPointUpperSleepforH))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforH , Number(GUICtrlRead($5thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforH) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforH)) > Number(GUICtrlRead($6thPointUpperSleepforH))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforH , Number(GUICtrlRead($6thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforH) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforH)) > Number(GUICtrlRead($7thPointUpperSleepforH))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforH , Number(GUICtrlRead($7thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforH) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforH)) > Number(GUICtrlRead($8thPointUpperSleepforH))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforH , Number(GUICtrlRead($8thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforH) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforH)) > Number(GUICtrlRead($9thPointUpperSleepforH))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforH , Number(GUICtrlRead($9thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforH) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforH)) > Number(GUICtrlRead($10thPointUpperSleepforH))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforH , Number(GUICtrlRead($10thPointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforH) = "" And GUICtrlRead($InputLineBeginingforH) = "" And GUICtrlRead($InputLineEndingforH) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforH)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforH)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforH)) > 10 Or GUICtrlRead($InputLineBeginingforH) = "" Or Number(GUICtrlRead($InputLineEndingforH)) < 1 Or Number(GUICtrlRead($InputLineEndingforH)) > 10 Or GUICtrlRead($InputLineEndingforH) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforH)) & " and " & Number(GUICtrlRead($InputLineEndingforH))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforH)) = 0 Or GUICtrlRead($ArmySizeinLineforH) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforH)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforH))-Number(GUICtrlRead($InputLineEndingforH)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforH) & " and " & GUICtrlRead($InputLineEndingforH) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforH))-Number(GUICtrlRead($InputLineEndingforH)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforH, Number(Abs(Number(GUICtrlRead($InputLineBeginingforH))-Number(GUICtrlRead($InputLineEndingforH)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforH)) > 0 And Number(GUICtrlRead($InputLineEndingforH)) < 11 And Number(GUICtrlRead($ArmySizeinLineforH)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforH))-Number(GUICtrlRead($InputLineEndingforH)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforH)) & " and " & Number(GUICtrlRead($InputLineEndingforH)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforH))-Number(GUICtrlRead($InputLineEndingforH)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforH, Number(Abs(Number(GUICtrlRead($InputLineBeginingforH))-Number(GUICtrlRead($InputLineEndingforH)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforH)) > Number(GUICtrlRead($InputLinePointUpperSleepforH))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforH) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforH) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforH = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforH = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforH)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforH , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforH , Number(GUICtrlRead($InputLinePointUpperSleepforH))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($RadioForLineforH) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_H"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforH = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforH) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforH) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforH) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforH) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
						If GUICtrlRead($ComboMultiDrop6thPointforH) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforH) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforH) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforH) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
									If GUICtrlRead($ComboMultiDrop10thPointforH) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforH = $ArmySizeforMixedDropPointforH + 1
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
		 If GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforH & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forH & " (" & Number(GUICtrlRead($1stPointLowerSleepforH)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforH)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforH & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forH
			If GUICtrlRead($ComboMultiDrop2ndPointforH) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forH & " (" & Number(GUICtrlRead($2ndPointLowerSleepforH)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforH)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forH
			   If GUICtrlRead($ComboMultiDrop3rdPointforH) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forH & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforH)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforH)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forH
				  If GUICtrlRead($ComboMultiDrop4thPointforH) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forH & " ( " & Number(GUICtrlRead($4thPointLowerSleepforH)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforH)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forH
					 If GUICtrlRead($ComboMultiDrop5thPointforH) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forH & " ( " & Number(GUICtrlRead($5thPointLowerSleepforH)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforH)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forH
						If GUICtrlRead($ComboMultiDrop6thPointforH) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forH & " ( " & Number(GUICtrlRead($6thPointLowerSleepforH)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforH)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forH
						   If GUICtrlRead($ComboMultiDrop7thPointforH) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forH & " ( " & Number(GUICtrlRead($7thPointLowerSleepforH)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforH)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forH
							  If GUICtrlRead($ComboMultiDrop8thPointforH) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forH & " ( " & Number(GUICtrlRead($8thPointLowerSleepforH)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforH)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forH
								 If GUICtrlRead($ComboMultiDrop9thPointforH) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forH & " ( " & Number(GUICtrlRead($9thPointLowerSleepforH)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforH) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forH
									If GUICtrlRead($ComboMultiDrop10thPointforH) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forH & " ( " & Number(GUICtrlRead($10thPointLowerSleepforH)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforH)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forH
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
		 If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _G at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _H at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforH = 1
			   GUICtrlSetState($MultiDropH, $GUI_HIDE)
			   GUICtrlSetState($MultiDropHOn, $GUI_SHOW)
			   Local $x = 610
			   Local $y = 50
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   CheckboxDoubleforH()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforH_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforH) <> "" And GUICtrlRead($InputLineBeginingforH) <> "" And GUICtrlRead($InputLineEndingforH) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforH)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforH)) & _
							 " and " & GUICtrlRead($InputLineEndingforH) & " from "
							 If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforH)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforH) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _G at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforH = 1
			   GUICtrlSetState($MultiDropH, $GUI_HIDE)
			   GUICtrlSetState($MultiDropHOn, $GUI_SHOW)
			   Local $x = 610
			   Local $y = 50
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   CheckboxDoubleforH()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforH) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforH)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforH)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforH)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforH)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _G at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforH_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforH()
   EnableMixedGuiforH()
   GUICtrlSetState($RadioForRandomforH, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforH, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforH, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforH, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforH, $GUI_UNCHECKED)
   CheckboxDoubleforH()
   GuiCtrlSetData($1stPointLowerSleepforH, "50")
   GuiCtrlSetData($2ndPointLowerSleepforH, "50")
   GuiCtrlSetData($3rdPointLowerSleepforH, "50")
   GuiCtrlSetData($4thPointLowerSleepforH, "50")
   GuiCtrlSetData($5thPointLowerSleepforH, "50")
   GuiCtrlSetData($6thPointLowerSleepforH, "50")
   GuiCtrlSetData($7thPointLowerSleepforH, "50")
   GuiCtrlSetData($8thPointLowerSleepforH, "50")
   GuiCtrlSetData($9thPointLowerSleepforH, "50")
   GuiCtrlSetData($10thPointLowerSleepforH, "50")
   GuiCtrlSetData($1stPointUpperSleepforH, "70")
   GuiCtrlSetData($2ndPointUpperSleepforH, "70")
   GuiCtrlSetData($3rdPointUpperSleepforH, "70")
   GuiCtrlSetData($4thPointUpperSleepforH, "70")
   GuiCtrlSetData($5thPointUpperSleepforH, "70")
   GuiCtrlSetData($6thPointUpperSleepforH, "70")
   GuiCtrlSetData($7thPointUpperSleepforH, "70")
   GuiCtrlSetData($8thPointUpperSleepforH, "70")
   GuiCtrlSetData($9thPointUpperSleepforH, "70")
   GuiCtrlSetData($10thPointUpperSleepforH, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforH)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforH)
   GuiCtrlSetData($ArmySizeinLineforH, "")
   GuiCtrlSetData($InputLinePointLowerSleepforH, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforH, "50")
   GuiCtrlSetData($InputLineBeginingforH, "")
   GuiCtrlSetData($InputLineEndingforH, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforH()
   DisableUnderPoint1forH()
   DisablePoint2andBelowforH()
EndFunc

Func LogEnterforH()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforH) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforH & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forH & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforH)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforH)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforH) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forH & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforH)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforH)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforH) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forH & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforH)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforH)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforH) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forH & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforH)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforH)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforH) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forH & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforH)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforH)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforH) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forH & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforH)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforH)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforH) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forH & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforH)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforH)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforH) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forH & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforH)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforH)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforH) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forH & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforH)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforH)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforH) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forH & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforH)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforH)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _G at the same time with same settings."
   EndIf


   If GUICtrlRead($RadioForLineforH) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforH) <> "" And GUICtrlRead($InputLineBeginingforH) <> "" And GUICtrlRead($InputLineEndingforH) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforH)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforH)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforH)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforH)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforH)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _G at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforH) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc
Func CheckboxDoubleforH()
   If GUICtrlRead($DoubleMultiDropforH) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforH, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforH, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforH, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightUp, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforH, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforH, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforH, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightUp, $GUI_HIDE)
   EndIf
EndFunc

Func CheckComboMultiDrop1stPointforH()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforH)
	  Case 0
		 $MultiMixedDropPoint1forH = 0
		 GUICtrlSetData($1stPointLowerSleepforH, "50")
		 GUICtrlSetData($1stPointUpperSleepforH, "70")
		 DisableUnderPoint1forH()
		 DisablePoint2andBelowforH()
	  case 1
		 $MultiMixedDropPoint1forH = 1
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
      case 2
		 $MultiMixedDropPoint1forH = 2
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 3
		 $MultiMixedDropPoint1forH = 3
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 4
		 $MultiMixedDropPoint1forH = 4
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 5
		 $MultiMixedDropPoint1forH = 5
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 6
		 $MultiMixedDropPoint1forH = 6
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 7
		 $MultiMixedDropPoint1forH = 7
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 8
		 $MultiMixedDropPoint1forH = 8
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 9
		 $MultiMixedDropPoint1forH = 9
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
	  case 10
		 $MultiMixedDropPoint1forH = 10
		 EnableUnderPoint1forH()
		 EnablePoint2forH()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforH)
	  Case 0
		 $MultiMixedDropPoint2forH = 0
		 GUICtrlSetData($2ndPointLowerSleepforH, "50")
		 GUICtrlSetData($2ndPointUpperSleepforH, "70")
		 DisableUnderPoint2forH()
		 DisablePoint3andBelowforH()
	  case 1
		 $MultiMixedDropPoint2forH = 1
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 2
		 $MultiMixedDropPoint2forH = 2
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 3
		 $MultiMixedDropPoint2forH = 3
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 4
		 $MultiMixedDropPoint2forH = 4
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 5
		 $MultiMixedDropPoint2forH = 5
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 6
		 $MultiMixedDropPoint2forH = 6
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 7
		 $MultiMixedDropPoint2forH = 7
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 8
		 $MultiMixedDropPoint2forH = 8
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 9
		 $MultiMixedDropPoint2forH = 9
		 EnableUnderPoint2forH()
		 EnablePoint3forH()
	  case 10
		 $MultiMixedDropPoint2forH = 10
		 EnableUnderPoint2forH()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforH)
	  Case 0
		 $MultiMixedDropPoint3forH = 0
		 GUICtrlSetData($3rdPointLowerSleepforH, "50")
		 GUICtrlSetData($3rdPointUpperSleepforH, "70")
		 DisableUnderPoint3forH()
		 DisablePoint4andBelowforH()
	  case 1
		 $MultiMixedDropPoint3forH = 1
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 2
		 $MultiMixedDropPoint3forH = 2
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 3
		 $MultiMixedDropPoint3forH = 3
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 4
		 $MultiMixedDropPoint3forH = 4
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 5
		 $MultiMixedDropPoint3forH = 5
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 6
		 $MultiMixedDropPoint3forH = 6
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 7
		 $MultiMixedDropPoint3forH = 7
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 8
		 $MultiMixedDropPoint3forH = 8
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 9
		 $MultiMixedDropPoint3forH = 9
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
	  case 10
		 $MultiMixedDropPoint3forH = 10
		 EnableUnderPoint3forH()
		 EnablePoint4forH()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforH)
	  Case 0
		 $MultiMixedDropPoint4forH = 0
		 GUICtrlSetData($4thPointLowerSleepforH, "50")
		 GUICtrlSetData($4thPointUpperSleepforH, "70")
		 DisableUnderPoint4forH()
		 DisablePoint5andBelowforH()
	  case 1
		 $MultiMixedDropPoint4forH = 1
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 2
		 $MultiMixedDropPoint4forH = 2
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 3
		 $MultiMixedDropPoint4forH = 3
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 4
		 $MultiMixedDropPoint4forH = 4
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 5
		 $MultiMixedDropPoint4forH = 5
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 6
		 $MultiMixedDropPoint4forH = 6
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 7
		 $MultiMixedDropPoint4forH = 7
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 8
		 $MultiMixedDropPoint4forH = 8
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 9
		 $MultiMixedDropPoint4forH = 9
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
	  case 10
		 $MultiMixedDropPoint4forH = 10
		 EnableUnderPoint4forH()
		 EnablePoint5forH()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforH)
	  Case 0
		 $MultiMixedDropPoint5forH = 0
		 GUICtrlSetData($5thPointLowerSleepforH, "50")
		 GUICtrlSetData($5thPointUpperSleepforH, "70")
		 DisableUnderPoint5forH()
		 DisablePoint6andBelowforH()
	  case 1
		 $MultiMixedDropPoint5forH = 1
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 2
		 $MultiMixedDropPoint5forH = 2
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 3
		 $MultiMixedDropPoint5forH = 3
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 4
		 $MultiMixedDropPoint5forH = 4
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 5
		 $MultiMixedDropPoint5forH = 5
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 6
		 $MultiMixedDropPoint5forH = 6
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 7
		 $MultiMixedDropPoint5forH = 7
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 8
		 $MultiMixedDropPoint5forH = 8
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 9
		 $MultiMixedDropPoint5forH = 9
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
	  case 10
		 $MultiMixedDropPoint5forH = 10
		 EnableUnderPoint5forH()
		 EnablePoint6forH()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforH)
	  Case 0
		 $MultiMixedDropPoint6forH = 0
		 GUICtrlSetData($6thPointLowerSleepforH, "50")
		 GUICtrlSetData($6thPointUpperSleepforH, "70")
		 DisableUnderPoint6forH()
		 DisablePoint7andBelowforH()
	  case 1
		 $MultiMixedDropPoint6forH = 1
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 2
		 $MultiMixedDropPoint6forH = 2
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 3
		 $MultiMixedDropPoint6forH = 3
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 4
		 $MultiMixedDropPoint6forH = 4
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 5
		 $MultiMixedDropPoint6forH = 5
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 6
		 $MultiMixedDropPoint6forH = 6
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 7
		 $MultiMixedDropPoint6forH = 7
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 8
		 $MultiMixedDropPoint6forH = 8
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 9
		 $MultiMixedDropPoint6forH = 9
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
	  case 10
		 $MultiMixedDropPoint6forH = 10
		 EnableUnderPoint6forH()
		 EnablePoint7forH()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforH)
	  Case 0
		 $MultiMixedDropPoint7forH = 0
		 GUICtrlSetData($7thPointLowerSleepforH, "50")
		 GUICtrlSetData($7thPointUpperSleepforH, "70")
		 DisableUnderPoint7forH()
		 DisablePoint8andBelowforH()
	  case 1
		 $MultiMixedDropPoint7forH = 1
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 2
		 $MultiMixedDropPoint7forH = 2
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 3
		 $MultiMixedDropPoint7forH = 3
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 4
		 $MultiMixedDropPoint7forH = 4
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 5
		 $MultiMixedDropPoint7forH = 5
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 6
		 $MultiMixedDropPoint7forH = 6
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 7
		 $MultiMixedDropPoint7forH = 7
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 8
		 $MultiMixedDropPoint7forH = 8
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 9
		 $MultiMixedDropPoint7forH = 9
		 EnableUnderPoint7forH()
		 EnablePoint8forH()
	  case 10
		 $MultiMixedDropPoint7forH = 10
		 EnableUnderPoint7forH()
		 EnablePoint8forH()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforH)
	  Case 0
		 $MultiMixedDropPoint8forH = 0
		 GUICtrlSetData($8thPointLowerSleepforH, "50")
		 GUICtrlSetData($8thPointUpperSleepforH, "70")
		 DisableUnderPoint8forH()
		 DisablePoint9andBelowforH()
	  case 1
		 $MultiMixedDropPoint8forH = 1
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 2
		 $MultiMixedDropPoint8forH = 2
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 3
		 $MultiMixedDropPoint8forH = 3
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 4
		 $MultiMixedDropPoint8forH = 4
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 5
		 $MultiMixedDropPoint8forH = 5
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 6
		 $MultiMixedDropPoint8forH = 6
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 7
		 $MultiMixedDropPoint8forH = 7
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 8
		 $MultiMixedDropPoint8forH = 8
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 9
		 $MultiMixedDropPoint8forH = 9
		 EnableUnderPoint8forH()
		 EnablePoint9forH()
	  case 10
		 $MultiMixedDropPoint8forH = 10
		 EnableUnderPoint8forH()
		 EnablePoint9forH()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforH()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforH)
	  Case 0
		 $MultiMixedDropPoint9forH = 0
		 GUICtrlSetData($9thPointLowerSleepforH, "50")
		 GUICtrlSetData($9thPointUpperSleepforH, "70")
		 DisableUnderPoint9forH()
		 DisablePoint10andBelowforH()
	  case 1
		 $MultiMixedDropPoint9forH = 1
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 2
		 $MultiMixedDropPoint9forH = 2
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 3
		 $MultiMixedDropPoint9forH = 3
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 4
		 $MultiMixedDropPoint9forH = 4
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 5
		 $MultiMixedDropPoint9forH = 5
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 6
		 $MultiMixedDropPoint9forH = 6
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 7
		 $MultiMixedDropPoint9forH = 7
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 8
		 $MultiMixedDropPoint9forH = 8
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 9
		 $MultiMixedDropPoint9forH = 9
		 EnableUnderPoint9forH()
		 EnablePoint10forH()
	  case 10
		 $MultiMixedDropPoint9forH = 10
		 EnableUnderPoint9forH()
		 EnablePoint10forH()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforH()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforH)
	  Case 0
		 $MultiMixedDropPoint10forH = 0
		 GUICtrlSetData($10thPointLowerSleepforH, "50")
		 GUICtrlSetData($10thPointUpperSleepforH, "70")
		 DisableUnderPoint10forH()
	  case 1
		 $MultiMixedDropPoint10forH = 1
		 EnableUnderPoint10forH()
	  case 2
		 $MultiMixedDropPoint10forH = 2
		 EnableUnderPoint10forH()
	  case 3
		 $MultiMixedDropPoint10forH = 3
		 EnableUnderPoint10forH()
	  case 4
		 $MultiMixedDropPoint10forH = 4
		 EnableUnderPoint10forH()
	  case 5
		 $MultiMixedDropPoint10forH = 5
		 EnableUnderPoint10forH()
	  case 6
		 $MultiMixedDropPoint10forH = 6
		 EnableUnderPoint10forH()
	  case 7
		 $MultiMixedDropPoint10forH = 7
		 EnableUnderPoint10forH()
	  case 8
		 $MultiMixedDropPoint10forH = 8
		 EnableUnderPoint10forH()
	  case 9
		 $MultiMixedDropPoint10forH = 9
		 EnableUnderPoint10forH()
	  case 10
		 $MultiMixedDropPoint10forH = 10
		 EnableUnderPoint10forH()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforH()
   For $i = $ComboMultiDrop1ndPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforH()
   For $i = $ComboMultiDrop2ndPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforH()
   For $i = $ComboMultiDrop3rdPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforH()
   For $i = $ComboMultiDrop4thPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforH()
   For $i = $ComboMultiDrop5thPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforH()
   For $i = $ComboMultiDrop6thPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforH()
   For $i = $ComboMultiDrop7thPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforH()
   For $i = $ComboMultiDrop8thPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforH()
   For $i = $ComboMultiDrop9thPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forH To $Lbl10forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forH To $Lbl20forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forH To $Lbl30forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forH To $Lbl40forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforH()
   GUICtrlSetState($ComboMultiDrop10thPointforH, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforH)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforH, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforH)
   GUICtrlSetState($Lbl10forH, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forH, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforH, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforH, "50")
   GUICtrlSetState($Lbl30forH, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforH, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforH, "70")
   GUICtrlSetState($Lbl40forH, $GUI_DISABLE)
EndFunc


Func EnablePoint1forH()
   GUICtrlSetState($ComboMultiDrop1stPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforH, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint2forH()
   GUICtrlSetState($ComboMultiDrop2ndPointforH, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint3forH()
   GUICtrlSetState($ComboMultiDrop3rdPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint4forH()
   GUICtrlSetState($ComboMultiDrop4thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint5forH()
   GUICtrlSetState($ComboMultiDrop5thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint6forH()
   GUICtrlSetState($ComboMultiDrop6thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint7forH()
   GUICtrlSetState($ComboMultiDrop7thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint8forH()
   GUICtrlSetState($ComboMultiDrop8thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint9forH()
   GUICtrlSetState($ComboMultiDrop9thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforH, "70")
   EndIf
EndFunc
Func EnablePoint10forH()
   GUICtrlSetState($ComboMultiDrop10thPointforH, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forH, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforH)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforH, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforH)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforH, "70")
   EndIf
EndFunc


Func ChooseLineGuiforH()
   DisableMixedGuiforH()
   EnableLineGuiforH()
EndFunc

Func ChooseMixedGuiforH()
   DisableLineGuiforH()
   EnableMixedGuiforH()
EndFunc

Func DisableMixedGuiforH()
   For $i = $ComboMultiDrop1stPointforH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forH To $ComboMultiDrop10thPointforH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforH To $10thPointLowerSleepforH
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforH To $10thPointUpperSleepforH
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforH()
   For $i = $LblRandom1forH To $LblRandom2forH
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forH()
   DisableUnderPoint1forH()
EndFunc

Func DisableLineGuiforH()

   GUICtrlSetData($ArmySizeinLineforH, "")
   GUICtrlSetData($InputLineBeginingforH, "")
   GUICtrlSetData($InputLineEndingforH, "")
   GUICtrlSetData($InputLinePointLowerSleepforH, "50")
   GUICtrlSetData($InputLinePointUpperSleepforH, "70")
   GUICtrlSetState($RadioCentertoCornerforH, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforH, $GUI_UNCHECKED)

   For $i = $LblLine1forH To $LblLine11forH
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforH()
   For $i = $LblLine1forH To $LblLine11forH
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforH) = "" Then
	  GUICtrlSetData($ArmySizeinLineforH, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforH) = "" Then
	  GUICtrlSetData($InputLineBeginingforH, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforH) = "" Then
	  GUICtrlSetData($InputLineEndingforH, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforH) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforH, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforH) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforH, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforH, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforH, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forH()
   GUICtrlSetState($Lbl11forH,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forH,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forH()
   GUICtrlSetState($Lbl12forH,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forH,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forH()
   GUICtrlSetState($Lbl13forH,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forH,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forH()
   GUICtrlSetState($Lbl14forH,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forH,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forH()
   GUICtrlSetState($Lbl15forH,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forH,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forH()
   GUICtrlSetState($Lbl16forH,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forH,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forH()
   GUICtrlSetState($Lbl17forH,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forH,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forH()
   GUICtrlSetState($Lbl18forH,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forH,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forH()
   GUICtrlSetState($Lbl19forH,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forH,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forH,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forH()
   GUICtrlSetState($Lbl20forH,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forH,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforH,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forH,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forH()
   GUICtrlSetState($Lbl11forH,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forH,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forH()
   GUICtrlSetState($Lbl12forH,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forH,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forH()
   GUICtrlSetState($Lbl13forH,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forH,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forH()
   GUICtrlSetState($Lbl14forH,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forH,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forH()
   GUICtrlSetState($Lbl15forH,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forH,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forH()
   GUICtrlSetState($Lbl16forH,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forH,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forH()
   GUICtrlSetState($Lbl17forH,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forH,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forH()
   GUICtrlSetState($Lbl18forH,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forH,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forH()
   GUICtrlSetState($Lbl19forH,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forH,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forH,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forH()
   GUICtrlSetState($Lbl20forH,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forH,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforH,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forH,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforH()
	If GUICtrlRead($ComboMultiDrop1stPointforH) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforH) <> "" Then
		$DidIdoSomethingforH = True
	EndIf
EndFunc

