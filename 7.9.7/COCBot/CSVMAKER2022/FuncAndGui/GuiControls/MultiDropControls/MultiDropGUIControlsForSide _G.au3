; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _G
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
Func OpenMultiDropforG()
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
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side G, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side G?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforG_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
EndFunc

Func CancelMultiDropforG()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropGOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropG, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropRightUp, $GUI_HIDE)
   If $MultiDropIsSetforG = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For G Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforG_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforG()
EndFunc

Func OkMultiDropforG()


   Local $txtforyesorno
   Local $errorInMultitouchforG
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforG)) > Number(GUICtrlRead($1stPointUpperSleepforG))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforG , Number(GUICtrlRead($1stPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforG) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforG)) > Number(GUICtrlRead($2ndPointUpperSleepforG))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforG , Number(GUICtrlRead($2ndPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforG) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforG)) > Number(GUICtrlRead($3rdPointUpperSleepforG))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforG , Number(GUICtrlRead($3rdPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforG) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforG)) > Number(GUICtrlRead($4thPointUpperSleepforG))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforG , Number(GUICtrlRead($4thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforG) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforG)) > Number(GUICtrlRead($5thPointUpperSleepforG))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforG , Number(GUICtrlRead($5thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforG) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforG)) > Number(GUICtrlRead($6thPointUpperSleepforG))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforG , Number(GUICtrlRead($6thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforG) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforG)) > Number(GUICtrlRead($7thPointUpperSleepforG))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforG , Number(GUICtrlRead($7thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforG) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforG)) > Number(GUICtrlRead($8thPointUpperSleepforG))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforG , Number(GUICtrlRead($8thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforG) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforG)) > Number(GUICtrlRead($9thPointUpperSleepforG))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforG , Number(GUICtrlRead($9thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforG) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforG)) > Number(GUICtrlRead($10thPointUpperSleepforG))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforG , Number(GUICtrlRead($10thPointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforG) = "" And GUICtrlRead($InputLineBeginingforG) = "" And GUICtrlRead($InputLineEndingforG) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforG)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforG)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforG)) > 10 Or GUICtrlRead($InputLineBeginingforG) = "" Or Number(GUICtrlRead($InputLineEndingforG)) < 1 Or Number(GUICtrlRead($InputLineEndingforG)) > 10 Or GUICtrlRead($InputLineEndingforG) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforG)) & " and " & Number(GUICtrlRead($InputLineEndingforG))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforG)) = 0 Or GUICtrlRead($ArmySizeinLineforG) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforG)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforG))-Number(GUICtrlRead($InputLineEndingforG)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforG) & " and " & GUICtrlRead($InputLineEndingforG) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforG))-Number(GUICtrlRead($InputLineEndingforG)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforG, Number(Abs(Number(GUICtrlRead($InputLineBeginingforG))-Number(GUICtrlRead($InputLineEndingforG)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforG)) > 0 And Number(GUICtrlRead($InputLineEndingforG)) < 11 And Number(GUICtrlRead($ArmySizeinLineforG)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforG))-Number(GUICtrlRead($InputLineEndingforG)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforG)) & " and " & Number(GUICtrlRead($InputLineEndingforG)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforG))-Number(GUICtrlRead($InputLineEndingforG)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforG, Number(Abs(Number(GUICtrlRead($InputLineBeginingforG))-Number(GUICtrlRead($InputLineEndingforG)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforG)) > Number(GUICtrlRead($InputLinePointUpperSleepforG))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforG) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforG) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforG = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforG = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforG)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforG , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforG , Number(GUICtrlRead($InputLinePointUpperSleepforG))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($RadioForLineforG) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_G"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforG = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforG) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforG) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforG) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforG) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
						If GUICtrlRead($ComboMultiDrop6thPointforG) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforG) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforG) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforG) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
									If GUICtrlRead($ComboMultiDrop10thPointforG) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforG = $ArmySizeforMixedDropPointforG + 1
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
		 If GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforG & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forG & " (" & Number(GUICtrlRead($1stPointLowerSleepforG)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforG)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforG & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forG
			If GUICtrlRead($ComboMultiDrop2ndPointforG) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forG & " (" & Number(GUICtrlRead($2ndPointLowerSleepforG)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforG)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forG
			   If GUICtrlRead($ComboMultiDrop3rdPointforG) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forG & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforG)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforG)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forG
				  If GUICtrlRead($ComboMultiDrop4thPointforG) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forG & " ( " & Number(GUICtrlRead($4thPointLowerSleepforG)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforG)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forG
					 If GUICtrlRead($ComboMultiDrop5thPointforG) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forG & " ( " & Number(GUICtrlRead($5thPointLowerSleepforG)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforG)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forG
						If GUICtrlRead($ComboMultiDrop6thPointforG) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forG & " ( " & Number(GUICtrlRead($6thPointLowerSleepforG)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforG)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forG
						   If GUICtrlRead($ComboMultiDrop7thPointforG) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forG & " ( " & Number(GUICtrlRead($7thPointLowerSleepforG)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforG)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forG
							  If GUICtrlRead($ComboMultiDrop8thPointforG) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forG & " ( " & Number(GUICtrlRead($8thPointLowerSleepforG)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforG)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forG
								 If GUICtrlRead($ComboMultiDrop9thPointforG) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forG & " ( " & Number(GUICtrlRead($9thPointLowerSleepforG)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforG) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forG
									If GUICtrlRead($ComboMultiDrop10thPointforG) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forG & " ( " & Number(GUICtrlRead($10thPointLowerSleepforG)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforG)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forG
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
		 If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _H at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _H at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforG = 1
			   GUICtrlSetState($MultiDropG, $GUI_HIDE)
			   GUICtrlSetState($MultiDropGOn, $GUI_SHOW)
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
			   CheckboxDoubleforG()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforG_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforG) <> "" And GUICtrlRead($InputLineBeginingforG) <> "" And GUICtrlRead($InputLineEndingforG) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforG)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforG)) & _
							 " and " & GUICtrlRead($InputLineEndingforG) & " from "
							 If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforG)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforG) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _H at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforG = 1
			   GUICtrlSetState($MultiDropG, $GUI_HIDE)
			   GUICtrlSetState($MultiDropGOn, $GUI_SHOW)
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
			   CheckboxDoubleforG()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforG) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforG)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforG)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforG)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforG)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _H at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforG_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforG()
   EnableMixedGuiforG()
   GUICtrlSetState($RadioForRandomforG, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforG, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforG, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforG, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforG, $GUI_UNCHECKED)
   CheckboxDoubleforG()
   GuiCtrlSetData($1stPointLowerSleepforG, "50")
   GuiCtrlSetData($2ndPointLowerSleepforG, "50")
   GuiCtrlSetData($3rdPointLowerSleepforG, "50")
   GuiCtrlSetData($4thPointLowerSleepforG, "50")
   GuiCtrlSetData($5thPointLowerSleepforG, "50")
   GuiCtrlSetData($6thPointLowerSleepforG, "50")
   GuiCtrlSetData($7thPointLowerSleepforG, "50")
   GuiCtrlSetData($8thPointLowerSleepforG, "50")
   GuiCtrlSetData($9thPointLowerSleepforG, "50")
   GuiCtrlSetData($10thPointLowerSleepforG, "50")
   GuiCtrlSetData($1stPointUpperSleepforG, "70")
   GuiCtrlSetData($2ndPointUpperSleepforG, "70")
   GuiCtrlSetData($3rdPointUpperSleepforG, "70")
   GuiCtrlSetData($4thPointUpperSleepforG, "70")
   GuiCtrlSetData($5thPointUpperSleepforG, "70")
   GuiCtrlSetData($6thPointUpperSleepforG, "70")
   GuiCtrlSetData($7thPointUpperSleepforG, "70")
   GuiCtrlSetData($8thPointUpperSleepforG, "70")
   GuiCtrlSetData($9thPointUpperSleepforG, "70")
   GuiCtrlSetData($10thPointUpperSleepforG, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforG)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforG)
   GuiCtrlSetData($ArmySizeinLineforG, "")
   GuiCtrlSetData($InputLinePointLowerSleepforG, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforG, "50")
   GuiCtrlSetData($InputLineBeginingforG, "")
   GuiCtrlSetData($InputLineEndingforG, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforG()
   DisableUnderPoint1forG()
   DisablePoint2andBelowforG()
EndFunc

Func LogEnterforG()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforG) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforG & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forG & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforG)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforG)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforG) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forG & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforG)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforG)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforG) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forG & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforG)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforG)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforG) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forG & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforG)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforG)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforG) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forG & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforG)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforG)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforG) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forG & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforG)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforG)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforG) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forG & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforG)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforG)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforG) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forG & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforG)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforG)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforG) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forG & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforG)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforG)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforG) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forG & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforG)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforG)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _H at the same time with same settings."
   EndIf

   If GUICtrlRead($RadioForLineforG) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforG) <> "" And GUICtrlRead($InputLineBeginingforG) <> "" And GUICtrlRead($InputLineEndingforG) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforG)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforG)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforG)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforG)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforG)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _H at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforG) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc
