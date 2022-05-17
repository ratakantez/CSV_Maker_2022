; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _C
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
Func OpenMultiDropforC()
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
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side C, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side C?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforC_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
 EndFunc


Func CancelMultiDropforC()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropCOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropC, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropLeftBottom, $GUI_HIDE)
   If $MultiDropIsSetforC = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For C Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforC_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforC()
EndFunc

Func OkMultiDropforC()


   Local $txtforyesorno
   Local $errorInMultitouchforC
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforC)) > Number(GUICtrlRead($1stPointUpperSleepforC))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforC , Number(GUICtrlRead($1stPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforC) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforC)) > Number(GUICtrlRead($2ndPointUpperSleepforC))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforC , Number(GUICtrlRead($2ndPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforC) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforC)) > Number(GUICtrlRead($3rdPointUpperSleepforC))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforC , Number(GUICtrlRead($3rdPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforC) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforC)) > Number(GUICtrlRead($4thPointUpperSleepforC))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforC , Number(GUICtrlRead($4thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforC) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforC)) > Number(GUICtrlRead($5thPointUpperSleepforC))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforC , Number(GUICtrlRead($5thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforC) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforC)) > Number(GUICtrlRead($6thPointUpperSleepforC))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforC , Number(GUICtrlRead($6thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforC) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforC)) > Number(GUICtrlRead($7thPointUpperSleepforC))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforC , Number(GUICtrlRead($7thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforC) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforC)) > Number(GUICtrlRead($8thPointUpperSleepforC))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforC , Number(GUICtrlRead($8thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforC) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforC)) > Number(GUICtrlRead($9thPointUpperSleepforC))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforC , Number(GUICtrlRead($9thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforC) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforC)) > Number(GUICtrlRead($10thPointUpperSleepforC))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforC , Number(GUICtrlRead($10thPointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforC) = "" And GUICtrlRead($InputLineBeginingforC) = "" And GUICtrlRead($InputLineEndingforC) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforC)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforC)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforC)) > 10 Or GUICtrlRead($InputLineBeginingforC) = "" Or Number(GUICtrlRead($InputLineEndingforC)) < 1 Or Number(GUICtrlRead($InputLineEndingforC)) > 10 Or GUICtrlRead($InputLineEndingforC) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforC)) & " and " & Number(GUICtrlRead($InputLineEndingforC))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforC)) = 0 Or GUICtrlRead($ArmySizeinLineforC) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforC)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforC))-Number(GUICtrlRead($InputLineEndingforC)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforC) & " and " & GUICtrlRead($InputLineEndingforC) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforC))-Number(GUICtrlRead($InputLineEndingforC)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforC, Number(Abs(Number(GUICtrlRead($InputLineBeginingforC))-Number(GUICtrlRead($InputLineEndingforC)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforC)) > 0 And Number(GUICtrlRead($InputLineEndingforC)) < 11 And Number(GUICtrlRead($ArmySizeinLineforC)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforC))-Number(GUICtrlRead($InputLineEndingforC)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforC)) & " and " & Number(GUICtrlRead($InputLineEndingforC)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforC))-Number(GUICtrlRead($InputLineEndingforC)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforC, Number(Abs(Number(GUICtrlRead($InputLineBeginingforC))-Number(GUICtrlRead($InputLineEndingforC)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforC)) > Number(GUICtrlRead($InputLinePointUpperSleepforC))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforC) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforC) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforC = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforC = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforC)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforC , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforC , Number(GUICtrlRead($InputLinePointUpperSleepforC))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($RadioForLineforC) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_C"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforC = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforC) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforC) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforC) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforC) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
						If GUICtrlRead($ComboMultiDrop6thPointforC) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforC) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforC) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforC) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
									If GUICtrlRead($ComboMultiDrop10thPointforC) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforC = $ArmySizeforMixedDropPointforC + 1
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
		 If GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforC & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forC & " (" & Number(GUICtrlRead($1stPointLowerSleepforC)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforC)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforC & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forC
			If GUICtrlRead($ComboMultiDrop2ndPointforC) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forC & " (" & Number(GUICtrlRead($2ndPointLowerSleepforC)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforC)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forC
			   If GUICtrlRead($ComboMultiDrop3rdPointforC) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forC & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforC)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforC)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forC
				  If GUICtrlRead($ComboMultiDrop4thPointforC) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forC & " ( " & Number(GUICtrlRead($4thPointLowerSleepforC)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforC)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forC
					 If GUICtrlRead($ComboMultiDrop5thPointforC) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forC & " ( " & Number(GUICtrlRead($5thPointLowerSleepforC)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforC)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forC
						If GUICtrlRead($ComboMultiDrop6thPointforC) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forC & " ( " & Number(GUICtrlRead($6thPointLowerSleepforC)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforC)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forC
						   If GUICtrlRead($ComboMultiDrop7thPointforC) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forC & " ( " & Number(GUICtrlRead($7thPointLowerSleepforC)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforC)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forC
							  If GUICtrlRead($ComboMultiDrop8thPointforC) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forC & " ( " & Number(GUICtrlRead($8thPointLowerSleepforC)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforC)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forC
								 If GUICtrlRead($ComboMultiDrop9thPointforC) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forC & " ( " & Number(GUICtrlRead($9thPointLowerSleepforC)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforC) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forC
									If GUICtrlRead($ComboMultiDrop10thPointforC) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forC & " ( " & Number(GUICtrlRead($10thPointLowerSleepforC)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforC)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forC
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
		 If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _D at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _D at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforC = 1
			   GUICtrlSetState($MultiDropC, $GUI_HIDE)
			   GUICtrlSetState($MultiDropCOn, $GUI_SHOW)
			   Local $x = 265
			   Local $y = 355
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   CheckboxDoubleforC()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforC_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforC) <> "" And GUICtrlRead($InputLineBeginingforC) <> "" And GUICtrlRead($InputLineEndingforC) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforC)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforC)) & _
							 " and " & GUICtrlRead($InputLineEndingforC) & " from "
							 If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforC)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforC) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _D at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforC = 1
			   GUICtrlSetState($MultiDropC, $GUI_HIDE)
			   GUICtrlSetState($MultiDropCOn, $GUI_SHOW)
			   Local $x = 265
			   Local $y = 365
			   GUICtrlSetPos($aAddTile2, $x , $y)
			   GUICtrlSetPos($aAddTile1, $x , $y + 27)
			   GUICtrlSetPos($aAddTile0, $x , $y + 54)
			   GUICtrlSetPos($InputBoxOnMap, $x + 2, $y + 81)
			   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
			   GUICtrlSetState($aAddTile0,$GUI_SHOW)
			   GUICtrlSetState($aAddTile1,$GUI_SHOW)
			   GUICtrlSetState($aAddTile2,$GUI_SHOW)
			   CheckboxDoubleforC()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforC) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforC)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforC)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforC)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforC)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _D at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforC_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforC()
   EnableMixedGuiforC()
   GUICtrlSetState($RadioForRandomforC, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforC, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforC, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforC, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforC, $GUI_UNCHECKED)
   CheckboxDoubleforC()
   GuiCtrlSetData($1stPointLowerSleepforC, "50")
   GuiCtrlSetData($2ndPointLowerSleepforC, "50")
   GuiCtrlSetData($3rdPointLowerSleepforC, "50")
   GuiCtrlSetData($4thPointLowerSleepforC, "50")
   GuiCtrlSetData($5thPointLowerSleepforC, "50")
   GuiCtrlSetData($6thPointLowerSleepforC, "50")
   GuiCtrlSetData($7thPointLowerSleepforC, "50")
   GuiCtrlSetData($8thPointLowerSleepforC, "50")
   GuiCtrlSetData($9thPointLowerSleepforC, "50")
   GuiCtrlSetData($10thPointLowerSleepforC, "50")
   GuiCtrlSetData($1stPointUpperSleepforC, "70")
   GuiCtrlSetData($2ndPointUpperSleepforC, "70")
   GuiCtrlSetData($3rdPointUpperSleepforC, "70")
   GuiCtrlSetData($4thPointUpperSleepforC, "70")
   GuiCtrlSetData($5thPointUpperSleepforC, "70")
   GuiCtrlSetData($6thPointUpperSleepforC, "70")
   GuiCtrlSetData($7thPointUpperSleepforC, "70")
   GuiCtrlSetData($8thPointUpperSleepforC, "70")
   GuiCtrlSetData($9thPointUpperSleepforC, "70")
   GuiCtrlSetData($10thPointUpperSleepforC, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforC)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforC)
   GuiCtrlSetData($ArmySizeinLineforC, "")
   GuiCtrlSetData($InputLinePointLowerSleepforC, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforC, "50")
   GuiCtrlSetData($InputLineBeginingforC, "")
   GuiCtrlSetData($InputLineEndingforC, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforC()
   DisableUnderPoint1forC()
   DisablePoint2andBelowforC()
EndFunc

Func LogEnterforC()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforC) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforC & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forC & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforC)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforC)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforC) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forC & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforC)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforC)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforC) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forC & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforC)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforC)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforC) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forC & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforC)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforC)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforC) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forC & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforC)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforC)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforC) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forC & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforC)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforC)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforC) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forC & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforC)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforC)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforC) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forC & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforC)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforC)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforC) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forC & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforC)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforC)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforC) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forC & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforC)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforC)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _D at the same time with same settings."
   EndIf

   If GUICtrlRead($RadioForLineforC) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforC) <> "" And GUICtrlRead($InputLineBeginingforC) <> "" And GUICtrlRead($InputLineEndingforC) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforC)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforC)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforC)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforC)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforC)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _D at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforC) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc
