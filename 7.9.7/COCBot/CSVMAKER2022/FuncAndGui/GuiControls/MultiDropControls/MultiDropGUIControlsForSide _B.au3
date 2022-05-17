; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MultiDrop GUI Control for Side _B
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
Func OpenMultiDropforB()
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
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforA()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforC
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforC()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforD
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforD()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforE
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforE()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforF
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforF()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforG
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforG()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
			WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
		EndIf
	Case $DidIdoSomethingforH
		$yesorno = "You set your army for side " & $SideType & _
				   ". If you enter Side B, your old setting for " & $SideType &  " side will reset." & @CRLF & _
				   "Are you sure to enter Side B?"
		$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
		If $question = $IDYES Then
			CancelMultiDropforH()
			GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
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
		GUISetState(@SW_SHOW, $GUI_MultiDropforB_in_function)
		WinSetState($GUI_CSV_in_function, "", @SW_HIDE)
  	EndSelect
 EndFunc


Func CancelMultiDropforB()
   $DidIdoSomethingforA = False
   $DidIdoSomethingforB = False
   $DidIdoSomethingforC = False
   $DidIdoSomethingforD = False
   $DidIdoSomethingforE = False
   $DidIdoSomethingforF = False
   $DidIdoSomethingforG = False
   $DidIdoSomethingforH = False
   GUICtrlSetState($MultiDropBOn, $GUI_HIDE)
   GUICtrlSetState($MultiDropB, $GUI_SHOW)
   GUICtrlSetState($InputBoxOnMap,$GUI_HIDE)
   GUICtrlSetState($AddCSV,$GUI_HIDE)
   GUICtrlSetState($DoubleMultiDropLeftUp, $GUI_HIDE)
   If $MultiDropIsSetforB = 1 Then
	   GUICtrlSetState($aAddTile0,$GUI_HIDE)
	   GUICtrlSetState($aAddTile1,$GUI_HIDE)
       GUICtrlSetState($aAddTile2,$GUI_HIDE)
	   $LOGEnter = "For B Line, Multi Drop Points are unset!" & @CRLF & "------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
	   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
   EndIf
   GUISetState(@SW_HIDE, $GUI_MultiDropforB_in_function)
   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
   ResetGuiforB()
EndFunc

