; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _F
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
Func OpenMultiDropforF()
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
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side F, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side F?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforF_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
EndFunc

Func CancelMultiDropforF()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropFOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropF, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropRightBottom, $GUI_HIDE)
   If $MultiDropIsSetforF = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For F Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforF_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforF()
EndFunc

Func OkMultiDropforF()


   Local $txtforyesorno
   Local $errorInMultitouchforF
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforF) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforF)) > Number(GUICtrlRead($1stPointUpperSleepforF))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforF , Number(GUICtrlRead($1stPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforF) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforF)) > Number(GUICtrlRead($2ndPointUpperSleepforF))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforF , Number(GUICtrlRead($2ndPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforF) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforF)) > Number(GUICtrlRead($3rdPointUpperSleepforF))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforF , Number(GUICtrlRead($3rdPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforF) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforF)) > Number(GUICtrlRead($4thPointUpperSleepforF))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforF , Number(GUICtrlRead($4thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforF) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforF)) > Number(GUICtrlRead($5thPointUpperSleepforF))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforF , Number(GUICtrlRead($5thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforF) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforF)) > Number(GUICtrlRead($6thPointUpperSleepforF))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforF , Number(GUICtrlRead($6thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforF) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforF)) > Number(GUICtrlRead($7thPointUpperSleepforF))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforF , Number(GUICtrlRead($7thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforF) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforF)) > Number(GUICtrlRead($8thPointUpperSleepforF))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforF , Number(GUICtrlRead($8thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforF) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforF)) > Number(GUICtrlRead($9thPointUpperSleepforF))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforF , Number(GUICtrlRead($9thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforF) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforF)) > Number(GUICtrlRead($10thPointUpperSleepforF))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforF , Number(GUICtrlRead($10thPointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforF) = "" And GUICtrlRead($InputLineBeginingforF) = "" And GUICtrlRead($InputLineEndingforF) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforF)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforF)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforF)) > 10 Or GUICtrlRead($InputLineBeginingforF) = "" Or Number(GUICtrlRead($InputLineEndingforF)) < 1 Or Number(GUICtrlRead($InputLineEndingforF)) > 10 Or GUICtrlRead($InputLineEndingforF) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforF)) & " and " & Number(GUICtrlRead($InputLineEndingforF))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforF)) = 0 Or GUICtrlRead($ArmySizeinLineforF) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforF)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforF))-Number(GUICtrlRead($InputLineEndingforF)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforF) & " and " & GUICtrlRead($InputLineEndingforF) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforF))-Number(GUICtrlRead($InputLineEndingforF)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforF, Number(Abs(Number(GUICtrlRead($InputLineBeginingforF))-Number(GUICtrlRead($InputLineEndingforF)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforF)) > 0 And Number(GUICtrlRead($InputLineEndingforF)) < 11 And Number(GUICtrlRead($ArmySizeinLineforF)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforF))-Number(GUICtrlRead($InputLineEndingforF)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforF)) & " and " & Number(GUICtrlRead($InputLineEndingforF)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforF))-Number(GUICtrlRead($InputLineEndingforF)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforF, Number(Abs(Number(GUICtrlRead($InputLineBeginingforF))-Number(GUICtrlRead($InputLineEndingforF)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforF)) > Number(GUICtrlRead($InputLinePointUpperSleepforF))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforF) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforF) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforF = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforF = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforF)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforF , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforF , Number(GUICtrlRead($InputLinePointUpperSleepforF))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($RadioForLineforF) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforF) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_F"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforF = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforF) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforF) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforF) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforF) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforF) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
						If GUICtrlRead($ComboMultiDrop6thPointforF) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforF) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforF) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforF) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
									If GUICtrlRead($ComboMultiDrop10thPointforF) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforF = $ArmySizeforMixedDropPointforF + 1
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
		 If GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforF) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforF & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forF & " (" & Number(GUICtrlRead($1stPointLowerSleepforF)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforF)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforF & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forF
			If GUICtrlRead($ComboMultiDrop2ndPointforF) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forF & " (" & Number(GUICtrlRead($2ndPointLowerSleepforF)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforF)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forF
			   If GUICtrlRead($ComboMultiDrop3rdPointforF) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forF & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforF)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforF)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forF
				  If GUICtrlRead($ComboMultiDrop4thPointforF) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forF & " ( " & Number(GUICtrlRead($4thPointLowerSleepforF)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforF)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forF
					 If GUICtrlRead($ComboMultiDrop5thPointforF) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forF & " ( " & Number(GUICtrlRead($5thPointLowerSleepforF)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforF)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forF
						If GUICtrlRead($ComboMultiDrop6thPointforF) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forF & " ( " & Number(GUICtrlRead($6thPointLowerSleepforF)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforF)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forF
						   If GUICtrlRead($ComboMultiDrop7thPointforF) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forF & " ( " & Number(GUICtrlRead($7thPointLowerSleepforF)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforF)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forF
							  If GUICtrlRead($ComboMultiDrop8thPointforF) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forF & " ( " & Number(GUICtrlRead($8thPointLowerSleepforF)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforF)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forF
								 If GUICtrlRead($ComboMultiDrop9thPointforF) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forF & " ( " & Number(GUICtrlRead($9thPointLowerSleepforF)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforF) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forF
									If GUICtrlRead($ComboMultiDrop10thPointforF) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forF & " ( " & Number(GUICtrlRead($10thPointLowerSleepforF)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforF)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forF
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
		 If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _E at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforF) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _E at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforF = 1
			   GUICtrlSetState($MultiDropF, $GUI_HIDE)
			   GUICtrlSetState($MultiDropFOn, $GUI_SHOW)
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
			   CheckboxDoubleforF()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforF_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforF) <> "" And GUICtrlRead($InputLineBeginingforF) <> "" And GUICtrlRead($InputLineEndingforF) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforF)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforF)) & _
							 " and " & GUICtrlRead($InputLineEndingforF) & " from "
							 If GUICtrlRead($RadioCentertoCornerforF) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforF) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforF)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforF) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _E at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforF = 1
			   GUICtrlSetState($MultiDropF, $GUI_HIDE)
			   GUICtrlSetState($MultiDropFOn, $GUI_SHOW)
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
			   CheckboxDoubleforF()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforF) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforF)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforF)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforF) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforF) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforF)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforF)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _E at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforF_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforF()
   EnableMixedGuiforF()
   GUICtrlSetState($RadioForRandomforF, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforF, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforF, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforF, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforF, $GUI_UNCHECKED)
   CheckboxDoubleforF()
   GuiCtrlSetData($1stPointLowerSleepforF, "50")
   GuiCtrlSetData($2ndPointLowerSleepforF, "50")
   GuiCtrlSetData($3rdPointLowerSleepforF, "50")
   GuiCtrlSetData($4thPointLowerSleepforF, "50")
   GuiCtrlSetData($5thPointLowerSleepforF, "50")
   GuiCtrlSetData($6thPointLowerSleepforF, "50")
   GuiCtrlSetData($7thPointLowerSleepforF, "50")
   GuiCtrlSetData($8thPointLowerSleepforF, "50")
   GuiCtrlSetData($9thPointLowerSleepforF, "50")
   GuiCtrlSetData($10thPointLowerSleepforF, "50")
   GuiCtrlSetData($1stPointUpperSleepforF, "70")
   GuiCtrlSetData($2ndPointUpperSleepforF, "70")
   GuiCtrlSetData($3rdPointUpperSleepforF, "70")
   GuiCtrlSetData($4thPointUpperSleepforF, "70")
   GuiCtrlSetData($5thPointUpperSleepforF, "70")
   GuiCtrlSetData($6thPointUpperSleepforF, "70")
   GuiCtrlSetData($7thPointUpperSleepforF, "70")
   GuiCtrlSetData($8thPointUpperSleepforF, "70")
   GuiCtrlSetData($9thPointUpperSleepforF, "70")
   GuiCtrlSetData($10thPointUpperSleepforF, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforF)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforF)
   GuiCtrlSetData($ArmySizeinLineforF, "")
   GuiCtrlSetData($InputLinePointLowerSleepforF, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforF, "50")
   GuiCtrlSetData($InputLineBeginingforF, "")
   GuiCtrlSetData($InputLineEndingforF, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforF()
   DisableUnderPoint1forF()
   DisablePoint2andBelowforF()
EndFunc

Func LogEnterforF()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforF) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforF) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforF & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forF & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforF)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforF)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforF) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forF & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforF)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforF)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforF) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forF & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforF)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforF)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforF) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forF & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforF)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforF)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforF) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forF & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforF)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforF)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforF) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forF & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforF)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforF)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforF) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forF & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforF)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforF)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforF) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forF & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforF)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforF)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforF) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forF & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforF)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforF)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforF) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forF & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforF)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforF)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _E at the same time with same settings."
   EndIf

   If GUICtrlRead($RadioForLineforF) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforF) <> "" And GUICtrlRead($InputLineBeginingforF) <> "" And GUICtrlRead($InputLineEndingforF) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforF)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforF)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforF)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforF) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforF) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforF)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforF)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _E at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforF) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforF) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc
Func CheckboxDoubleforF()
   If GUICtrlRead($DoubleMultiDropforF) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforF, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforF, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforF, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightBottom, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforF, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforF, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforF, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightBottom, $GUI_HIDE)
   EndIf
EndFunc

Func CheckComboMultiDrop1stPointforF()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforF)
	  Case 0
		 $MultiMixedDropPoint1forF = 0
		 GUICtrlSetData($1stPointLowerSleepforF, "50")
		 GUICtrlSetData($1stPointUpperSleepforF, "70")
		 DisableUnderPoint1forF()
		 DisablePoint2andBelowforF()
	  case 1
		 $MultiMixedDropPoint1forF = 1
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
      case 2
		 $MultiMixedDropPoint1forF = 2
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 3
		 $MultiMixedDropPoint1forF = 3
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 4
		 $MultiMixedDropPoint1forF = 4
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 5
		 $MultiMixedDropPoint1forF = 5
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 6
		 $MultiMixedDropPoint1forF = 6
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 7
		 $MultiMixedDropPoint1forF = 7
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 8
		 $MultiMixedDropPoint1forF = 8
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 9
		 $MultiMixedDropPoint1forF = 9
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
	  case 10
		 $MultiMixedDropPoint1forF = 10
		 EnableUnderPoint1forF()
		 EnablePoint2forF()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforF)
	  Case 0
		 $MultiMixedDropPoint2forF = 0
		 GUICtrlSetData($2ndPointLowerSleepforF, "50")
		 GUICtrlSetData($2ndPointUpperSleepforF, "70")
		 DisableUnderPoint2forF()
		 DisablePoint3andBelowforF()
	  case 1
		 $MultiMixedDropPoint2forF = 1
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 2
		 $MultiMixedDropPoint2forF = 2
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 3
		 $MultiMixedDropPoint2forF = 3
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 4
		 $MultiMixedDropPoint2forF = 4
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 5
		 $MultiMixedDropPoint2forF = 5
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 6
		 $MultiMixedDropPoint2forF = 6
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 7
		 $MultiMixedDropPoint2forF = 7
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 8
		 $MultiMixedDropPoint2forF = 8
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 9
		 $MultiMixedDropPoint2forF = 9
		 EnableUnderPoint2forF()
		 EnablePoint3forF()
	  case 10
		 $MultiMixedDropPoint2forF = 10
		 EnableUnderPoint2forF()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforF)
	  Case 0
		 $MultiMixedDropPoint3forF = 0
		 GUICtrlSetData($3rdPointLowerSleepforF, "50")
		 GUICtrlSetData($3rdPointUpperSleepforF, "70")
		 DisableUnderPoint3forF()
		 DisablePoint4andBelowforF()
	  case 1
		 $MultiMixedDropPoint3forF = 1
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 2
		 $MultiMixedDropPoint3forF = 2
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 3
		 $MultiMixedDropPoint3forF = 3
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 4
		 $MultiMixedDropPoint3forF = 4
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 5
		 $MultiMixedDropPoint3forF = 5
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 6
		 $MultiMixedDropPoint3forF = 6
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 7
		 $MultiMixedDropPoint3forF = 7
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 8
		 $MultiMixedDropPoint3forF = 8
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 9
		 $MultiMixedDropPoint3forF = 9
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
	  case 10
		 $MultiMixedDropPoint3forF = 10
		 EnableUnderPoint3forF()
		 EnablePoint4forF()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforF)
	  Case 0
		 $MultiMixedDropPoint4forF = 0
		 GUICtrlSetData($4thPointLowerSleepforF, "50")
		 GUICtrlSetData($4thPointUpperSleepforF, "70")
		 DisableUnderPoint4forF()
		 DisablePoint5andBelowforF()
	  case 1
		 $MultiMixedDropPoint4forF = 1
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 2
		 $MultiMixedDropPoint4forF = 2
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 3
		 $MultiMixedDropPoint4forF = 3
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 4
		 $MultiMixedDropPoint4forF = 4
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 5
		 $MultiMixedDropPoint4forF = 5
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 6
		 $MultiMixedDropPoint4forF = 6
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 7
		 $MultiMixedDropPoint4forF = 7
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 8
		 $MultiMixedDropPoint4forF = 8
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 9
		 $MultiMixedDropPoint4forF = 9
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
	  case 10
		 $MultiMixedDropPoint4forF = 10
		 EnableUnderPoint4forF()
		 EnablePoint5forF()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforF)
	  Case 0
		 $MultiMixedDropPoint5forF = 0
		 GUICtrlSetData($5thPointLowerSleepforF, "50")
		 GUICtrlSetData($5thPointUpperSleepforF, "70")
		 DisableUnderPoint5forF()
		 DisablePoint6andBelowforF()
	  case 1
		 $MultiMixedDropPoint5forF = 1
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 2
		 $MultiMixedDropPoint5forF = 2
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 3
		 $MultiMixedDropPoint5forF = 3
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 4
		 $MultiMixedDropPoint5forF = 4
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 5
		 $MultiMixedDropPoint5forF = 5
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 6
		 $MultiMixedDropPoint5forF = 6
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 7
		 $MultiMixedDropPoint5forF = 7
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 8
		 $MultiMixedDropPoint5forF = 8
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 9
		 $MultiMixedDropPoint5forF = 9
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
	  case 10
		 $MultiMixedDropPoint5forF = 10
		 EnableUnderPoint5forF()
		 EnablePoint6forF()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforF)
	  Case 0
		 $MultiMixedDropPoint6forF = 0
		 GUICtrlSetData($6thPointLowerSleepforF, "50")
		 GUICtrlSetData($6thPointUpperSleepforF, "70")
		 DisableUnderPoint6forF()
		 DisablePoint7andBelowforF()
	  case 1
		 $MultiMixedDropPoint6forF = 1
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 2
		 $MultiMixedDropPoint6forF = 2
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 3
		 $MultiMixedDropPoint6forF = 3
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 4
		 $MultiMixedDropPoint6forF = 4
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 5
		 $MultiMixedDropPoint6forF = 5
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 6
		 $MultiMixedDropPoint6forF = 6
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 7
		 $MultiMixedDropPoint6forF = 7
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 8
		 $MultiMixedDropPoint6forF = 8
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 9
		 $MultiMixedDropPoint6forF = 9
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
	  case 10
		 $MultiMixedDropPoint6forF = 10
		 EnableUnderPoint6forF()
		 EnablePoint7forF()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforF)
	  Case 0
		 $MultiMixedDropPoint7forF = 0
		 GUICtrlSetData($7thPointLowerSleepforF, "50")
		 GUICtrlSetData($7thPointUpperSleepforF, "70")
		 DisableUnderPoint7forF()
		 DisablePoint8andBelowforF()
	  case 1
		 $MultiMixedDropPoint7forF = 1
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 2
		 $MultiMixedDropPoint7forF = 2
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 3
		 $MultiMixedDropPoint7forF = 3
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 4
		 $MultiMixedDropPoint7forF = 4
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 5
		 $MultiMixedDropPoint7forF = 5
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 6
		 $MultiMixedDropPoint7forF = 6
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 7
		 $MultiMixedDropPoint7forF = 7
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 8
		 $MultiMixedDropPoint7forF = 8
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 9
		 $MultiMixedDropPoint7forF = 9
		 EnableUnderPoint7forF()
		 EnablePoint8forF()
	  case 10
		 $MultiMixedDropPoint7forF = 10
		 EnableUnderPoint7forF()
		 EnablePoint8forF()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforF)
	  Case 0
		 $MultiMixedDropPoint8forF = 0
		 GUICtrlSetData($8thPointLowerSleepforF, "50")
		 GUICtrlSetData($8thPointUpperSleepforF, "70")
		 DisableUnderPoint8forF()
		 DisablePoint9andBelowforF()
	  case 1
		 $MultiMixedDropPoint8forF = 1
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 2
		 $MultiMixedDropPoint8forF = 2
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 3
		 $MultiMixedDropPoint8forF = 3
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 4
		 $MultiMixedDropPoint8forF = 4
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 5
		 $MultiMixedDropPoint8forF = 5
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 6
		 $MultiMixedDropPoint8forF = 6
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 7
		 $MultiMixedDropPoint8forF = 7
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 8
		 $MultiMixedDropPoint8forF = 8
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 9
		 $MultiMixedDropPoint8forF = 9
		 EnableUnderPoint8forF()
		 EnablePoint9forF()
	  case 10
		 $MultiMixedDropPoint8forF = 10
		 EnableUnderPoint8forF()
		 EnablePoint9forF()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforF()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforF)
	  Case 0
		 $MultiMixedDropPoint9forF = 0
		 GUICtrlSetData($9thPointLowerSleepforF, "50")
		 GUICtrlSetData($9thPointUpperSleepforF, "70")
		 DisableUnderPoint9forF()
		 DisablePoint10andBelowforF()
	  case 1
		 $MultiMixedDropPoint9forF = 1
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 2
		 $MultiMixedDropPoint9forF = 2
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 3
		 $MultiMixedDropPoint9forF = 3
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 4
		 $MultiMixedDropPoint9forF = 4
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 5
		 $MultiMixedDropPoint9forF = 5
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 6
		 $MultiMixedDropPoint9forF = 6
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 7
		 $MultiMixedDropPoint9forF = 7
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 8
		 $MultiMixedDropPoint9forF = 8
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 9
		 $MultiMixedDropPoint9forF = 9
		 EnableUnderPoint9forF()
		 EnablePoint10forF()
	  case 10
		 $MultiMixedDropPoint9forF = 10
		 EnableUnderPoint9forF()
		 EnablePoint10forF()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforF()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforF)
	  Case 0
		 $MultiMixedDropPoint10forF = 0
		 GUICtrlSetData($10thPointLowerSleepforF, "50")
		 GUICtrlSetData($10thPointUpperSleepforF, "70")
		 DisableUnderPoint10forF()
	  case 1
		 $MultiMixedDropPoint10forF = 1
		 EnableUnderPoint10forF()
	  case 2
		 $MultiMixedDropPoint10forF = 2
		 EnableUnderPoint10forF()
	  case 3
		 $MultiMixedDropPoint10forF = 3
		 EnableUnderPoint10forF()
	  case 4
		 $MultiMixedDropPoint10forF = 4
		 EnableUnderPoint10forF()
	  case 5
		 $MultiMixedDropPoint10forF = 5
		 EnableUnderPoint10forF()
	  case 6
		 $MultiMixedDropPoint10forF = 6
		 EnableUnderPoint10forF()
	  case 7
		 $MultiMixedDropPoint10forF = 7
		 EnableUnderPoint10forF()
	  case 8
		 $MultiMixedDropPoint10forF = 8
		 EnableUnderPoint10forF()
	  case 9
		 $MultiMixedDropPoint10forF = 9
		 EnableUnderPoint10forF()
	  case 10
		 $MultiMixedDropPoint10forF = 10
		 EnableUnderPoint10forF()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforF()
   For $i = $ComboMultiDrop1ndPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforF()
   For $i = $ComboMultiDrop2ndPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforF()
   For $i = $ComboMultiDrop3rdPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforF()
   For $i = $ComboMultiDrop4thPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforF()
   For $i = $ComboMultiDrop5thPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforF()
   For $i = $ComboMultiDrop6thPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforF()
   For $i = $ComboMultiDrop7thPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforF()
   For $i = $ComboMultiDrop8thPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforF()
   For $i = $ComboMultiDrop9thPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forF To $Lbl10forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forF To $Lbl20forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forF To $Lbl30forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forF To $Lbl40forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforF()
   GUICtrlSetState($ComboMultiDrop10thPointforF, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforF)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforF, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforF)
   GUICtrlSetState($Lbl10forF, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forF, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforF, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforF, "50")
   GUICtrlSetState($Lbl30forF, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforF, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforF, "70")
   GUICtrlSetState($Lbl40forF, $GUI_DISABLE)