Func CheckboxDoubleforC()
   If GUICtrlRead($DoubleMultiDropforC) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforC, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforC, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforC, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftBottom, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforC, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforC, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforC, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftBottom, $GUI_HIDE)
   EndIf
EndFunc

Func CheckComboMultiDrop1stPointforC()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforC)
	  Case 0
		 $MultiMixedDropPoint1forC = 0
		 GUICtrlSetData($1stPointLowerSleepforC, "50")
		 GUICtrlSetData($1stPointUpperSleepforC, "70")
		 DisableUnderPoint1forC()
		 DisablePoint2andBelowforC()
	  case 1
		 $MultiMixedDropPoint1forC = 1
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
      case 2
		 $MultiMixedDropPoint1forC = 2
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 3
		 $MultiMixedDropPoint1forC = 3
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 4
		 $MultiMixedDropPoint1forC = 4
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 5
		 $MultiMixedDropPoint1forC = 5
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 6
		 $MultiMixedDropPoint1forC = 6
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 7
		 $MultiMixedDropPoint1forC = 7
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 8
		 $MultiMixedDropPoint1forC = 8
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 9
		 $MultiMixedDropPoint1forC = 9
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
	  case 10
		 $MultiMixedDropPoint1forC = 10
		 EnableUnderPoint1forC()
		 EnablePoint2forC()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforC)
	  Case 0
		 $MultiMixedDropPoint2forC = 0
		 GUICtrlSetData($2ndPointLowerSleepforC, "50")
		 GUICtrlSetData($2ndPointUpperSleepforC, "70")
		 DisableUnderPoint2forC()
		 DisablePoint3andBelowforC()
	  case 1
		 $MultiMixedDropPoint2forC = 1
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 2
		 $MultiMixedDropPoint2forC = 2
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 3
		 $MultiMixedDropPoint2forC = 3
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 4
		 $MultiMixedDropPoint2forC = 4
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 5
		 $MultiMixedDropPoint2forC = 5
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 6
		 $MultiMixedDropPoint2forC = 6
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 7
		 $MultiMixedDropPoint2forC = 7
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 8
		 $MultiMixedDropPoint2forC = 8
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 9
		 $MultiMixedDropPoint2forC = 9
		 EnableUnderPoint2forC()
		 EnablePoint3forC()
	  case 10
		 $MultiMixedDropPoint2forC = 10
		 EnableUnderPoint2forC()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforC)
	  Case 0
		 $MultiMixedDropPoint3forC = 0
		 GUICtrlSetData($3rdPointLowerSleepforC, "50")
		 GUICtrlSetData($3rdPointUpperSleepforC, "70")
		 DisableUnderPoint3forC()
		 DisablePoint4andBelowforC()
	  case 1
		 $MultiMixedDropPoint3forC = 1
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 2
		 $MultiMixedDropPoint3forC = 2
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 3
		 $MultiMixedDropPoint3forC = 3
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 4
		 $MultiMixedDropPoint3forC = 4
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 5
		 $MultiMixedDropPoint3forC = 5
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 6
		 $MultiMixedDropPoint3forC = 6
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 7
		 $MultiMixedDropPoint3forC = 7
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 8
		 $MultiMixedDropPoint3forC = 8
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 9
		 $MultiMixedDropPoint3forC = 9
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
	  case 10
		 $MultiMixedDropPoint3forC = 10
		 EnableUnderPoint3forC()
		 EnablePoint4forC()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforC)
	  Case 0
		 $MultiMixedDropPoint4forC = 0
		 GUICtrlSetData($4thPointLowerSleepforC, "50")
		 GUICtrlSetData($4thPointUpperSleepforC, "70")
		 DisableUnderPoint4forC()
		 DisablePoint5andBelowforC()
	  case 1
		 $MultiMixedDropPoint4forC = 1
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 2
		 $MultiMixedDropPoint4forC = 2
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 3
		 $MultiMixedDropPoint4forC = 3
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 4
		 $MultiMixedDropPoint4forC = 4
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 5
		 $MultiMixedDropPoint4forC = 5
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 6
		 $MultiMixedDropPoint4forC = 6
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 7
		 $MultiMixedDropPoint4forC = 7
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 8
		 $MultiMixedDropPoint4forC = 8
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 9
		 $MultiMixedDropPoint4forC = 9
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
	  case 10
		 $MultiMixedDropPoint4forC = 10
		 EnableUnderPoint4forC()
		 EnablePoint5forC()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforC)
	  Case 0
		 $MultiMixedDropPoint5forC = 0
		 GUICtrlSetData($5thPointLowerSleepforC, "50")
		 GUICtrlSetData($5thPointUpperSleepforC, "70")
		 DisableUnderPoint5forC()
		 DisablePoint6andBelowforC()
	  case 1
		 $MultiMixedDropPoint5forC = 1
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 2
		 $MultiMixedDropPoint5forC = 2
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 3
		 $MultiMixedDropPoint5forC = 3
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 4
		 $MultiMixedDropPoint5forC = 4
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 5
		 $MultiMixedDropPoint5forC = 5
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 6
		 $MultiMixedDropPoint5forC = 6
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 7
		 $MultiMixedDropPoint5forC = 7
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 8
		 $MultiMixedDropPoint5forC = 8
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 9
		 $MultiMixedDropPoint5forC = 9
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
	  case 10
		 $MultiMixedDropPoint5forC = 10
		 EnableUnderPoint5forC()
		 EnablePoint6forC()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforC)
	  Case 0
		 $MultiMixedDropPoint6forC = 0
		 GUICtrlSetData($6thPointLowerSleepforC, "50")
		 GUICtrlSetData($6thPointUpperSleepforC, "70")
		 DisableUnderPoint6forC()
		 DisablePoint7andBelowforC()
	  case 1
		 $MultiMixedDropPoint6forC = 1
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 2
		 $MultiMixedDropPoint6forC = 2
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 3
		 $MultiMixedDropPoint6forC = 3
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 4
		 $MultiMixedDropPoint6forC = 4
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 5
		 $MultiMixedDropPoint6forC = 5
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 6
		 $MultiMixedDropPoint6forC = 6
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 7
		 $MultiMixedDropPoint6forC = 7
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 8
		 $MultiMixedDropPoint6forC = 8
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 9
		 $MultiMixedDropPoint6forC = 9
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
	  case 10
		 $MultiMixedDropPoint6forC = 10
		 EnableUnderPoint6forC()
		 EnablePoint7forC()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforC)
	  Case 0
		 $MultiMixedDropPoint7forC = 0
		 GUICtrlSetData($7thPointLowerSleepforC, "50")
		 GUICtrlSetData($7thPointUpperSleepforC, "70")
		 DisableUnderPoint7forC()
		 DisablePoint8andBelowforC()
	  case 1
		 $MultiMixedDropPoint7forC = 1
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 2
		 $MultiMixedDropPoint7forC = 2
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 3
		 $MultiMixedDropPoint7forC = 3
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 4
		 $MultiMixedDropPoint7forC = 4
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 5
		 $MultiMixedDropPoint7forC = 5
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 6
		 $MultiMixedDropPoint7forC = 6
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 7
		 $MultiMixedDropPoint7forC = 7
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 8
		 $MultiMixedDropPoint7forC = 8
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 9
		 $MultiMixedDropPoint7forC = 9
		 EnableUnderPoint7forC()
		 EnablePoint8forC()
	  case 10
		 $MultiMixedDropPoint7forC = 10
		 EnableUnderPoint7forC()
		 EnablePoint8forC()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforC)
	  Case 0
		 $MultiMixedDropPoint8forC = 0
		 GUICtrlSetData($8thPointLowerSleepforC, "50")
		 GUICtrlSetData($8thPointUpperSleepforC, "70")
		 DisableUnderPoint8forC()
		 DisablePoint9andBelowforC()
	  case 1
		 $MultiMixedDropPoint8forC = 1
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 2
		 $MultiMixedDropPoint8forC = 2
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 3
		 $MultiMixedDropPoint8forC = 3
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 4
		 $MultiMixedDropPoint8forC = 4
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 5
		 $MultiMixedDropPoint8forC = 5
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 6
		 $MultiMixedDropPoint8forC = 6
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 7
		 $MultiMixedDropPoint8forC = 7
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 8
		 $MultiMixedDropPoint8forC = 8
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 9
		 $MultiMixedDropPoint8forC = 9
		 EnableUnderPoint8forC()
		 EnablePoint9forC()
	  case 10
		 $MultiMixedDropPoint8forC = 10
		 EnableUnderPoint8forC()
		 EnablePoint9forC()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforC()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforC)
	  Case 0
		 $MultiMixedDropPoint9forC = 0
		 GUICtrlSetData($9thPointLowerSleepforC, "50")
		 GUICtrlSetData($9thPointUpperSleepforC, "70")
		 DisableUnderPoint9forC()
		 DisablePoint10andBelowforC()
	  case 1
		 $MultiMixedDropPoint9forC = 1
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 2
		 $MultiMixedDropPoint9forC = 2
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 3
		 $MultiMixedDropPoint9forC = 3
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 4
		 $MultiMixedDropPoint9forC = 4
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 5
		 $MultiMixedDropPoint9forC = 5
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 6
		 $MultiMixedDropPoint9forC = 6
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 7
		 $MultiMixedDropPoint9forC = 7
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 8
		 $MultiMixedDropPoint9forC = 8
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 9
		 $MultiMixedDropPoint9forC = 9
		 EnableUnderPoint9forC()
		 EnablePoint10forC()
	  case 10
		 $MultiMixedDropPoint9forC = 10
		 EnableUnderPoint9forC()
		 EnablePoint10forC()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforC()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforC)
	  Case 0
		 $MultiMixedDropPoint10forC = 0
		 GUICtrlSetData($10thPointLowerSleepforC, "50")
		 GUICtrlSetData($10thPointUpperSleepforC, "70")
		 DisableUnderPoint10forC()
	  case 1
		 $MultiMixedDropPoint10forC = 1
		 EnableUnderPoint10forC()
	  case 2
		 $MultiMixedDropPoint10forC = 2
		 EnableUnderPoint10forC()
	  case 3
		 $MultiMixedDropPoint10forC = 3
		 EnableUnderPoint10forC()
	  case 4
		 $MultiMixedDropPoint10forC = 4
		 EnableUnderPoint10forC()
	  case 5
		 $MultiMixedDropPoint10forC = 5
		 EnableUnderPoint10forC()
	  case 6
		 $MultiMixedDropPoint10forC = 6
		 EnableUnderPoint10forC()
	  case 7
		 $MultiMixedDropPoint10forC = 7
		 EnableUnderPoint10forC()
	  case 8
		 $MultiMixedDropPoint10forC = 8
		 EnableUnderPoint10forC()
	  case 9
		 $MultiMixedDropPoint10forC = 9
		 EnableUnderPoint10forC()
	  case 10
		 $MultiMixedDropPoint10forC = 10
		 EnableUnderPoint10forC()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforC()
   For $i = $ComboMultiDrop1ndPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforC()
   For $i = $ComboMultiDrop2ndPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforC()
   For $i = $ComboMultiDrop3rdPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforC()
   For $i = $ComboMultiDrop4thPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforC()
   For $i = $ComboMultiDrop5thPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforC()
   For $i = $ComboMultiDrop6thPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforC()
   For $i = $ComboMultiDrop7thPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforC()
   For $i = $ComboMultiDrop8thPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforC()
   For $i = $ComboMultiDrop9thPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forC To $Lbl10forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forC To $Lbl20forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forC To $Lbl30forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forC To $Lbl40forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforC()
   GUICtrlSetState($ComboMultiDrop10thPointforC, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforC)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforC, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforC)
   GUICtrlSetState($Lbl10forC, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forC, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforC, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforC, "50")
   GUICtrlSetState($Lbl30forC, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforC, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforC, "70")
   GUICtrlSetState($Lbl40forC, $GUI_DISABLE)