Func OkMultiDropforB()


   Local $txtforyesorno
   Local $errorInMultitouchforB
   Local $txtforok
   Local $correctsettings

   Select

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" And Number(GUICtrlRead($1stPointLowerSleepforB)) > Number(GUICtrlRead($1stPointUpperSleepforB))
		 $txtforyesorno = "At your 1st Point, first sleep value ( " & GUICtrlRead($1stPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($1stPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($1stPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($1stPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($1stPointLowerSleepforB , Number(GUICtrlRead($1stPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop2ndPointforB) <> "Don't Use" And Number(GUICtrlRead($2ndPointLowerSleepforB)) > Number(GUICtrlRead($2ndPointUpperSleepforB))
		 $txtforyesorno = "At your 2nd Point, first sleep value ( " & GUICtrlRead($2ndPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($2ndPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($2ndPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($2ndPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($2ndPointLowerSleepforB , Number(GUICtrlRead($2ndPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop3rdPointforB) <> "Don't Use" And Number(GUICtrlRead($3rdPointLowerSleepforB)) > Number(GUICtrlRead($3rdPointUpperSleepforB))
		 $txtforyesorno = "At your 3rd Point, first sleep value ( " & GUICtrlRead($3rdPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($3rdPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($3rdPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($3rdPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($3rdPointLowerSleepforB , Number(GUICtrlRead($3rdPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop4thPointforB) <> "Don't Use" And Number(GUICtrlRead($4thPointLowerSleepforB)) > Number(GUICtrlRead($4thPointUpperSleepforB))
		 $txtforyesorno = "At your 4th Point, first sleep value ( " & GUICtrlRead($4thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($4thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($4thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($4thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($4thPointLowerSleepforB , Number(GUICtrlRead($4thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop5thPointforB) <> "Don't Use" And Number(GUICtrlRead($5thPointLowerSleepforB)) > Number(GUICtrlRead($5thPointUpperSleepforB))
		 $txtforyesorno = "At your 5th Point, first sleep value ( " & GUICtrlRead($5thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($5thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($5thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($5thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($5thPointLowerSleepforB , Number(GUICtrlRead($5thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop6thPointforB) <> "Don't Use" And Number(GUICtrlRead($6thPointLowerSleepforB)) > Number(GUICtrlRead($6thPointUpperSleepforB))
		 $txtforyesorno = "At your 6th Point, first sleep value ( " & GUICtrlRead($6thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($6thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($6thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($6thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($6thPointLowerSleepforB , Number(GUICtrlRead($6thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop7thPointforB) <> "Don't Use" And Number(GUICtrlRead($7thPointLowerSleepforB)) > Number(GUICtrlRead($7thPointUpperSleepforB))
		 $txtforyesorno = "At your 7th Point, first sleep value ( " & GUICtrlRead($7thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($7thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($7thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($7thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($7thPointLowerSleepforB , Number(GUICtrlRead($7thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop8thPointforB) <> "Don't Use" And Number(GUICtrlRead($8thPointLowerSleepforB)) > Number(GUICtrlRead($8thPointUpperSleepforB))
		 $txtforyesorno = "At your 8th Point, first sleep value ( " & GUICtrlRead($8thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($8thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($8thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($8thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($8thPointLowerSleepforB , Number(GUICtrlRead($8thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop9thPointforB) <> "Don't Use" And Number(GUICtrlRead($9thPointLowerSleepforB)) > Number(GUICtrlRead($9thPointUpperSleepforB))
		 $txtforyesorno = "At your 9th Point, first sleep value ( " & GUICtrlRead($9thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($9thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($9thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($9thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($9thPointLowerSleepforB , Number(GUICtrlRead($9thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop10thPointforB) <> "Don't Use" And Number(GUICtrlRead($10thPointLowerSleepforB)) > Number(GUICtrlRead($10thPointUpperSleepforB))
		 $txtforyesorno = "At your 10th Point, first sleep value ( " & GUICtrlRead($10thPointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($10thPointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($10thPointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($10thPointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($10thPointLowerSleepforB , Number(GUICtrlRead($10thPointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_UNCHECKED And GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforB) = "" And GUICtrlRead($InputLineBeginingforB) = "" And GUICtrlRead($InputLineEndingforB) = "" And Number(GUICtrlRead($InputLinePointLowerSleepforB)) = 50 And Number(GUICtrlRead($InputLinePointUpperSleepforB)) = 70
		 $txtforok = "You choose Multi Line Points in Order settings, but nothing is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And (Number(GUICtrlRead($InputLineBeginingforB)) > 10 Or GUICtrlRead($InputLineBeginingforB) = "" Or Number(GUICtrlRead($InputLineEndingforB)) < 1 Or Number(GUICtrlRead($InputLineEndingforB)) > 10 Or GUICtrlRead($InputLineEndingforB) = "")
		 $txtforok = "To let bot drop your " & $LOGName & "(s) in order, your points have to be range of 1 and 10." & @CRLF & _
					 "But, yours are " &  Number(GUICtrlRead($InputLineBeginingforB)) & " and " & Number(GUICtrlRead($InputLineEndingforB))
		 MsgBox($MB_OK + $MB_ICONWARNING,"Incorrect Values of Drop Points", $txtforok)

	  Case GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And (Number(GUICtrlRead($ArmySizeinLineforB)) = 0 Or GUICtrlRead($ArmySizeinLineforB) = "")
		 $txtforyesorno = "Your number of " & $LOGName & "(s) is/are " & Number(GUICtrlRead($ArmySizeinLineforB)) & _
						   " . It has to be more than 0" & @CRLF & "Value has to be at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforB))-Number(GUICtrlRead($InputLineEndingforB)))) + 1 & _
						   " or more!" & @CRLF & "Becuase your army will drop between point " & GUICtrlRead($InputLineBeginingforB) & " and " & GUICtrlRead($InputLineEndingforB) & _
						   ". There is/are "  & Number(Abs(Number(GUICtrlRead($InputLineBeginingforB))-Number(GUICtrlRead($InputLineEndingforB)))) + 1 & " point(s)." & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"Number of " & $LOGName & "(s) cannot be empty or zero!",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforB, Number(Abs(Number(GUICtrlRead($InputLineBeginingforB))-Number(GUICtrlRead($InputLineEndingforB)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And Number(GUICtrlRead($InputLineBeginingforB)) > 0 And Number(GUICtrlRead($InputLineEndingforB)) < 11 And Number(GUICtrlRead($ArmySizeinLineforB)) < Number(Abs(Number(GUICtrlRead($InputLineBeginingforB))-Number(GUICtrlRead($InputLineEndingforB)))) + 1
		 $txtforyesorno = "To let bot drop your " & $LOGName & "(s) in order, your Troop Size have to be equal or greater than interval points that you choose." & @CRLF & _
						   "Your interval is between " &  Number(GUICtrlRead($InputLineBeginingforB)) & " and " & Number(GUICtrlRead($InputLineEndingforB)) & _
						   "That means, your Troop Size have to be equal at least " & Number(Abs(Number(GUICtrlRead($InputLineBeginingforB))-Number(GUICtrlRead($InputLineEndingforB)))) + 1 & @CRLF & _
						   "You can fix it or, Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"Insufficient Troop", $txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			GuiCtrlSetData($ArmySizeinLineforB, Number(Abs(Number(GUICtrlRead($InputLineBeginingforB))-Number(GUICtrlRead($InputLineEndingforB)))) + 1)
		 EndIf

	  Case GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And Number(GUICtrlRead($InputLinePointLowerSleepforB)) > Number(GUICtrlRead($InputLinePointUpperSleepforB))
		 $txtforyesorno = "First sleep value has to be lower than second.,In Settings, first sleep value ( " & GUICtrlRead($InputLinePointLowerSleepforB) & _
						   " ms.) is greater than second sleep value ( " & GUICtrlRead($InputLinePointUpperSleepforB) & " ms.)." & @CRLF & _
						   "I'll make first sleep value lower than second or you can fix it manualy" & @CRLF & _
						   "Shall I fix it for you?"
		 $errorInMultitouchforB = MsgBox($MB_YESNO + $MB_ICONWARNING,"First sleep value has to be lower than second.",$txtforyesorno)
		 If $errorInMultitouchforB = $IDYES Then
			If Number(GUICtrlRead($InputLinePointUpperSleepforB)) = 0 Then
			   GuiCtrlSetData($InputLinePointLowerSleepforB , 0)
			Else
			   GuiCtrlSetData($InputLinePointLowerSleepforB , Number(GUICtrlRead($InputLinePointUpperSleepforB))-1)
			EndIf
		 EndIf

	  Case GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($RadioForLineforB) = $GUI_UNCHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) = "Don't Use"
		 $txtforok ="You choose Multi Mixed Points in Order settings, but no drop point is set." & @CRLF & _
					 "Please make your setting correct." & @CRLF & _
					 "You can leave from Multi Drop Settings' menu by clicking CANCEL"
		 MsgBox($MB_OK + $MB_ICONWARNING,"Missing Values", $txtforok)

	  Case Else
		 $SideType = "_B"
		 $AddTileChoose = False
		 GUICtrlSetBkColor($GuiLastAddTilePoint,0xFF0000)
		 GUICtrlSetColor($GuiLastAddTilePoint, 0xFFFFFF)
		 $ArmySizeforMixedDropPointforB = 0
		 $MultiDropIsSetforA = 0
		 $MultiDropIsSetforB = 0
		 $MultiDropIsSetforC = 0
		 $MultiDropIsSetforD = 0
		 $MultiDropIsSetforE = 0
		 $MultiDropIsSetforF = 0
		 $MultiDropIsSetforG = 0
		 $MultiDropIsSetforH = 0
		 If GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
		    $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
		    If GUICtrlRead($ComboMultiDrop2ndPointforB) <> "Don't Use" Then
			   $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
			   If GUICtrlRead($ComboMultiDrop3rdPointforB) <> "Don't Use" Then
				  $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
				  If GUICtrlRead($ComboMultiDrop4thPointforB) <> "Don't Use" Then
					 $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
					 If GUICtrlRead($ComboMultiDrop5thPointforB) <> "Don't Use" Then
						$ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
						If GUICtrlRead($ComboMultiDrop6thPointforB) <> "Don't Use" Then
						   $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
						   If GUICtrlRead($ComboMultiDrop7thPointforB) <> "Don't Use" Then
							  $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
							  If GUICtrlRead($ComboMultiDrop8thPointforB) <> "Don't Use" Then
								 $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
								 If GUICtrlRead($ComboMultiDrop9thPointforB) <> "Don't Use" Then
									$ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
									If GUICtrlRead($ComboMultiDrop10thPointforB) <> "Don't Use" Then
									   $ArmySizeforMixedDropPointforB = $ArmySizeforMixedDropPointforB + 1
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
		 If GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
			$txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforB & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
									"1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forB & " (" & Number(GUICtrlRead($1stPointLowerSleepforB)) & _
									" - "& Number(GUICtrlRead($1stPointUpperSleepforB)) & " ms.)"
			$LOGEnter =  "Your " & $ArmySizeforMixedDropPointforB & " drop point(s) is/are set with 'Multi Mixed Point' Option for side " & $SideType & @CRLF & _
						 "Your Point(s) is/are in order : Point " & $MultiMixedDropPoint1forB
			If GUICtrlRead($ComboMultiDrop2ndPointforB) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
									   "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forB & " (" & Number(GUICtrlRead($2ndPointLowerSleepforB)) & _
									   " - "& Number(GUICtrlRead($2ndPointUpperSleepforB)) & " ms.)"
			   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint2forB
			   If GUICtrlRead($ComboMultiDrop3rdPointforB) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
										  "3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forB & " ( " & Number(GUICtrlRead($3rdPointLowerSleepforB)) & _
										  " - "& Number(GUICtrlRead($3rdPointUpperSleepforB)) & " ms.)"
				  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint3forB
				  If GUICtrlRead($ComboMultiDrop4thPointforB) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
											 "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forB & " ( " & Number(GUICtrlRead($4thPointLowerSleepforB)) & _
											 " - "& Number(GUICtrlRead($4thPointUpperSleepforB)) & " ms.)"
					 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint4forB
					 If GUICtrlRead($ComboMultiDrop5thPointforB) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												"5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forB & " ( " & Number(GUICtrlRead($5thPointLowerSleepforB)) & _
												" - "& Number(GUICtrlRead($5thPointUpperSleepforB)) & " ms.)"
						$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint5forB
						If GUICtrlRead($ComboMultiDrop6thPointforB) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
												   "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forB & " ( " & Number(GUICtrlRead($6thPointLowerSleepforB)) & _
												   " - "& Number(GUICtrlRead($6thPointUpperSleepforB)) & " ms.)"
						   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint6forB
						   If GUICtrlRead($ComboMultiDrop7thPointforB) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
													  "7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forB & " ( " & Number(GUICtrlRead($7thPointLowerSleepforB)) & _
													  " - "& Number(GUICtrlRead($7thPointUpperSleepforB)) & " ms.)"
							  $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint7forB
							  If GUICtrlRead($ComboMultiDrop8thPointforB) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
														 "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forB & " ( " & Number(GUICtrlRead($8thPointLowerSleepforB)) & _
														 " - "& Number(GUICtrlRead($8thPointUpperSleepforB)) & " ms.)"
								 $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint8forB
								 If GUICtrlRead($ComboMultiDrop9thPointforB) <> "Don't Use" Then
									$txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															"9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forB & " ( " & Number(GUICtrlRead($9thPointLowerSleepforB)) & _
															" - "& GUICtrlRead($9thPointUpperSleepforB) & " ms.)"
									$LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint9forB
									If GUICtrlRead($ComboMultiDrop10thPointforB) <> "Don't Use" Then
									   $txtformultimixedLog = $txtformultimixedLog & "," & @CRLF &  _
															   "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forB & " ( " & Number(GUICtrlRead($10thPointLowerSleepforB)) & _
															   " - "& Number(GUICtrlRead($10thPointUpperSleepforB)) & " ms.)"
									   $LOGEnter =  $LOGEnter & ", Point " & $MultiMixedDropPoint10forB
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
		 If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
			 $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _A at the same time with same settings."
		 EndIf
		 $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"

		 If GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
			$txtforyesorno = $txtformultimixedLog
			If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Also, your troops that you set will drop from side _A at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforB = 1
			   GUICtrlSetState($MultiDropB, $GUI_HIDE)
			   GUICtrlSetState($MultiDropBOn, $GUI_SHOW)
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
			   CheckboxDoubleforB()
			   GUICtrlSetState($RandomnessSlider,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_ENABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_ENABLE)
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforB_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
		 ElseIf GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforB) <> "" And GUICtrlRead($InputLineBeginingforB) <> "" And GUICtrlRead($InputLineEndingforB) <> "" Then
			$txtforyesorno = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						     "with " & Number(GUICtrlRead($ArmySizeinLineforB)) & " " & $LOGName & "(s) between point " & Number(GUICtrlRead($InputLineBeginingforB)) & _
							 " and " & GUICtrlRead($InputLineEndingforB) & " from "
							 If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "center of the map to corner." & @CRLF
							 ElseIf GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Then
								$txtforyesorno = $txtforyesorno & "corner of the map to center." & @CRLF
							 EndIf
			$txtforyesorno = $txtforyesorno & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforB)) & " - " & _
											  GUICtrlRead($InputLinePointUpperSleepforB) & " ms. (1000ms. = 1 second)" & @CRLF
			If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
				$txtforyesorno = $txtforyesorno & @CRLF & "Moreover, your troops that you set will drop from side _A at the same time with same settings."
			EndIf
			$txtforyesorno = $txtforyesorno & @CRLF & @CRLF & "Are You sure?"
			$correctsettings = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"Your Settings are Correct", $txtforyesorno)
			If $correctsettings = $IDYES Then
			   $MultiDropIsSetforB = 1
			   GUICtrlSetState($MultiDropB, $GUI_HIDE)
			   GUICtrlSetState($MultiDropBOn, $GUI_SHOW)
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
			   CheckboxDoubleforB()
			   GUICtrlSetState($RandomnessSlider,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel,$GUI_DISABLE)
			   GUICtrlSetState($RandomnessSliderLabel2,$GUI_DISABLE)
			   $LOGEnter = "Your drop points are set with 'Multi Line Points' Option for side " & $SideType & @CRLF & _
						   GUICtrlRead($ArmySizeinLineforB) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforB)) & _
						   " and " & Number(GUICtrlRead($InputLineEndingforB)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center in Side " & $SideType & "." & @CRLF
				  EndIf
			   $LOGEnter = $LOGEnter & "Also each " & $LOGName & "(s) will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforB)) & _
						   " - " & Number(GUICtrlRead($InputLinePointUpperSleepforB)) & " ms. (1000ms. = 1 second)"
			   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
				   $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _A at the same time with same settings."
			   EndIf
			   $LOGEnter = $LOGEnter & @CRLF & "After Choosing Addtile, If you press 'ADD CSV' button your drop point(s) will add to your CSV"
			   _GUICtrlRichEdit_SetCharColor ( $LOG ,0x3B509F)
			   _GUICtrlRichEdit_AppendText($LOG,$LOGEnter & @CRLF)
			   GUISetState(@SW_HIDE, $GUI_MultiDropforB_in_function)
			   WinSetState($GUI_CSV_in_function, "", @SW_SHOW)
			Else
			   $LOGEnter = ""
			EndIf
			$LOGEnter = ""
		 EndIf
  EndSelect


EndFunc

Func ResetGuiforB()
   EnableMixedGuiforB()
   GUICtrlSetState($RadioForRandomforB, $GUI_CHECKED)
   GUICtrlSetState($RadioCentertoCornerforB, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforB, $GUI_UNCHECKED)
   GUICtrlSetState($RadioForLineforB, $GUI_UNCHECKED)
   GUICtrlSetState($DoubleMultiDropforB, $GUI_UNCHECKED)
   CheckboxDoubleforB()
   GuiCtrlSetData($1stPointLowerSleepforB, "50")
   GuiCtrlSetData($2ndPointLowerSleepforB, "50")
   GuiCtrlSetData($3rdPointLowerSleepforB, "50")
   GuiCtrlSetData($4thPointLowerSleepforB, "50")
   GuiCtrlSetData($5thPointLowerSleepforB, "50")
   GuiCtrlSetData($6thPointLowerSleepforB, "50")
   GuiCtrlSetData($7thPointLowerSleepforB, "50")
   GuiCtrlSetData($8thPointLowerSleepforB, "50")
   GuiCtrlSetData($9thPointLowerSleepforB, "50")
   GuiCtrlSetData($10thPointLowerSleepforB, "50")
   GuiCtrlSetData($1stPointUpperSleepforB, "70")
   GuiCtrlSetData($2ndPointUpperSleepforB, "70")
   GuiCtrlSetData($3rdPointUpperSleepforB, "70")
   GuiCtrlSetData($4thPointUpperSleepforB, "70")
   GuiCtrlSetData($5thPointUpperSleepforB, "70")
   GuiCtrlSetData($6thPointUpperSleepforB, "70")
   GuiCtrlSetData($7thPointUpperSleepforB, "70")
   GuiCtrlSetData($8thPointUpperSleepforB, "70")
   GuiCtrlSetData($9thPointUpperSleepforB, "70")
   GuiCtrlSetData($10thPointUpperSleepforB, "70")
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop1stPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop1stPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop1stPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop2ndPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop2ndPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop2ndPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop3rdPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop3rdPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop3rdPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop4thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop4thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop4thPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop5thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop5thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop5thPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop6thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop6thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop6thPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop7thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop7thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop7thPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop8thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop8thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop8thPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop9thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop9thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop9thPointforB)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforB)
   GuiCtrlSetData($ArmySizeinLineforB, "")
   GuiCtrlSetData($InputLinePointLowerSleepforB, "50")
   GuiCtrlSetData($InputLinePointLowerSleepforB, "50")
   GuiCtrlSetData($InputLineBeginingforB, "")
   GuiCtrlSetData($InputLineEndingforB, "")
   GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
   _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
   _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
   _GUICtrlComboBox_EndUpdate($RandomnessSlider)
   ComboRandomnessCombo()
   DisableLineGuiforB()
   DisableUnderPoint1forB()
   DisablePoint2andBelowforB()
EndFunc

Func LogEnterforB()
   Local $txtformultimixedLog
   If GUICtrlRead($RadioForRandomforB) = $GUI_CHECKED And GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Then
	  $txtformultimixedLog = "Your " & $ArmySizeforMixedDropPointforB & " drop point(s) is/are added to CSV" & @CRLF & _
							  "1st " & $LOGName & " will drop from Point " & $MultiMixedDropPoint1forB & " and next troop will drop after " & Number(GUICtrlRead($1stPointLowerSleepforB)) & _
							  " - "& Number(GUICtrlRead($1stPointUpperSleepforB)) & " ms. "
	  $LOGEnter =  $txtformultimixedLog
	  $UNDOLine = 1
	  If GUICtrlRead($ComboMultiDrop2ndPointforB) <> "Don't Use" Then
		 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
								 "2nd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint2forB & " and next troop will drop after " & Number(GUICtrlRead($2ndPointLowerSleepforB)) & _
								 " - "& Number(GUICtrlRead($2ndPointUpperSleepforB)) & " ms. "
		 $LOGEnter =  $txtformultimixedLog
		 $UNDOLine = 2
		 If GUICtrlRead($ComboMultiDrop3rdPointforB) <> "Don't Use" Then
			$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									"3rd " & $LOGName & " will drop from Point " & $MultiMixedDropPoint3forB & " and next troop will drop after " & Number(GUICtrlRead($3rdPointLowerSleepforB)) & _
									" - "& Number(GUICtrlRead($3rdPointUpperSleepforB)) & " ms. "
			$LOGEnter =  $txtformultimixedLog
			$UNDOLine = 3
			If GUICtrlRead($ComboMultiDrop4thPointforB) <> "Don't Use" Then
			   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
									   "4th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint4forB & " and next troop will drop after " & Number(GUICtrlRead($4thPointLowerSleepforB)) & _
									   " - "& Number(GUICtrlRead($4thPointUpperSleepforB)) & " ms. "
			   $LOGEnter =  $txtformultimixedLog
			   $UNDOLine = 4
			   If GUICtrlRead($ComboMultiDrop5thPointforB) <> "Don't Use" Then
				  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
										  "5th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint5forB & " and next troop will drop after " & Number(GUICtrlRead($5thPointLowerSleepforB)) & _
										  " - "& Number(GUICtrlRead($5thPointUpperSleepforB)) & " ms. "
				  $LOGEnter =  $txtformultimixedLog
				  $UNDOLine = 5
				  If GUICtrlRead($ComboMultiDrop6thPointforB) <> "Don't Use" Then
					 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
											 "6th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint6forB & " and next troop will drop after " & Number(GUICtrlRead($6thPointLowerSleepforB)) & _
											 " - "& Number(GUICtrlRead($6thPointUpperSleepforB)) & " ms. "
					 $LOGEnter =  $txtformultimixedLog
					 $UNDOLine = 6
					 If GUICtrlRead($ComboMultiDrop7thPointforB) <> "Don't Use" Then
						$txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												"7th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint7forB & " and next troop will drop after " & Number(GUICtrlRead($7thPointLowerSleepforB)) & _
												" - "& Number(GUICtrlRead($7thPointUpperSleepforB)) & " ms. "
						$LOGEnter =  $txtformultimixedLog
						$UNDOLine = 7
						If GUICtrlRead($ComboMultiDrop8thPointforB) <> "Don't Use" Then
						   $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
												   "8th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint8forB & " and next troop will drop after " & Number(GUICtrlRead($8thPointLowerSleepforB)) & _
												   " - "& Number(GUICtrlRead($8thPointUpperSleepforB)) & " ms. "
						   $LOGEnter =  $txtformultimixedLog
						   $UNDOLine = 8
						   If GUICtrlRead($ComboMultiDrop9thPointforB) <> "Don't Use" Then
							  $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
													  "9th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint9forB & " and next troop will drop after " & Number(GUICtrlRead($9thPointLowerSleepforB)) & _
													  " - "& Number(GUICtrlRead($9thPointUpperSleepforB)) & " ms. "
							  $LOGEnter =  $txtformultimixedLog
							  $UNDOLine = 9
							  If GUICtrlRead($ComboMultiDrop10thPointforB) <> "Don't Use" Then
								 $txtformultimixedLog = $txtformultimixedLog & @CRLF & _
														 "10th " & $LOGName & " will drop from Point " & $MultiMixedDropPoint10forB & " and next troop will drop after " & Number(GUICtrlRead($10thPointLowerSleepforB)) & _
														 " - "& Number(GUICtrlRead($10thPointUpperSleepforB)) & " ms. "
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
   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
	   $LOGEnter = $LOGEnter & @CRLF & "Also, your troops that you set will drop from side _A at the same time with same settings."
   EndIf

   If GUICtrlRead($RadioForLineforB) = $GUI_CHECKED And GUICtrlRead($ArmySizeinLineforB) <> "" And GUICtrlRead($InputLineBeginingforB) <> "" And GUICtrlRead($InputLineEndingforB) <> "" Then
	  $LOGEnter = "Your drop points are added to CSV" & @CRLF & _
				  Number(GUICtrlRead($ArmySizeinLineforB)) & " " & $LOGName & "(s) will drop between point " & Number(GUICtrlRead($InputLineBeginingforB)) & _
				  " and " & Number(GUICtrlRead($InputLineEndingforB)) & " from "
				  If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "center of the map to corner in Side " & $SideType & "." & @CRLF
				  ElseIf GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Then
					 $LOGEnter = $LOGEnter & "cornor of the map to center. in Side " & $SideType & "." & @CRLF
				  EndIf
	  $LOGEnter = $LOGEnter & "Also each " & $LOGName & " will sleep " & Number(GUICtrlRead($InputLinePointLowerSleepforB)) & _
							  " - " & Number(GUICtrlRead($InputLinePointUpperSleepforB)) & " ms. (1000ms. = 1 second)"
	  If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
		 $LOGEnter = $LOGEnter & @CRLF & "Moreover, your troops that you set will drop from side _A at the same time with same settings."
	  EndIf
	  If GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
		 $UNDOLine = 1
	  ElseIf GUICtrlRead($RadioCentertoCornerforB) = $GUI_CHECKED Then
		 $UNDOLine = 6
	  EndIf
   EndIf


EndFunc

Func CheckboxDoubleforB()
   If GUICtrlRead($DoubleMultiDropforB) = $GUI_CHECKED Then
	 GUICtrlSetState($lblDoubleMultiDropforB, $GUI_ENABLE)
	 GUICtrlSetState($PicforLinePointforB, $GUI_HIDE)
	 GUICtrlSetState($PicforLineDoublePointforB, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftUp, $GUI_SHOW)
   Else
	 GUICtrlSetState($lblDoubleMultiDropforB, $GUI_DISABLE)
	 GUICtrlSetState($PicforLineDoublePointforB, $GUI_HIDE)
	 GUICtrlSetState($PicforLinePointforB, $GUI_SHOW)
	 GUICtrlSetState($DoubleMultiDropLeftUp, $GUI_HIDE)
   EndIf
EndFunc

Func CheckComboMultiDrop1stPointforB()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop1stPointforB)
	  Case 0
		 $MultiMixedDropPoint1forB = 0
		 GUICtrlSetData($1stPointLowerSleepforB, "50")
		 GUICtrlSetData($1stPointUpperSleepforB, "70")
		 DisableUnderPoint1forB()
		 DisablePoint2andBelowforB()
	  case 1
		 $MultiMixedDropPoint1forB = 1
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
      case 2
		 $MultiMixedDropPoint1forB = 2
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 3
		 $MultiMixedDropPoint1forB = 3
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 4
		 $MultiMixedDropPoint1forB = 4
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 5
		 $MultiMixedDropPoint1forB = 5
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 6
		 $MultiMixedDropPoint1forB = 6
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 7
		 $MultiMixedDropPoint1forB = 7
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 8
		 $MultiMixedDropPoint1forB = 8
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 9
		 $MultiMixedDropPoint1forB = 9
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
	  case 10
		 $MultiMixedDropPoint1forB = 10
		 EnableUnderPoint1forB()
		 EnablePoint2forB()
   EndSwitch
EndFunc

Func CheckComboMultiDrop2ndPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop2ndPointforB)
	  Case 0
		 $MultiMixedDropPoint2forB = 0
		 GUICtrlSetData($2ndPointLowerSleepforB, "50")
		 GUICtrlSetData($2ndPointUpperSleepforB, "70")
		 DisableUnderPoint2forB()
		 DisablePoint3andBelowforB()
	  case 1
		 $MultiMixedDropPoint2forB = 1
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 2
		 $MultiMixedDropPoint2forB = 2
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 3
		 $MultiMixedDropPoint2forB = 3
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 4
		 $MultiMixedDropPoint2forB = 4
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 5
		 $MultiMixedDropPoint2forB = 5
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 6
		 $MultiMixedDropPoint2forB = 6
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 7
		 $MultiMixedDropPoint2forB = 7
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 8
		 $MultiMixedDropPoint2forB = 8
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 9
		 $MultiMixedDropPoint2forB = 9
		 EnableUnderPoint2forB()
		 EnablePoint3forB()
	  case 10
		 $MultiMixedDropPoint2forB = 10
		 EnableUnderPoint2forB()
   EndSwitch
EndFunc
Func CheckComboMultiDrop3rdPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop3rdPointforB)
	  Case 0
		 $MultiMixedDropPoint3forB = 0
		 GUICtrlSetData($3rdPointLowerSleepforB, "50")
		 GUICtrlSetData($3rdPointUpperSleepforB, "70")
		 DisableUnderPoint3forB()
		 DisablePoint4andBelowforB()
	  case 1
		 $MultiMixedDropPoint3forB = 1
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 2
		 $MultiMixedDropPoint3forB = 2
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 3
		 $MultiMixedDropPoint3forB = 3
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 4
		 $MultiMixedDropPoint3forB = 4
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 5
		 $MultiMixedDropPoint3forB = 5
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 6
		 $MultiMixedDropPoint3forB = 6
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 7
		 $MultiMixedDropPoint3forB = 7
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 8
		 $MultiMixedDropPoint3forB = 8
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 9
		 $MultiMixedDropPoint3forB = 9
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
	  case 10
		 $MultiMixedDropPoint3forB = 10
		 EnableUnderPoint3forB()
		 EnablePoint4forB()
   EndSwitch

 EndFunc

 Func CheckComboMultiDrop4thPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop4thPointforB)
	  Case 0
		 $MultiMixedDropPoint4forB = 0
		 GUICtrlSetData($4thPointLowerSleepforB, "50")
		 GUICtrlSetData($4thPointUpperSleepforB, "70")
		 DisableUnderPoint4forB()
		 DisablePoint5andBelowforB()
	  case 1
		 $MultiMixedDropPoint4forB = 1
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 2
		 $MultiMixedDropPoint4forB = 2
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 3
		 $MultiMixedDropPoint4forB = 3
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 4
		 $MultiMixedDropPoint4forB = 4
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 5
		 $MultiMixedDropPoint4forB = 5
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 6
		 $MultiMixedDropPoint4forB = 6
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 7
		 $MultiMixedDropPoint4forB = 7
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 8
		 $MultiMixedDropPoint4forB = 8
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 9
		 $MultiMixedDropPoint4forB = 9
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
	  case 10
		 $MultiMixedDropPoint4forB = 10
		 EnableUnderPoint4forB()
		 EnablePoint5forB()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop5thPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop5thPointforB)
	  Case 0
		 $MultiMixedDropPoint5forB = 0
		 GUICtrlSetData($5thPointLowerSleepforB, "50")
		 GUICtrlSetData($5thPointUpperSleepforB, "70")
		 DisableUnderPoint5forB()
		 DisablePoint6andBelowforB()
	  case 1
		 $MultiMixedDropPoint5forB = 1
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 2
		 $MultiMixedDropPoint5forB = 2
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 3
		 $MultiMixedDropPoint5forB = 3
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 4
		 $MultiMixedDropPoint5forB = 4
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 5
		 $MultiMixedDropPoint5forB = 5
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 6
		 $MultiMixedDropPoint5forB = 6
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 7
		 $MultiMixedDropPoint5forB = 7
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 8
		 $MultiMixedDropPoint5forB = 8
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 9
		 $MultiMixedDropPoint5forB = 9
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
	  case 10
		 $MultiMixedDropPoint5forB = 10
		 EnableUnderPoint5forB()
		 EnablePoint6forB()
   EndSwitch
EndFunc
 Func CheckComboMultiDrop6thPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop6thPointforB)
	  Case 0
		 $MultiMixedDropPoint6forB = 0
		 GUICtrlSetData($6thPointLowerSleepforB, "50")
		 GUICtrlSetData($6thPointUpperSleepforB, "70")
		 DisableUnderPoint6forB()
		 DisablePoint7andBelowforB()
	  case 1
		 $MultiMixedDropPoint6forB = 1
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 2
		 $MultiMixedDropPoint6forB = 2
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 3
		 $MultiMixedDropPoint6forB = 3
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 4
		 $MultiMixedDropPoint6forB = 4
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 5
		 $MultiMixedDropPoint6forB = 5
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 6
		 $MultiMixedDropPoint6forB = 6
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 7
		 $MultiMixedDropPoint6forB = 7
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 8
		 $MultiMixedDropPoint6forB = 8
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 9
		 $MultiMixedDropPoint6forB = 9
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
	  case 10
		 $MultiMixedDropPoint6forB = 10
		 EnableUnderPoint6forB()
		 EnablePoint7forB()
  EndSwitch
EndFunc

 Func CheckComboMultiDrop7thPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop7thPointforB)
	  Case 0
		 $MultiMixedDropPoint7forB = 0
		 GUICtrlSetData($7thPointLowerSleepforB, "50")
		 GUICtrlSetData($7thPointUpperSleepforB, "70")
		 DisableUnderPoint7forB()
		 DisablePoint8andBelowforB()
	  case 1
		 $MultiMixedDropPoint7forB = 1
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 2
		 $MultiMixedDropPoint7forB = 2
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 3
		 $MultiMixedDropPoint7forB = 3
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 4
		 $MultiMixedDropPoint7forB = 4
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 5
		 $MultiMixedDropPoint7forB = 5
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 6
		 $MultiMixedDropPoint7forB = 6
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 7
		 $MultiMixedDropPoint7forB = 7
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 8
		 $MultiMixedDropPoint7forB = 8
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 9
		 $MultiMixedDropPoint7forB = 9
		 EnableUnderPoint7forB()
		 EnablePoint8forB()
	  case 10
		 $MultiMixedDropPoint7forB = 10
		 EnableUnderPoint7forB()
		 EnablePoint8forB()

   EndSwitch
EndFunc

Func CheckComboMultiDrop8thPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop8thPointforB)
	  Case 0
		 $MultiMixedDropPoint8forB = 0
		 GUICtrlSetData($8thPointLowerSleepforB, "50")
		 GUICtrlSetData($8thPointUpperSleepforB, "70")
		 DisableUnderPoint8forB()
		 DisablePoint9andBelowforB()
	  case 1
		 $MultiMixedDropPoint8forB = 1
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 2
		 $MultiMixedDropPoint8forB = 2
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 3
		 $MultiMixedDropPoint8forB = 3
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 4
		 $MultiMixedDropPoint8forB = 4
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 5
		 $MultiMixedDropPoint8forB = 5
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 6
		 $MultiMixedDropPoint8forB = 6
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 7
		 $MultiMixedDropPoint8forB = 7
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 8
		 $MultiMixedDropPoint8forB = 8
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 9
		 $MultiMixedDropPoint8forB = 9
		 EnableUnderPoint8forB()
		 EnablePoint9forB()
	  case 10
		 $MultiMixedDropPoint8forB = 10
		 EnableUnderPoint8forB()
		 EnablePoint9forB()

   EndSwitch
EndFunc
Func CheckComboMultiDrop9thPointforB()

   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop9thPointforB)
	  Case 0
		 $MultiMixedDropPoint9forB = 0
		 GUICtrlSetData($9thPointLowerSleepforB, "50")
		 GUICtrlSetData($9thPointUpperSleepforB, "70")
		 DisableUnderPoint9forB()
		 DisablePoint10andBelowforB()
	  case 1
		 $MultiMixedDropPoint9forB = 1
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 2
		 $MultiMixedDropPoint9forB = 2
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 3
		 $MultiMixedDropPoint9forB = 3
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 4
		 $MultiMixedDropPoint9forB = 4
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 5
		 $MultiMixedDropPoint9forB = 5
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 6
		 $MultiMixedDropPoint9forB = 6
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 7
		 $MultiMixedDropPoint9forB = 7
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 8
		 $MultiMixedDropPoint9forB = 8
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 9
		 $MultiMixedDropPoint9forB = 9
		 EnableUnderPoint9forB()
		 EnablePoint10forB()
	  case 10
		 $MultiMixedDropPoint9forB = 10
		 EnableUnderPoint9forB()
		 EnablePoint10forB()

   EndSwitch
EndFunc

Func CheckComboMultiDrop10thPointforB()
   Switch _GUICtrlComboBox_GetCurSel($ComboMultiDrop10thPointforB)
	  Case 0
		 $MultiMixedDropPoint10forB = 0
		 GUICtrlSetData($10thPointLowerSleepforB, "50")
		 GUICtrlSetData($10thPointUpperSleepforB, "70")
		 DisableUnderPoint10forB()
	  case 1
		 $MultiMixedDropPoint10forB = 1
		 EnableUnderPoint10forB()
	  case 2
		 $MultiMixedDropPoint10forB = 2
		 EnableUnderPoint10forB()
	  case 3
		 $MultiMixedDropPoint10forB = 3
		 EnableUnderPoint10forB()
	  case 4
		 $MultiMixedDropPoint10forB = 4
		 EnableUnderPoint10forB()
	  case 5
		 $MultiMixedDropPoint10forB = 5
		 EnableUnderPoint10forB()
	  case 6
		 $MultiMixedDropPoint10forB = 6
		 EnableUnderPoint10forB()
	  case 7
		 $MultiMixedDropPoint10forB = 7
		 EnableUnderPoint10forB()
	  case 8
		 $MultiMixedDropPoint10forB = 8
		 EnableUnderPoint10forB()
	  case 9
		 $MultiMixedDropPoint10forB = 9
		 EnableUnderPoint10forB()
	  case 10
		 $MultiMixedDropPoint10forB = 10
		 EnableUnderPoint10forB()
   EndSwitch

EndFunc


Func DisablePoint1andBelowforB()
   For $i = $ComboMultiDrop1ndPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl1forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl11forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl21forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl31forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint2andBelowforB()
   For $i = $ComboMultiDrop2ndPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl2forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl12forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl22forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $2ndPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl32forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint3andBelowforB()
   For $i = $ComboMultiDrop3rdPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl3forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl13forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl23forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $3rdPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl33forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint4andBelowforB()
   For $i = $ComboMultiDrop4thPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl4forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl14forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl24forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $4thPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl34forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint5andBelowforB()
   For $i = $ComboMultiDrop5thPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl5forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl15forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl25forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $5thPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl35forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint6andBelowforB()
   For $i = $ComboMultiDrop6thPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl6forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl16forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl26forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $6thPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl36forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint7andBelowforB()
   For $i = $ComboMultiDrop7thPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl7forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl17forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl27forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $7thPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl37forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint8andBelowforB()
   For $i = $ComboMultiDrop8thPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl8forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl18forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl28forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $8thPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl38forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint9andBelowforB()
   For $i = $ComboMultiDrop9thPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $Lbl9forB To $Lbl10forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $Lbl19forB To $Lbl20forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "50")
   Next
   For $i = $Lbl29forB To $Lbl30forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $9thPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  GUICtrlSetData($i, "70")
   Next
   For $i = $Lbl39forB To $Lbl40forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
EndFunc

Func DisablePoint10andBelowforB()
   GUICtrlSetState($ComboMultiDrop10thPointforB, $GUI_DISABLE)
   _GUICtrlComboBox_BeginUpdate($ComboMultiDrop10thPointforB)
   _GUICtrlComboBox_SelectString($ComboMultiDrop10thPointforB, "Don't Use")
   _GUICtrlComboBox_EndUpdate($ComboMultiDrop10thPointforB)
   GUICtrlSetState($Lbl10forB, $GUI_DISABLE)
   GUICtrlSetState($Lbl20forB, $GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforB, $GUI_DISABLE)
   GUICtrlSetData($10thPointLowerSleepforB, "50")
   GUICtrlSetState($Lbl30forB, $GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforB, $GUI_DISABLE)
   GUICtrlSetData($10thPointUpperSleepforB, "70")
   GUICtrlSetState($Lbl40forB, $GUI_DISABLE)
EndFunc


Func EnablePoint1forB()
   GUICtrlSetState($ComboMultiDrop1stPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl1forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($1stPointLowerSleepforB, "50")
   EndIf
   GUICtrlSetState($1stPointUpperSleepforB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($1stPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($1stPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint2forB()
   GUICtrlSetState($ComboMultiDrop2ndPointforB, $GUI_ENABLE)
  GUICtrlSetState($Lbl2forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($2ndPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($2ndPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($2ndPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($2ndPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint3forB()
   GUICtrlSetState($ComboMultiDrop3rdPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl3forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($3rdPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($3rdPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($3rdPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($3rdPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint4forB()
   GUICtrlSetState($ComboMultiDrop4thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl4forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($4thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($4thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($4thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($4thPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint5forB()
   GUICtrlSetState($ComboMultiDrop5thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl5forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($5thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($5thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($5thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($5thPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint6forB()
   GUICtrlSetState($ComboMultiDrop6thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl6forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($6thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($6thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($6thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($6thPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint7forB()
   GUICtrlSetState($ComboMultiDrop7thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl7forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($7thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($7thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint8forB()
   GUICtrlSetState($ComboMultiDrop8thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl8forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($8thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($8thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($8thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($8thPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint9forB()
   GUICtrlSetState($ComboMultiDrop9thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl9forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($9thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($9thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($9thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($9thPointUpperSleepforB, "70")
   EndIf
EndFunc
Func EnablePoint10forB()
   GUICtrlSetState($ComboMultiDrop10thPointforB, $GUI_ENABLE)
   GUICtrlSetState($Lbl10forB, $GUI_ENABLE)
   If Not Number(GUICtrlRead($10thPointLowerSleepforB)) = 50 Then
	  GUICtrlSetData($10thPointLowerSleepforB, "50")
   EndIf
   If Not Number(GUICtrlRead($10thPointUpperSleepforB)) = 70 Then
	  GUICtrlSetData($10thPointUpperSleepforB, "70")
   EndIf
EndFunc


Func ChooseLineGuiforB()
   DisableMixedGuiforB()
   EnableLineGuiforB()
EndFunc

Func ChooseMixedGuiforB()
   DisableLineGuiforB()
   EnableMixedGuiforB()
EndFunc

Func DisableMixedGuiforB()
   For $i = $ComboMultiDrop1stPointforB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
	  _GUICtrlComboBox_BeginUpdate($i)
	  _GUICtrlComboBox_SelectString($i, "Don't Use")
	  _GUICtrlComboBox_EndUpdate($i)
   Next
   For $i = $LblRandom1forB To $ComboMultiDrop10thPointforB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next
   For $i = $1stPointLowerSleepforB To $10thPointLowerSleepforB
	  GUICtrlSetData($i, "50")
   Next
   For $i = $1stPointUpperSleepforB To $10thPointUpperSleepforB
	  GUICtrlSetData($i, "70")
   Next
EndFunc

Func EnableMixedGuiforB()
   For $i = $LblRandom1forB To $LblRandom2forB
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next

   EnablePoint1forB()
   DisableUnderPoint1forB()
EndFunc

Func DisableLineGuiforB()

   GUICtrlSetData($ArmySizeinLineforB, "")
   GUICtrlSetData($InputLineBeginingforB, "")
   GUICtrlSetData($InputLineEndingforB, "")
   GUICtrlSetData($InputLinePointLowerSleepforB, "50")
   GUICtrlSetData($InputLinePointUpperSleepforB, "70")
   GUICtrlSetState($RadioCentertoCornerforB, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforB, $GUI_UNCHECKED)

   For $i = $LblLine1forB To $LblLine11forB
	  GUICtrlSetState($i, $GUI_DISABLE)
   Next


EndFunc

Func EnableLineGuiforB()
   For $i = $LblLine1forB To $LblLine11forB
	  GUICtrlSetState($i, $GUI_ENABLE)
   Next
   If Not GUICtrlRead($ArmySizeinLineforB) = "" Then
	  GUICtrlSetData($ArmySizeinLineforB, "")
   EndIf
   If Not GUICtrlRead($InputLineBeginingforB) = "" Then
	  GUICtrlSetData($InputLineBeginingforB, "")
   EndIf
   If Not GUICtrlRead($InputLineEndingforB) = "" Then
	  GUICtrlSetData($InputLineEndingforB, "")
   EndIf
   If Not GUICtrlRead($InputLinePointLowerSleepforB) = "50" Then
	  GUICtrlSetData($InputLinePointLowerSleepforB, "50")
   EndIf
   If Not GUICtrlRead($InputLinePointUpperSleepforB) = "70" Then
	  GUICtrlSetData($InputLinePointUpperSleepforB, "70")
   EndIf
   GUICtrlSetState($RadioCentertoCornerforB, $GUI_CHECKED)
   GUICtrlSetState($RadioCornertoCenterforB, $GUI_UNCHECKED)

EndFunc


Func DisableUnderPoint1forB()
   GUICtrlSetState($Lbl11forB,$GUI_DISABLE)
   GUICtrlSetState($1stPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl21forB,$GUI_DISABLE)
   GUICtrlSetState($1stPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl31forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint2forB()
   GUICtrlSetState($Lbl12forB,$GUI_DISABLE)
   GUICtrlSetState($2ndPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl22forB,$GUI_DISABLE)
   GUICtrlSetState($2ndPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl32forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint3forB()
   GUICtrlSetState($Lbl13forB,$GUI_DISABLE)
   GUICtrlSetState($3rdPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl23forB,$GUI_DISABLE)
   GUICtrlSetState($3rdPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl33forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint4forB()
   GUICtrlSetState($Lbl14forB,$GUI_DISABLE)
   GUICtrlSetState($4thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl24forB,$GUI_DISABLE)
   GUICtrlSetState($4thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl34forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint5forB()
   GUICtrlSetState($Lbl15forB,$GUI_DISABLE)
   GUICtrlSetState($5thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl25forB,$GUI_DISABLE)
   GUICtrlSetState($5thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl35forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint6forB()
   GUICtrlSetState($Lbl16forB,$GUI_DISABLE)
   GUICtrlSetState($6thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl26forB,$GUI_DISABLE)
   GUICtrlSetState($6thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl36forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint7forB()
   GUICtrlSetState($Lbl17forB,$GUI_DISABLE)
   GUICtrlSetState($7thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl27forB,$GUI_DISABLE)
   GUICtrlSetState($7thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl37forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint8forB()
   GUICtrlSetState($Lbl18forB,$GUI_DISABLE)
   GUICtrlSetState($8thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl28forB,$GUI_DISABLE)
   GUICtrlSetState($8thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl38forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint9forB()
   GUICtrlSetState($Lbl19forB,$GUI_DISABLE)
   GUICtrlSetState($9thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl29forB,$GUI_DISABLE)
   GUICtrlSetState($9thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl39forB,$GUI_DISABLE)
EndFunc
Func DisableUnderPoint10forB()
   GUICtrlSetState($Lbl20forB,$GUI_DISABLE)
   GUICtrlSetState($10thPointLowerSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl30forB,$GUI_DISABLE)
   GUICtrlSetState($10thPointUpperSleepforB,$GUI_DISABLE)
   GUICtrlSetState($Lbl40forB,$GUI_DISABLE)
EndFunc

Func EnableUnderPoint1forB()
   GUICtrlSetState($Lbl11forB,$GUI_ENABLE)
   GUICtrlSetState($1stPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl21forB,$GUI_ENABLE)
   GUICtrlSetState($1stPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl31forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint2forB()
   GUICtrlSetState($Lbl12forB,$GUI_ENABLE)
   GUICtrlSetState($2ndPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl22forB,$GUI_ENABLE)
   GUICtrlSetState($2ndPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl32forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint3forB()
   GUICtrlSetState($Lbl13forB,$GUI_ENABLE)
   GUICtrlSetState($3rdPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl23forB,$GUI_ENABLE)
   GUICtrlSetState($3rdPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl33forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint4forB()
   GUICtrlSetState($Lbl14forB,$GUI_ENABLE)
   GUICtrlSetState($4thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl24forB,$GUI_ENABLE)
   GUICtrlSetState($4thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl34forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint5forB()
   GUICtrlSetState($Lbl15forB,$GUI_ENABLE)
   GUICtrlSetState($5thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl25forB,$GUI_ENABLE)
   GUICtrlSetState($5thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl35forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint6forB()
   GUICtrlSetState($Lbl16forB,$GUI_ENABLE)
   GUICtrlSetState($6thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl26forB,$GUI_ENABLE)
   GUICtrlSetState($6thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl36forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint7forB()
   GUICtrlSetState($Lbl17forB,$GUI_ENABLE)
   GUICtrlSetState($7thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl27forB,$GUI_ENABLE)
   GUICtrlSetState($7thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl37forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint8forB()
   GUICtrlSetState($Lbl18forB,$GUI_ENABLE)
   GUICtrlSetState($8thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl28forB,$GUI_ENABLE)
   GUICtrlSetState($8thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl38forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint9forB()
   GUICtrlSetState($Lbl19forB,$GUI_ENABLE)
   GUICtrlSetState($9thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl29forB,$GUI_ENABLE)
   GUICtrlSetState($9thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl39forB,$GUI_ENABLE)
EndFunc
Func EnableUnderPoint10forB()
   GUICtrlSetState($Lbl20forB,$GUI_ENABLE)
   GUICtrlSetState($10thPointLowerSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl30forB,$GUI_ENABLE)
   GUICtrlSetState($10thPointUpperSleepforB,$GUI_ENABLE)
   GUICtrlSetState($Lbl40forB,$GUI_ENABLE)
EndFunc
Func DidIdoSomethingforB()
	If GUICtrlRead($ComboMultiDrop1stPointforB) <> "Don't Use" Or GUICtrlRead($ArmySizeinLineforB) <> "" Then
		$DidIdoSomethingforB = True
	EndIf
EndFunc

