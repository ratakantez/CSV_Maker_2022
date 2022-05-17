; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _D
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
Func OpenMultiDropforD()
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
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforB
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforB()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side D, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side D?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforD_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
 EndFunc


Func CancelMultiDropforD()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropDOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropD, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropLeftBottom, $GUI_HIDE)
   If $MultiDropIsSetforD = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For D Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforD_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforD()
EndFunc

Func OkMultiDropforD()


   Local $txtforyesorno
   Local $errorInMultitouchforD
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforD)) > Number(GUICtrlRead($1stPointUpperSleepforD))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforD , Number(GUICtrlRead($1stPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforD) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforD)) > Number(GUICtrlRead($2ndPointUpperSleepforD))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforD , Number(GUICtrlRead($2ndPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforD) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforD)) > Number(GUICtrlRead($3rdPointUpperSleepforD))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforD , Number(GUICtrlRead($3rdPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforD) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforD)) > Number(GUICtrlRead($4thPointUpperSleepforD))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforD , Number(GUICtrlRead($4thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforD) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforD)) > Number(GUICtrlRead($5thPointUpperSleepforD))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforD , Number(GUICtrlRead($5thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforD) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforD)) > Number(GUICtrlRead($6thPointUpperSleepforD))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforD , Number(GUICtrlRead($6thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforD) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforD)) > Number(GUICtrlRead($7thPointUpperSleepforD))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforD , Number(GUICtrlRead($7thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforD) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforD)) > Number(GUICtrlRead($8thPointUpperSleepforD))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforD , Number(GUICtrlRead($8thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforD) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforD)) > Number(GUICtrlRead($9thPointUpperSleepforD))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforD , Number(GUICtrlRead($9thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforD) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforD)) > Number(GUICtrlRead($10thPointUpperSleepforD))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforD , Number(GUICtrlRead($10thPointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforD) = "" And GUICtrlRead($InputLineBeginingforD) = "" And GUICtrlRead($InputLineEndingforD) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforD)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforD)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforD)) > 10 Or GUICtrlRead($InputLineBeginingforD) = "" Or Number(GUICtrlRead($InputLineEndingforD)) < 1 Or Number(GUICtrlRead($InputLineEndingforD)) > 10 Or GUICtrlRead($InputLineEndingforD) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforD)) & " and " & Number(GUICtrlRead($InputLineEndingforD))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforD)) = 0 Or GUICtrlRead($ArmySizeinLineforD) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforD)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforD))-Number(GUICtrlRead($InputLineEndingforD)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforD) & " and " & GUICtrlRead($InputLineEndingforD) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforD))-Number(GUICtrlRead($InputLineEndingforD)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforD, Number(Abs(Number(GUICtrlRead($InputLineBeginingforD))-Number(GUICtrlRead($InputLineEndingforD)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforD)) > 0 And Number(GUICtrlRead($InputLineEndingforD)) < 11 And Number(GUICtrlRead($ArmySizeinLineforD)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforD))-Number(GUICtrlRead($InputLineEndingforD)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforD)) & " and " & Number(GUICtrlRead($InputLineEndingforD)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforD))-Number(GUICtrlRead($InputLineEndingforD)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforD, Number(Abs(Number(GUICtrlRead($InputLineBeginingforD))-Number(GUICtrlRead($InputLineEndingforD)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforD)) > Number(GUICtrlRead($InputLinePointUpperSleepforD))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforD) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforD) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforD = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforD = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforD)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforD , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforD , Number(GUICtrlRead($InputLinePointUpperSleepforD))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($RadioForLineforD) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_D"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforD = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforD) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforD) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforD) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforD) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
						If GUICtrlRead($ComboMultiDrop6thPointforD) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforD) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforD) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforD) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
									If GUICtrlRead($ComboMultiDrop10thPointforD) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforD = $ArmySizeforMixedDropPointforD + 1
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
		 If GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforD & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forD & " (" & Number(GUICtrlRead($1stPointLowerSleepforD)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforD)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforD & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forD
			If GUICtrlRead($ComboMultiDrop2ndPointforD) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forD & " (" & Number(GUICtrlRead($2ndPointLowerSleepforD)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforD)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forD
			   If GUICtrlRead($ComboMultiDrop3rdPointforD) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forD & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforD)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforD)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forD
				  If GUICtrlRead($ComboMultiDrop4thPointforD) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forD & " ( " & Number(GUICtrlRead($4thPointLowerSleepforD)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforD)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forD
					 If GUICtrlRead($ComboMultiDrop5thPointforD) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forD & " ( " & Number(GUICtrlRead($5thPointLowerSleepforD)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforD)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forD
						If GUICtrlRead($ComboMultiDrop6thPointforD) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forD & " ( " & Number(GUICtrlRead($6thPointLowerSleepforD)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforD)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forD
						   If GUICtrlRead($ComboMultiDrop7thPointforD) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forD & " ( " & Number(GUICtrlRead($7thPointLowerSleepforD)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforD)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forD
							  If GUICtrlRead($ComboMultiDrop8thPointforD) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forD & " ( " & Number(GUICtrlRead($8thPointLowerSleepforD)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforD)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forD
								 If GUICtrlRead($ComboMultiDrop9thPointforD) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forD & " ( " & Number(GUICtrlRead($9thPointLowerSleepforD)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforD) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forD
									If GUICtrlRead($ComboMultiDrop10thPointforD) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forD & " ( " & Number(GUICtrlRead($10thPointLowerSleepforD)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforD)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forD
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
		 If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _C at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _C at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforD = 1
			   GUICtrlSetState($MultiDropD, $GUI_HIDE)
			   GUICtrlSetState($MultiDropDOn, $GUI_SHOW)
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
			   CheckboxDoubleforD()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforD_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforD) <> "" And GUICtrlRead($InputLineBeginingforD) <> "" And GUICtrlRead($InputLineEndingforD) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforD)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforD)) & _
							 " and " & GUICtrlRead($InputLineEndingforD) & " from "
							 If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforD)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforD) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _C at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforD = 1
			   GUICtrlSetState($MultiDropD, $GUI_HIDE)
			   GUICtrlSetState($MultiDropDOn, $GUI_SHOW)
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
			   CheckboxDoubleforD()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforD) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforD)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforD)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforD)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforD)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _C at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforD_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforD()
   EnableMixedGuiforD()
   GUICtrlSetState($RadioForRandomforD, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforD, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforD, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforD, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforD, $GUI_UNCHECKED)
   CheckboxDoubleforD()
   GuiCtrlSetData($1stPointLowerSleepforD, "50")
   GuiCtrlSetData($2ndPointLowerSleepforD, "50")
   GuiCtrlSetData($3rdPointLowerSleepforD, "50")
   GuiCtrlSetData($4thPointLowerSleepforD, "50")
   GuiCtrlSetData($5thPointLowerSleepforD, "50")
   GuiCtrlSetData($6thPointLowerSleepforD, "50")
   GuiCtrlSetData($7thPointLowerSleepforD, "50")
   GuiCtrlSetData($8thPointLowerSleepforD, "50")
   GuiCtrlSetData($9thPointLowerSleepforD, "50")
   GuiCtrlSetData($10thPointLowerSleepforD, "50")
   GuiCtrlSetData($1stPointUpperSleepforD, "70")
   GuiCtrlSetData($2ndPointUpperSleepforD, "70")
   GuiCtrlSetData($3rdPointUpperSleepforD, "70")
   GuiCtrlSetData($4thPointUpperSleepforD, "70")
   GuiCtrlSetData($5thPointUpperSleepforD, "70")
   GuiCtrlSetData($6thPointUpperSleepforD, "70")
   GuiCtrlSetData($7thPointUpperSleepforD, "70")
   GuiCtrlSetData($8thPointUpperSleepforD, "70")
   GuiCtrlSetData($9thPointUpperSleepforD, "70")
   GuiCtrlSetData($10thPointUpperSleepforD, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforD)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforD)
   GuiCtrlSetData($ArmySizeinLineforD, "")
   GuiCtrlSetData($InputLinePointLowerSleepforD, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforD, "50")
   GuiCtrlSetData($InputLineBeginingforD, "")
   GuiCtrlSetData($InputLineEndingforD, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforD()
   DisableUnderPoint1forD()
   DisablePoint2andBelowforD()
EndFunc

Func LogEnterforD()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforD) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforD & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forD & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforD)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforD)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforD) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forD & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforD)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforD)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforD) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forD & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforD)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforD)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforD) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forD & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforD)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforD)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforD) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forD & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforD)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforD)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforD) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forD & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforD)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforD)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforD) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forD & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforD)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforD)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforD) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forD & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforD)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforD)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforD) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forD & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforD)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforD)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforD) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forD & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforD)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforD)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _C at the same time with same settings."
   EndIf

   If GUICtrlRead($RadioForLineforD) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforD) <> "" And GUICtrlRead($InputLineBeginingforD) <> "" And GUICtrlRead($InputLineEndingforD) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforD)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforD)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforD)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforD)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforD)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _C at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforD) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc
Func CheckboxDoubleforD()
   If GUICtrlRead($DoubleMultiDropforD) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforD, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforD, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforD, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftBottom, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforD, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforD, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforD, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftBottom, $GUI_HIDE)
   EndIf
EndFunc

Func CheckComboMultiDrop1stPointforD()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforD)
	  Case 0
		 $MultiMixedDropPoint1forD = 0
		 GUICtrlSetData($1stPointLowerSleepforD, "50")
		 GUICtrlSetData($1stPointUpperSleepforD, "70")
		 DisableUnderPoint1forD()
		 DisablePoint2andBelowforD()
	  case 1
		 $MultiMixedDropPoint1forD = 1
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
      case 2
		 $MultiMixedDropPoint1forD = 2
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 3
		 $MultiMixedDropPoint1forD = 3
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 4
		 $MultiMixedDropPoint1forD = 4
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 5
		 $MultiMixedDropPoint1forD = 5
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 6
		 $MultiMixedDropPoint1forD = 6
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 7
		 $MultiMixedDropPoint1forD = 7
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 8
		 $MultiMixedDropPoint1forD = 8
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 9
		 $MultiMixedDropPoint1forD = 9
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
	  case 10
		 $MultiMixedDropPoint1forD = 10
		 EnableUnderPoint1forD()
		 EnablePoint2forD()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforD)
	  Case 0
		 $MultiMixedDropPoint2forD = 0
		 GUICtrlSetData($2ndPointLowerSleepforD, "50")
		 GUICtrlSetData($2ndPointUpperSleepforD, "70")
		 DisableUnderPoint2forD()
		 DisablePoint3andBelowforD()
	  case 1
		 $MultiMixedDropPoint2forD = 1
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 2
		 $MultiMixedDropPoint2forD = 2
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 3
		 $MultiMixedDropPoint2forD = 3
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 4
		 $MultiMixedDropPoint2forD = 4
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 5
		 $MultiMixedDropPoint2forD = 5
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 6
		 $MultiMixedDropPoint2forD = 6
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 7
		 $MultiMixedDropPoint2forD = 7
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 8
		 $MultiMixedDropPoint2forD = 8
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 9
		 $MultiMixedDropPoint2forD = 9
		 EnableUnderPoint2forD()
		 EnablePoint3forD()
	  case 10
		 $MultiMixedDropPoint2forD = 10
		 EnableUnderPoint2forD()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforD)
	  Case 0
		 $MultiMixedDropPoint3forD = 0
		 GUICtrlSetData($3rdPointLowerSleepforD, "50")
		 GUICtrlSetData($3rdPointUpperSleepforD, "70")
		 DisableUnderPoint3forD()
		 DisablePoint4andBelowforD()
	  case 1
		 $MultiMixedDropPoint3forD = 1
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 2
		 $MultiMixedDropPoint3forD = 2
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 3
		 $MultiMixedDropPoint3forD = 3
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 4
		 $MultiMixedDropPoint3forD = 4
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 5
		 $MultiMixedDropPoint3forD = 5
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 6
		 $MultiMixedDropPoint3forD = 6
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 7
		 $MultiMixedDropPoint3forD = 7
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 8
		 $MultiMixedDropPoint3forD = 8
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 9
		 $MultiMixedDropPoint3forD = 9
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
	  case 10
		 $MultiMixedDropPoint3forD = 10
		 EnableUnderPoint3forD()
		 EnablePoint4forD()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforD)
	  Case 0
		 $MultiMixedDropPoint4forD = 0
		 GUICtrlSetData($4thPointLowerSleepforD, "50")
		 GUICtrlSetData($4thPointUpperSleepforD, "70")
		 DisableUnderPoint4forD()
		 DisablePoint5andBelowforD()
	  case 1
		 $MultiMixedDropPoint4forD = 1
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 2
		 $MultiMixedDropPoint4forD = 2
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 3
		 $MultiMixedDropPoint4forD = 3
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 4
		 $MultiMixedDropPoint4forD = 4
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 5
		 $MultiMixedDropPoint4forD = 5
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 6
		 $MultiMixedDropPoint4forD = 6
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 7
		 $MultiMixedDropPoint4forD = 7
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 8
		 $MultiMixedDropPoint4forD = 8
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 9
		 $MultiMixedDropPoint4forD = 9
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
	  case 10
		 $MultiMixedDropPoint4forD = 10
		 EnableUnderPoint4forD()
		 EnablePoint5forD()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforD)
	  Case 0
		 $MultiMixedDropPoint5forD = 0
		 GUICtrlSetData($5thPointLowerSleepforD, "50")
		 GUICtrlSetData($5thPointUpperSleepforD, "70")
		 DisableUnderPoint5forD()
		 DisablePoint6andBelowforD()
	  case 1
		 $MultiMixedDropPoint5forD = 1
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 2
		 $MultiMixedDropPoint5forD = 2
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 3
		 $MultiMixedDropPoint5forD = 3
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 4
		 $MultiMixedDropPoint5forD = 4
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 5
		 $MultiMixedDropPoint5forD = 5
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 6
		 $MultiMixedDropPoint5forD = 6
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 7
		 $MultiMixedDropPoint5forD = 7
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 8
		 $MultiMixedDropPoint5forD = 8
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 9
		 $MultiMixedDropPoint5forD = 9
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
	  case 10
		 $MultiMixedDropPoint5forD = 10
		 EnableUnderPoint5forD()
		 EnablePoint6forD()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforD)
	  Case 0
		 $MultiMixedDropPoint6forD = 0
		 GUICtrlSetData($6thPointLowerSleepforD, "50")
		 GUICtrlSetData($6thPointUpperSleepforD, "70")
		 DisableUnderPoint6forD()
		 DisablePoint7andBelowforD()
	  case 1
		 $MultiMixedDropPoint6forD = 1
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 2
		 $MultiMixedDropPoint6forD = 2
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 3
		 $MultiMixedDropPoint6forD = 3
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 4
		 $MultiMixedDropPoint6forD = 4
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 5
		 $MultiMixedDropPoint6forD = 5
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 6
		 $MultiMixedDropPoint6forD = 6
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 7
		 $MultiMixedDropPoint6forD = 7
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 8
		 $MultiMixedDropPoint6forD = 8
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 9
		 $MultiMixedDropPoint6forD = 9
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
	  case 10
		 $MultiMixedDropPoint6forD = 10
		 EnableUnderPoint6forD()
		 EnablePoint7forD()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforD)
	  Case 0
		 $MultiMixedDropPoint7forD = 0
		 GUICtrlSetData($7thPointLowerSleepforD, "50")
		 GUICtrlSetData($7thPointUpperSleepforD, "70")
		 DisableUnderPoint7forD()
		 DisablePoint8andBelowforD()
	  case 1
		 $MultiMixedDropPoint7forD = 1
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 2
		 $MultiMixedDropPoint7forD = 2
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 3
		 $MultiMixedDropPoint7forD = 3
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 4
		 $MultiMixedDropPoint7forD = 4
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 5
		 $MultiMixedDropPoint7forD = 5
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 6
		 $MultiMixedDropPoint7forD = 6
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 7
		 $MultiMixedDropPoint7forD = 7
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 8
		 $MultiMixedDropPoint7forD = 8
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 9
		 $MultiMixedDropPoint7forD = 9
		 EnableUnderPoint7forD()
		 EnablePoint8forD()
	  case 10
		 $MultiMixedDropPoint7forD = 10
		 EnableUnderPoint7forD()
		 EnablePoint8forD()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforD)
	  Case 0
		 $MultiMixedDropPoint8forD = 0
		 GUICtrlSetData($8thPointLowerSleepforD, "50")
		 GUICtrlSetData($8thPointUpperSleepforD, "70")
		 DisableUnderPoint8forD()
		 DisablePoint9andBelowforD()
	  case 1
		 $MultiMixedDropPoint8forD = 1
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 2
		 $MultiMixedDropPoint8forD = 2
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 3
		 $MultiMixedDropPoint8forD = 3
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 4
		 $MultiMixedDropPoint8forD = 4
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 5
		 $MultiMixedDropPoint8forD = 5
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 6
		 $MultiMixedDropPoint8forD = 6
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 7
		 $MultiMixedDropPoint8forD = 7
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 8
		 $MultiMixedDropPoint8forD = 8
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 9
		 $MultiMixedDropPoint8forD = 9
		 EnableUnderPoint8forD()
		 EnablePoint9forD()
	  case 10
		 $MultiMixedDropPoint8forD = 10
		 EnableUnderPoint8forD()
		 EnablePoint9forD()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforD()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforD)
	  Case 0
		 $MultiMixedDropPoint9forD = 0
		 GUICtrlSetData($9thPointLowerSleepforD, "50")
		 GUICtrlSetData($9thPointUpperSleepforD, "70")
		 DisableUnderPoint9forD()
		 DisablePoint10andBelowforD()
	  case 1
		 $MultiMixedDropPoint9forD = 1
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 2
		 $MultiMixedDropPoint9forD = 2
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 3
		 $MultiMixedDropPoint9forD = 3
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 4
		 $MultiMixedDropPoint9forD = 4
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 5
		 $MultiMixedDropPoint9forD = 5
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 6
		 $MultiMixedDropPoint9forD = 6
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 7
		 $MultiMixedDropPoint9forD = 7
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 8
		 $MultiMixedDropPoint9forD = 8
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 9
		 $MultiMixedDropPoint9forD = 9
		 EnableUnderPoint9forD()
		 EnablePoint10forD()
	  case 10
		 $MultiMixedDropPoint9forD = 10
		 EnableUnderPoint9forD()
		 EnablePoint10forD()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforD()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforD)
	  Case 0
		 $MultiMixedDropPoint10forD = 0
		 GUICtrlSetData($10thPointLowerSleepforD, "50")
		 GUICtrlSetData($10thPointUpperSleepforD, "70")
		 DisableUnderPoint10forD()
	  case 1
		 $MultiMixedDropPoint10forD = 1
		 EnableUnderPoint10forD()
	  case 2
		 $MultiMixedDropPoint10forD = 2
		 EnableUnderPoint10forD()
	  case 3
		 $MultiMixedDropPoint10forD = 3
		 EnableUnderPoint10forD()
	  case 4
		 $MultiMixedDropPoint10forD = 4
		 EnableUnderPoint10forD()
	  case 5
		 $MultiMixedDropPoint10forD = 5
		 EnableUnderPoint10forD()
	  case 6
		 $MultiMixedDropPoint10forD = 6
		 EnableUnderPoint10forD()
	  case 7
		 $MultiMixedDropPoint10forD = 7
		 EnableUnderPoint10forD()
	  case 8
		 $MultiMixedDropPoint10forD = 8
		 EnableUnderPoint10forD()
	  case 9
		 $MultiMixedDropPoint10forD = 9
		 EnableUnderPoint10forD()
	  case 10
		 $MultiMixedDropPoint10forD = 10
		 EnableUnderPoint10forD()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforD()
   For $i = $ComboMultiDrop1ndPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforD()
   For $i = $ComboMultiDrop2ndPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforD()
   For $i = $ComboMultiDrop3rdPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforD()
   For $i = $ComboMultiDrop4thPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforD()
   For $i = $ComboMultiDrop5thPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforD()
   For $i = $ComboMultiDrop6thPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforD()
   For $i = $ComboMultiDrop7thPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforD()
   For $i = $ComboMultiDrop8thPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforD()
   For $i = $ComboMultiDrop9thPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forD To $Lbl10forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forD To $Lbl20forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forD To $Lbl30forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forD To $Lbl40forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforD()
   GUICtrlSetState($ComboMultiDrop10thPointforD, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforD)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforD, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforD)
   GUICtrlSetState($Lbl10forD, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forD, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforD, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforD, "50")
   GUICtrlSetState($Lbl30forD, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforD, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforD, "70")
   GUICtrlSetState($Lbl40forD, $GUI_DISABLE)