EndFunc


Func EnablePoint1forC()
   GUICtrlSetState($ComboMultiDrop1stPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforC, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint2forC()
   GUICtrlSetState($ComboMultiDrop2ndPointforC, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint3forC()
   GUICtrlSetState($ComboMultiDrop3rdPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint4forC()
   GUICtrlSetState($ComboMultiDrop4thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint5forC()
   GUICtrlSetState($ComboMultiDrop5thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint6forC()
   GUICtrlSetState($ComboMultiDrop6thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint7forC()
   GUICtrlSetState($ComboMultiDrop7thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint8forC()
   GUICtrlSetState($ComboMultiDrop8thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint9forC()
   GUICtrlSetState($ComboMultiDrop9thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforC, "70")
   EndIf
EndFunc
Func EnablePoint10forC()
   GUICtrlSetState($ComboMultiDrop10thPointforC, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forC, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforC)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforC, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforC)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforC, "70")
   EndIf
EndFunc


Func ChooseLineGuiforC()
   DisableMixedGuiforC()
   EnableLineGuiforC()
EndFunc

Func ChooseMixedGuiforC()
   DisableLineGuiforC()
   EnableMixedGuiforC()
EndFunc

Func DisableMixedGuiforC()
   For $i = $ComboMultiDrop1stPointforC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forC To $ComboMultiDrop10thPointforC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforC To $10thPointLowerSleepforC
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforC To $10thPointUpperSleepforC
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforC()
   For $i = $LblRandom1forC To $LblRandom2forC
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forC()
   DisableUnderPoint1forC()
EndFunc

Func DisableLineGuiforC()

   GUICtrlSetData($ArmySizeinLineforC, "")
   GUICtrlSetData($InputLineBeginingforC, "")
   GUICtrlSetData($InputLineEndingforC, "")
   GUICtrlSetData($InputLinePointLowerSleepforC, "50")
   GUICtrlSetData($InputLinePointUpperSleepforC, "70")
   GUICtrlSetState($RadioCentertoCornerforC, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforC, $GUI_UNCHECKED)

   For $i = $LblLine1forC To $LblLine11forC
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforC()
   For $i = $LblLine1forC To $LblLine11forC
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforC) = "" Then
	  GUICtrlSetData($ArmySizeinLineforC, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforC) = "" Then
	  GUICtrlSetData($InputLineBeginingforC, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforC) = "" Then
	  GUICtrlSetData($InputLineEndingforC, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforC) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforC, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforC) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforC, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforC, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforC, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forC()
   GUICtrlSetState($Lbl11forC,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forC,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forC()
   GUICtrlSetState($Lbl12forC,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forC,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forC()
   GUICtrlSetState($Lbl13forC,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forC,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forC()
   GUICtrlSetState($Lbl14forC,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forC,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forC()
   GUICtrlSetState($Lbl15forC,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forC,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forC()
   GUICtrlSetState($Lbl16forC,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forC,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forC()
   GUICtrlSetState($Lbl17forC,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forC,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forC()
   GUICtrlSetState($Lbl18forC,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forC,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forC()
   GUICtrlSetState($Lbl19forC,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forC,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forC,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forC()
   GUICtrlSetState($Lbl20forC,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forC,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforC,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forC,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forC()
   GUICtrlSetState($Lbl11forC,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forC,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forC()
   GUICtrlSetState($Lbl12forC,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forC,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forC()
   GUICtrlSetState($Lbl13forC,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forC,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forC()
   GUICtrlSetState($Lbl14forC,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forC,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forC()
   GUICtrlSetState($Lbl15forC,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forC,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forC()
   GUICtrlSetState($Lbl16forC,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forC,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forC()
   GUICtrlSetState($Lbl17forC,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forC,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forC()
   GUICtrlSetState($Lbl18forC,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forC,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forC()
   GUICtrlSetState($Lbl19forC,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forC,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forC,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forC()
   GUICtrlSetState($Lbl20forC,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forC,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforC,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forC,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforC()
	If GUICtrlRead($ComboMultiDrop1stPointforC) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforC) <> "" Then
		$DidIdoSomethingforC = True
	EndIf
EndFunc

