; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Wait Control In CSV Write
; Description ...:
; Syntax ........:
; Parameters ... -: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func AddWaitButton()

	CMBWaitBreakCommandCOMBOBOX()
	$MinWait = String(_Min(Number(String(GUICtrlRead($WaitInput1))),Number(String(GUICtrlRead($WaitInput2)))))
	$MaxWait = String(_Max(Number(String(GUICtrlRead($WaitInput1))),Number(String(GUICtrlRead($WaitInput2)))))
	$LookWait = String($MinWait & "-" & $MaxWait)
	$WaitInCSV = StringLeft($LookWait & $BlankCharacters, 11)
	If GUICtrlRead($CheckWait) = $GUI_CHECKED Then
		if $WaitCommand = "           " Then
			$LOGEnter2 = "Bot will wait " & $LookWait & " ms. And will not break time until it is finished."
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait during " & $LookWait & " ms."
			$WaitforListofSteps = "Wait " & $LookWait & " ms."
		ElseIf $WaitCommand = "TH         " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if TH is destroyed."
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. Until TH is destroyed."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until TH is down."
		ElseIf $WaitCommand = "SIEGE      " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if Siege is destroyed."
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until Siege is destroyed."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until Siege is down."
		ElseIf $WaitCommand = "TH+SIEGE   " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if both TH and Siege are destroyed."
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until both TH and Siege are destroyed."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until TH & Siege is down."
		ElseIf $WaitCommand = "TH,SIEGE   " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if TH or Siege is destroyed."
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until TH or Siege are destroyed."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until TH or Siege is down."
		ElseIf $WaitCommand = "BK         " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if King is activated."
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until King is activated."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until King is Red"
		ElseIf $WaitCommand = "AQ         " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if Queen is activated"
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until Queen is activated."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until Queen is Red"
		ElseIf $WaitCommand = "GW         " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if Warden is activated"
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until Warden is activated."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until Warden is Red"
		ElseIf $WaitCommand = "RC         " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if Royal Champion is activated"
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until Royal Champion is activated."
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until Champion is Red"
		ElseIf $WaitCommand = "AQ+BK      " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if both King and Queen are activated"
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until both King and Queen are activated"
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until King & Queen is Red"
		ElseIf $WaitCommand = "AQ,BK      " Then
			$LOGEnter2 = "Wait Command added to CSV. Bot will wait " & $LookWait & " ms. , but will go on if King or Queen are activated"
			$Comment2 = $LOGEnter2
			$UndoWaitComment = "[UNDO OPERATION] Bot will not wait " & $LookWait & " ms. until King or Queen are activated"
			$WaitforListofSteps = "Wait " & $LookWait & " ms, until King or Queen is Red"
		EndIf

		$WaitCommandCSV = "WAIT  |" &$WaitInCSV& "|" & $WaitCommand & "|           |           |           |           |           |           |           |... -" & $Comment2 & @CRLF

		Local $question
		Local $ReadLastLine
		$ReadLastLine = FileReadLine($g_sSaveLocation, _FileCountLines($g_sSaveLocation))
		$question = MsgBox($MB_YESNO + $MB_ICONINFORMATION,"You have set WAIT option .",$Comment2 & @CRLF & "Are you sure?")
		If $question = $IDYES Then
			If StringLeft($ReadLastLine, 7) = "DROP  |" Or StringLeft($ReadLastLine, 7) = "WAIT  |" Then
				FileWrite($g_sSaveLocation, $WaitCommandCSV)
				_ArrayAdd($Undo_Array_CSVWrite, $WaitCommandCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, "wait" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, 0 , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, $UndoWaitComment , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				If $iStep = 0 Then
					_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 1 Then
					_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep > 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
				$iStep = $iStep + 1
			Else
				FileWrite($g_sSaveLocation, @CRLF & $WaitCommandCSV)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $WaitCommandCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, "wait" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, 0 , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, $UndoWaitComment , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				If $iStep = 0 Then
					_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 1 Then
					_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep > 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $WaitforListofSteps , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
				$iStep = $iStep + 1
			EndIf
			Local $textinlist
			$textinlist = "List of Drop Troops"&@CRLF
			For $i = UBound($StepList) - 1 To 1 Step -1
				$textinlist = $textinlist & $StepList[$i]&@CRLF
			Next
			GUICtrlSetData($ListofSteps,$textinlist)
			_GUICtrlRichEdit_SetCharColor ( $LOG ,0x1BAB28)
			_GUICtrlRichEdit_AppendText($LOG,$LOGEnter2 & @CRLF)
			$UNDOLine = 1
			GUICtrlSetState($CheckWait, $GUI_UNCHECKED)
			CheckWaitCheckBOX()
		EndIf



	EndIf




EndFunc



Func CheckWaitCheckBOX()
	if GUICtrlRead($CheckWait) = $GUI_CHECKED Then
		If GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then
			GUICtrlSetState($CheckBuilding, $GUI_UNCHECKED)
			CheckBuildingControl()
		EndIf
		If GUICtrlRead($Sleep) = $GUI_CHECKED Then
			GUICtrlSetState($Sleep, $GUI_UNCHECKED)
			SleepCheckControl()
		EndIf
		If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
			GUICtrlSetState($AddRandomXandY, $GUI_UNCHECKED)
			AddRandomXandY()
		EndIf
		_GUICtrlComboBox_BeginUpdate($RandomnessSlider)
		_GUICtrlComboBox_SelectString($RandomnessSlider, "exact Point")
		_GUICtrlComboBox_EndUpdate($RandomnessSlider)
		ComboRandomnessCombo()
		If $OneDropChoose = 1 Then
			$SideNumber = 0
			$SpellSideNumber = 0
			$AddTile = ""
			MakeAllDropANDAddtileButtonResetColor()
			GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
			GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
			GuiCtrlSetState($lblWait,$GUI_ENABLE)
			GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
			GuiCtrlSetState($lblWait2,$GUI_ENABLE)
			GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)

		ElseIf $MultiDropChoose = 1 Then
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
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforA()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforB
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforB()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforC
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforC()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforD
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforD()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforE
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforE()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforF
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforF()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforG
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforG()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case $DidIdoSomethingforH
					$yesorno = "You set your army for side " & $SideType & _
							   ". If you check Wait box, your old setting for " & $SideType &  " side will reset." & @CRLF & _
							   "Are you sure to check Wait Box?"
					$question = MsgBox($MB_YESNO + $MB_ICONWARNING,"You have set your army.",$yesorno)
					If $question = $IDYES Then
						CancelMultiDropforH()
						MakeAllDropANDAddtileButtonResetColor()
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
					EndIf
				Case Else
						GuiCtrlSetState($AddWaitButton,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput1,$GUI_ENABLE)
						GuiCtrlSetState($lblWait,$GUI_ENABLE)
						GuiCtrlSetState($WaitInput2,$GUI_ENABLE)
						GuiCtrlSetState($lblWait2,$GUI_ENABLE)
						GuiCtrlSetState($CMBWaitBreakCommand,$GUI_ENABLE)
				EndSelect
		EndIf
	Else
	     If $SideType = "_A" and $MultiDropChoose = 1 Then
			CancelMultiDropforA()
		 ElseIf $SideType = "_B" and $MultiDropChoose = 1 Then
			CancelMultiDropforB()
		 ElseIf $SideType = "_C" and $MultiDropChoose = 1 Then
			CancelMultiDropforC()
		 ElseIf $SideType = "_D" and $MultiDropChoose = 1 Then
			CancelMultiDropforD()
		 ElseIf $SideType = "_E" and $MultiDropChoose = 1 Then
			CancelMultiDropforE()
		 ElseIf $SideType = "_F" and $MultiDropChoose = 1 Then
			CancelMultiDropforF()
		 ElseIf $SideType = "_G" and $MultiDropChoose = 1 Then
			CancelMultiDropforG()
		 ElseIf $SideType = "_H" and $MultiDropChoose = 1 Then
			CancelMultiDropforH()
		 EndIf
		 MakeAllDropANDAddtileButtonResetColor()
		 GuiCtrlSetState($AddWaitButton,$GUI_DISABLE)
		 GuiCtrlSetState($WaitInput1,$GUI_DISABLE)
		 GuiCtrlSetState($lblWait,$GUI_DISABLE)
		 GuiCtrlSetState($WaitInput2,$GUI_DISABLE)
		 GuiCtrlSetState($lblWait2,$GUI_DISABLE)
		 _GUICtrlComboBox_BeginUpdate($RandomnessSlider)
		 _GUICtrlComboBox_SelectString($RandomnessSlider, "Don't break the time")
		 _GUICtrlComboBox_EndUpdate($RandomnessSlider)
		 CMBWaitBreakCommandCOMBOBOX()
		 GuiCtrlSetState($CMBWaitBreakCommand,$GUI_DISABLE)
	 EndIf
EndFunc



Func CMBWaitBreakCommandCOMBOBOX()

	Switch _GUICtrlComboBox_GetCurSel($CMBWaitBreakCommand)
		case 0
			$WaitCommand = "           "
		case 1
			$WaitCommand = "TH         "
		case 2
			$WaitCommand = "SIEGE      "
		case 3
			$WaitCommand = "TH+SIEGE   "
		case 4
			$WaitCommand = "TH,SIEGE   "
		case 5
			$WaitCommand = "BK         "
		Case 6
			$WaitCommand = "AQ         "
		case 7
			$WaitCommand = "GW         "
		case 8
			$WaitCommand = "RC         "
		case 9
			$WaitCommand = "AQ+BK      "
		case 10
			$WaitCommand = "AQ,BK      "
	EndSwitch

EndFunc