EndFunc


Func EnablePoint1forF()
   GUICtrlSetState($ComboMultiDrop1stPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforF, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint2forF()
   GUICtrlSetState($ComboMultiDrop2ndPointforF, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint3forF()
   GUICtrlSetState($ComboMultiDrop3rdPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint4forF()
   GUICtrlSetState($ComboMultiDrop4thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint5forF()
   GUICtrlSetState($ComboMultiDrop5thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint6forF()
   GUICtrlSetState($ComboMultiDrop6thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint7forF()
   GUICtrlSetState($ComboMultiDrop7thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint8forF()
   GUICtrlSetState($ComboMultiDrop8thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint9forF()
   GUICtrlSetState($ComboMultiDrop9thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforF, "70")
   EndIf
EndFunc
Func EnablePoint10forF()
   GUICtrlSetState($ComboMultiDrop10thPointforF, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forF, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforF)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforF, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforF)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforF, "70")
   EndIf
EndFunc


Func ChooseLineGuiforF()
   DisableMixedGuiforF()
   EnableLineGuiforF()
EndFunc

Func ChooseMixedGuiforF()
   DisableLineGuiforF()
   EnableMixedGuiforF()
EndFunc

Func DisableMixedGuiforF()
   For $i = $ComboMultiDrop1stPointforF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forF To $ComboMultiDrop10thPointforF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforF To $10thPointLowerSleepforF
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforF To $10thPointUpperSleepforF
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforF()
   For $i = $LblRandom1forF To $LblRandom2forF
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forF()
   DisableUnderPoint1forF()
EndFunc

Func DisableLineGuiforF()

   GUICtrlSetData($ArmySizeinLineforF, "")
   GUICtrlSetData($InputLineBeginingforF, "")
   GUICtrlSetData($InputLineEndingforF, "")
   GUICtrlSetData($InputLinePointLowerSleepforF, "50")
   GUICtrlSetData($InputLinePointUpperSleepforF, "70")
   GUICtrlSetState($RadioCentertoCornerforF, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforF, $GUI_UNCHECKED)

   For $i = $LblLine1forF To $LblLine11forF
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforF()
   For $i = $LblLine1forF To $LblLine11forF
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforF) = "" Then
	  GUICtrlSetData($ArmySizeinLineforF, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforF) = "" Then
	  GUICtrlSetData($InputLineBeginingforF, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforF) = "" Then
	  GUICtrlSetData($InputLineEndingforF, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforF) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforF, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforF) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforF, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforF, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforF, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forF()
   GUICtrlSetState($Lbl11forF,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forF,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forF()
   GUICtrlSetState($Lbl12forF,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forF,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forF()
   GUICtrlSetState($Lbl13forF,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forF,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forF()
   GUICtrlSetState($Lbl14forF,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forF,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forF()
   GUICtrlSetState($Lbl15forF,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forF,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forF()
   GUICtrlSetState($Lbl16forF,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forF,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forF()
   GUICtrlSetState($Lbl17forF,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forF,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forF()
   GUICtrlSetState($Lbl18forF,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forF,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forF()
   GUICtrlSetState($Lbl19forF,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forF,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forF,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forF()
   GUICtrlSetState($Lbl20forF,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forF,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforF,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forF,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forF()
   GUICtrlSetState($Lbl11forF,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forF,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forF()
   GUICtrlSetState($Lbl12forF,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forF,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forF()
   GUICtrlSetState($Lbl13forF,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forF,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forF()
   GUICtrlSetState($Lbl14forF,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forF,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forF()
   GUICtrlSetState($Lbl15forF,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forF,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forF()
   GUICtrlSetState($Lbl16forF,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forF,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forF()
   GUICtrlSetState($Lbl17forF,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forF,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forF()
   GUICtrlSetState($Lbl18forF,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forF,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forF()
   GUICtrlSetState($Lbl19forF,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forF,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forF,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forF()
   GUICtrlSetState($Lbl20forF,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forF,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforF,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forF,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforF()
	If GUICtrlRead($ComboMultiDrop1stPointforF) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforF) <> "" Then
		$DidIdoSomethingforF = True
	EndIf
EndFunc