EndFunc


Func EnablePoint1forD()
   GUICtrlSetState($ComboMultiDrop1stPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforD, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint2forD()
   GUICtrlSetState($ComboMultiDrop2ndPointforD, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint3forD()
   GUICtrlSetState($ComboMultiDrop3rdPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint4forD()
   GUICtrlSetState($ComboMultiDrop4thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint5forD()
   GUICtrlSetState($ComboMultiDrop5thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint6forD()
   GUICtrlSetState($ComboMultiDrop6thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint7forD()
   GUICtrlSetState($ComboMultiDrop7thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint8forD()
   GUICtrlSetState($ComboMultiDrop8thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint9forD()
   GUICtrlSetState($ComboMultiDrop9thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforD, "70")
   EndIf
EndFunc
Func EnablePoint10forD()
   GUICtrlSetState($ComboMultiDrop10thPointforD, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forD, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforD)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforD, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforD)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforD, "70")
   EndIf
EndFunc


Func ChooseLineGuiforD()
   DisableMixedGuiforD()
   EnableLineGuiforD()
EndFunc

Func ChooseMixedGuiforD()
   DisableLineGuiforD()
   EnableMixedGuiforD()
EndFunc

Func DisableMixedGuiforD()
   For $i = $ComboMultiDrop1stPointforD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forD To $ComboMultiDrop10thPointforD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforD To $10thPointLowerSleepforD
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforD To $10thPointUpperSleepforD
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforD()
   For $i = $LblRandom1forD To $LblRandom2forD
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forD()
   DisableUnderPoint1forD()
EndFunc

Func DisableLineGuiforD()

   GUICtrlSetData($ArmySizeinLineforD, "")
   GUICtrlSetData($InputLineBeginingforD, "")
   GUICtrlSetData($InputLineEndingforD, "")
   GUICtrlSetData($InputLinePointLowerSleepforD, "50")
   GUICtrlSetData($InputLinePointUpperSleepforD, "70")
   GUICtrlSetState($RadioCentertoCornerforD, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforD, $GUI_UNCHECKED)

   For $i = $LblLine1forD To $LblLine11forD
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforD()
   For $i = $LblLine1forD To $LblLine11forD
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforD) = "" Then
	  GUICtrlSetData($ArmySizeinLineforD, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforD) = "" Then
	  GUICtrlSetData($InputLineBeginingforD, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforD) = "" Then
	  GUICtrlSetData($InputLineEndingforD, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforD) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforD, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforD) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforD, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforD, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforD, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forD()
   GUICtrlSetState($Lbl11forD,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forD,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forD()
   GUICtrlSetState($Lbl12forD,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forD,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forD()
   GUICtrlSetState($Lbl13forD,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forD,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forD()
   GUICtrlSetState($Lbl14forD,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forD,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forD()
   GUICtrlSetState($Lbl15forD,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forD,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forD()
   GUICtrlSetState($Lbl16forD,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forD,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forD()
   GUICtrlSetState($Lbl17forD,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forD,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forD()
   GUICtrlSetState($Lbl18forD,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forD,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forD()
   GUICtrlSetState($Lbl19forD,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forD,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forD,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forD()
   GUICtrlSetState($Lbl20forD,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forD,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforD,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forD,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forD()
   GUICtrlSetState($Lbl11forD,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forD,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forD()
   GUICtrlSetState($Lbl12forD,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forD,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forD()
   GUICtrlSetState($Lbl13forD,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forD,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forD()
   GUICtrlSetState($Lbl14forD,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forD,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forD()
   GUICtrlSetState($Lbl15forD,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forD,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forD()
   GUICtrlSetState($Lbl16forD,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forD,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forD()
   GUICtrlSetState($Lbl17forD,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forD,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forD()
   GUICtrlSetState($Lbl18forD,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forD,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forD()
   GUICtrlSetState($Lbl19forD,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forD,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forD,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forD()
   GUICtrlSetState($Lbl20forD,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forD,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforD,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forD,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforD()
	If GUICtrlRead($ComboMultiDrop1stPointforD) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforD) <> "" Then
		$DidIdoSomethingforD = True
	EndIf
EndFunc