Func CheckboxDoubleforG()
   If GUICtrlRead($DoubleMultiDropforG) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforG, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforG, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforG, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightUp, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforG, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforG, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforG, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropRightUp, $GUI_HIDE)
   EndIf
EndFunc

Func CheckComboMultiDrop1stPointforG()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforG)
	  Case 0
		 $MultiMixedDropPoint1forG = 0
		 GUICtrlSetData($1stPointLowerSleepforG, "50")
		 GUICtrlSetData($1stPointUpperSleepforG, "70")
		 DisableUnderPoint1forG()
		 DisablePoint2andBelowforG()
	  case 1
		 $MultiMixedDropPoint1forG = 1
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
      case 2
		 $MultiMixedDropPoint1forG = 2
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 3
		 $MultiMixedDropPoint1forG = 3
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 4
		 $MultiMixedDropPoint1forG = 4
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 5
		 $MultiMixedDropPoint1forG = 5
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 6
		 $MultiMixedDropPoint1forG = 6
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 7
		 $MultiMixedDropPoint1forG = 7
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 8
		 $MultiMixedDropPoint1forG = 8
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 9
		 $MultiMixedDropPoint1forG = 9
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
	  case 10
		 $MultiMixedDropPoint1forG = 10
		 EnableUnderPoint1forG()
		 EnablePoint2forG()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforG)
	  Case 0
		 $MultiMixedDropPoint2forG = 0
		 GUICtrlSetData($2ndPointLowerSleepforG, "50")
		 GUICtrlSetData($2ndPointUpperSleepforG, "70")
		 DisableUnderPoint2forG()
		 DisablePoint3andBelowforG()
	  case 1
		 $MultiMixedDropPoint2forG = 1
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 2
		 $MultiMixedDropPoint2forG = 2
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 3
		 $MultiMixedDropPoint2forG = 3
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 4
		 $MultiMixedDropPoint2forG = 4
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 5
		 $MultiMixedDropPoint2forG = 5
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 6
		 $MultiMixedDropPoint2forG = 6
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 7
		 $MultiMixedDropPoint2forG = 7
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 8
		 $MultiMixedDropPoint2forG = 8
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 9
		 $MultiMixedDropPoint2forG = 9
		 EnableUnderPoint2forG()
		 EnablePoint3forG()
	  case 10
		 $MultiMixedDropPoint2forG = 10
		 EnableUnderPoint2forG()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforG)
	  Case 0
		 $MultiMixedDropPoint3forG = 0
		 GUICtrlSetData($3rdPointLowerSleepforG, "50")
		 GUICtrlSetData($3rdPointUpperSleepforG, "70")
		 DisableUnderPoint3forG()
		 DisablePoint4andBelowforG()
	  case 1
		 $MultiMixedDropPoint3forG = 1
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 2
		 $MultiMixedDropPoint3forG = 2
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 3
		 $MultiMixedDropPoint3forG = 3
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 4
		 $MultiMixedDropPoint3forG = 4
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 5
		 $MultiMixedDropPoint3forG = 5
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 6
		 $MultiMixedDropPoint3forG = 6
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 7
		 $MultiMixedDropPoint3forG = 7
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 8
		 $MultiMixedDropPoint3forG = 8
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 9
		 $MultiMixedDropPoint3forG = 9
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
	  case 10
		 $MultiMixedDropPoint3forG = 10
		 EnableUnderPoint3forG()
		 EnablePoint4forG()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforG)
	  Case 0
		 $MultiMixedDropPoint4forG = 0
		 GUICtrlSetData($4thPointLowerSleepforG, "50")
		 GUICtrlSetData($4thPointUpperSleepforG, "70")
		 DisableUnderPoint4forG()
		 DisablePoint5andBelowforG()
	  case 1
		 $MultiMixedDropPoint4forG = 1
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 2
		 $MultiMixedDropPoint4forG = 2
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 3
		 $MultiMixedDropPoint4forG = 3
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 4
		 $MultiMixedDropPoint4forG = 4
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 5
		 $MultiMixedDropPoint4forG = 5
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 6
		 $MultiMixedDropPoint4forG = 6
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 7
		 $MultiMixedDropPoint4forG = 7
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 8
		 $MultiMixedDropPoint4forG = 8
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 9
		 $MultiMixedDropPoint4forG = 9
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
	  case 10
		 $MultiMixedDropPoint4forG = 10
		 EnableUnderPoint4forG()
		 EnablePoint5forG()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforG)
	  Case 0
		 $MultiMixedDropPoint5forG = 0
		 GUICtrlSetData($5thPointLowerSleepforG, "50")
		 GUICtrlSetData($5thPointUpperSleepforG, "70")
		 DisableUnderPoint5forG()
		 DisablePoint6andBelowforG()
	  case 1
		 $MultiMixedDropPoint5forG = 1
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 2
		 $MultiMixedDropPoint5forG = 2
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 3
		 $MultiMixedDropPoint5forG = 3
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 4
		 $MultiMixedDropPoint5forG = 4
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 5
		 $MultiMixedDropPoint5forG = 5
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 6
		 $MultiMixedDropPoint5forG = 6
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 7
		 $MultiMixedDropPoint5forG = 7
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 8
		 $MultiMixedDropPoint5forG = 8
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 9
		 $MultiMixedDropPoint5forG = 9
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
	  case 10
		 $MultiMixedDropPoint5forG = 10
		 EnableUnderPoint5forG()
		 EnablePoint6forG()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforG)
	  Case 0
		 $MultiMixedDropPoint6forG = 0
		 GUICtrlSetData($6thPointLowerSleepforG, "50")
		 GUICtrlSetData($6thPointUpperSleepforG, "70")
		 DisableUnderPoint6forG()
		 DisablePoint7andBelowforG()
	  case 1
		 $MultiMixedDropPoint6forG = 1
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 2
		 $MultiMixedDropPoint6forG = 2
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 3
		 $MultiMixedDropPoint6forG = 3
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 4
		 $MultiMixedDropPoint6forG = 4
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 5
		 $MultiMixedDropPoint6forG = 5
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 6
		 $MultiMixedDropPoint6forG = 6
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 7
		 $MultiMixedDropPoint6forG = 7
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 8
		 $MultiMixedDropPoint6forG = 8
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 9
		 $MultiMixedDropPoint6forG = 9
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
	  case 10
		 $MultiMixedDropPoint6forG = 10
		 EnableUnderPoint6forG()
		 EnablePoint7forG()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforG)
	  Case 0
		 $MultiMixedDropPoint7forG = 0
		 GUICtrlSetData($7thPointLowerSleepforG, "50")
		 GUICtrlSetData($7thPointUpperSleepforG, "70")
		 DisableUnderPoint7forG()
		 DisablePoint8andBelowforG()
	  case 1
		 $MultiMixedDropPoint7forG = 1
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 2
		 $MultiMixedDropPoint7forG = 2
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 3
		 $MultiMixedDropPoint7forG = 3
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 4
		 $MultiMixedDropPoint7forG = 4
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 5
		 $MultiMixedDropPoint7forG = 5
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 6
		 $MultiMixedDropPoint7forG = 6
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 7
		 $MultiMixedDropPoint7forG = 7
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 8
		 $MultiMixedDropPoint7forG = 8
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 9
		 $MultiMixedDropPoint7forG = 9
		 EnableUnderPoint7forG()
		 EnablePoint8forG()
	  case 10
		 $MultiMixedDropPoint7forG = 10
		 EnableUnderPoint7forG()
		 EnablePoint8forG()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforG)
	  Case 0
		 $MultiMixedDropPoint8forG = 0
		 GUICtrlSetData($8thPointLowerSleepforG, "50")
		 GUICtrlSetData($8thPointUpperSleepforG, "70")
		 DisableUnderPoint8forG()
		 DisablePoint9andBelowforG()
	  case 1
		 $MultiMixedDropPoint8forG = 1
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 2
		 $MultiMixedDropPoint8forG = 2
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 3
		 $MultiMixedDropPoint8forG = 3
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 4
		 $MultiMixedDropPoint8forG = 4
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 5
		 $MultiMixedDropPoint8forG = 5
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 6
		 $MultiMixedDropPoint8forG = 6
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 7
		 $MultiMixedDropPoint8forG = 7
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 8
		 $MultiMixedDropPoint8forG = 8
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 9
		 $MultiMixedDropPoint8forG = 9
		 EnableUnderPoint8forG()
		 EnablePoint9forG()
	  case 10
		 $MultiMixedDropPoint8forG = 10
		 EnableUnderPoint8forG()
		 EnablePoint9forG()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforG()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforG)
	  Case 0
		 $MultiMixedDropPoint9forG = 0
		 GUICtrlSetData($9thPointLowerSleepforG, "50")
		 GUICtrlSetData($9thPointUpperSleepforG, "70")
		 DisableUnderPoint9forG()
		 DisablePoint10andBelowforG()
	  case 1
		 $MultiMixedDropPoint9forG = 1
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 2
		 $MultiMixedDropPoint9forG = 2
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 3
		 $MultiMixedDropPoint9forG = 3
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 4
		 $MultiMixedDropPoint9forG = 4
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 5
		 $MultiMixedDropPoint9forG = 5
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 6
		 $MultiMixedDropPoint9forG = 6
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 7
		 $MultiMixedDropPoint9forG = 7
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 8
		 $MultiMixedDropPoint9forG = 8
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 9
		 $MultiMixedDropPoint9forG = 9
		 EnableUnderPoint9forG()
		 EnablePoint10forG()
	  case 10
		 $MultiMixedDropPoint9forG = 10
		 EnableUnderPoint9forG()
		 EnablePoint10forG()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforG()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforG)
	  Case 0
		 $MultiMixedDropPoint10forG = 0
		 GUICtrlSetData($10thPointLowerSleepforG, "50")
		 GUICtrlSetData($10thPointUpperSleepforG, "70")
		 DisableUnderPoint10forG()
	  case 1
		 $MultiMixedDropPoint10forG = 1
		 EnableUnderPoint10forG()
	  case 2
		 $MultiMixedDropPoint10forG = 2
		 EnableUnderPoint10forG()
	  case 3
		 $MultiMixedDropPoint10forG = 3
		 EnableUnderPoint10forG()
	  case 4
		 $MultiMixedDropPoint10forG = 4
		 EnableUnderPoint10forG()
	  case 5
		 $MultiMixedDropPoint10forG = 5
		 EnableUnderPoint10forG()
	  case 6
		 $MultiMixedDropPoint10forG = 6
		 EnableUnderPoint10forG()
	  case 7
		 $MultiMixedDropPoint10forG = 7
		 EnableUnderPoint10forG()
	  case 8
		 $MultiMixedDropPoint10forG = 8
		 EnableUnderPoint10forG()
	  case 9
		 $MultiMixedDropPoint10forG = 9
		 EnableUnderPoint10forG()
	  case 10
		 $MultiMixedDropPoint10forG = 10
		 EnableUnderPoint10forG()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforG()
   For $i = $ComboMultiDrop1ndPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforG()
   For $i = $ComboMultiDrop2ndPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforG()
   For $i = $ComboMultiDrop3rdPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforG()
   For $i = $ComboMultiDrop4thPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforG()
   For $i = $ComboMultiDrop5thPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforG()
   For $i = $ComboMultiDrop6thPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforG()
   For $i = $ComboMultiDrop7thPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforG()
   For $i = $ComboMultiDrop8thPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforG()
   For $i = $ComboMultiDrop9thPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forG To $Lbl10forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forG To $Lbl20forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forG To $Lbl30forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forG To $Lbl40forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforG()
   GUICtrlSetState($ComboMultiDrop10thPointforG, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforG)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforG, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforG)
   GUICtrlSetState($Lbl10forG, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forG, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforG, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforG, "50")
   GUICtrlSetState($Lbl30forG, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforG, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforG, "70")
   GUICtrlSetState($Lbl40forG, $GUI_DISABLE)
EndFunc


Func EnablePoint1forG()
   GUICtrlSetState($ComboMultiDrop1stPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforG, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint2forG()
   GUICtrlSetState($ComboMultiDrop2ndPointforG, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint3forG()
   GUICtrlSetState($ComboMultiDrop3rdPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint4forG()
   GUICtrlSetState($ComboMultiDrop4thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint5forG()
   GUICtrlSetState($ComboMultiDrop5thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint6forG()
   GUICtrlSetState($ComboMultiDrop6thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint7forG()
   GUICtrlSetState($ComboMultiDrop7thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint8forG()
   GUICtrlSetState($ComboMultiDrop8thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint9forG()
   GUICtrlSetState($ComboMultiDrop9thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforG, "70")
   EndIf
EndFunc
Func EnablePoint10forG()
   GUICtrlSetState($ComboMultiDrop10thPointforG, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forG, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforG)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforG, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforG)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforG, "70")
   EndIf
EndFunc


Func ChooseLineGuiforG()
   DisableMixedGuiforG()
   EnableLineGuiforG()
EndFunc

Func ChooseMixedGuiforG()
   DisableLineGuiforG()
   EnableMixedGuiforG()
EndFunc

Func DisableMixedGuiforG()
   For $i = $ComboMultiDrop1stPointforG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forG To $ComboMultiDrop10thPointforG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforG To $10thPointLowerSleepforG
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforG To $10thPointUpperSleepforG
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforG()
   For $i = $LblRandom1forG To $LblRandom2forG
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forG()
   DisableUnderPoint1forG()
EndFunc

Func DisableLineGuiforG()

   GUICtrlSetData($ArmySizeinLineforG, "")
   GUICtrlSetData($InputLineBeginingforG, "")
   GUICtrlSetData($InputLineEndingforG, "")
   GUICtrlSetData($InputLinePointLowerSleepforG, "50")
   GUICtrlSetData($InputLinePointUpperSleepforG, "70")
   GUICtrlSetState($RadioCentertoCornerforG, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforG, $GUI_UNCHECKED)

   For $i = $LblLine1forG To $LblLine11forG
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforG()
   For $i = $LblLine1forG To $LblLine11forG
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforG) = "" Then
	  GUICtrlSetData($ArmySizeinLineforG, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforG) = "" Then
	  GUICtrlSetData($InputLineBeginingforG, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforG) = "" Then
	  GUICtrlSetData($InputLineEndingforG, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforG) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforG, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforG) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforG, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforG, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforG, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forG()
   GUICtrlSetState($Lbl11forG,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forG,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forG()
   GUICtrlSetState($Lbl12forG,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forG,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forG()
   GUICtrlSetState($Lbl13forG,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forG,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forG()
   GUICtrlSetState($Lbl14forG,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forG,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forG()
   GUICtrlSetState($Lbl15forG,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forG,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forG()
   GUICtrlSetState($Lbl16forG,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forG,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forG()
   GUICtrlSetState($Lbl17forG,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forG,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forG()
   GUICtrlSetState($Lbl18forG,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forG,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forG()
   GUICtrlSetState($Lbl19forG,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forG,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forG,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forG()
   GUICtrlSetState($Lbl20forG,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forG,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforG,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forG,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forG()
   GUICtrlSetState($Lbl11forG,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forG,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forG()
   GUICtrlSetState($Lbl12forG,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forG,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forG()
   GUICtrlSetState($Lbl13forG,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forG,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forG()
   GUICtrlSetState($Lbl14forG,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forG,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forG()
   GUICtrlSetState($Lbl15forG,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forG,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forG()
   GUICtrlSetState($Lbl16forG,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forG,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forG()
   GUICtrlSetState($Lbl17forG,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forG,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forG()
   GUICtrlSetState($Lbl18forG,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forG,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forG()
   GUICtrlSetState($Lbl19forG,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forG,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forG,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forG()
   GUICtrlSetState($Lbl20forG,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forG,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforG,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forG,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforG()
	If GUICtrlRead($ComboMultiDrop1stPointforG) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforG) <> "" Then
		$DidIdoSomethingforG = True
	EndIf
EndFunc

