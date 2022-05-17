
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker DropFunc In CSV Write
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


Func DropCommand()

   GetSleepSize()
   ;Army Sides
   _ifSide_is_A_On_Army()
   _ifSide_is_B_On_Army()
   _ifSide_is_C_On_Army()
   _ifSide_is_D_On_Army()
   _ifSide_is_E_On_Army()
   _ifSide_is_F_On_Army()
   _ifSide_is_G_On_Army()
   _ifSide_is_H_On_Army()


	GetRandomXY()
   ;Spell Sides
   If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
	  GetSleepSize()
	  ;;;;;;;;;;SF
	  _ifSide_is_SF_On_Spell ()
	  ;;;;;;;;;;SE
	  _ifSide_is_SE_On_Spell()
   EndIf
   If GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then
	  GetSleepSize()
	  ;;;;;;;;;;;Building
	  _ifSide_is_Building_On_Spell()
   EndIf
   ;Second AddToCSV
   CSVWriteDrop()

EndFunc


Func CSVWriteDrop()
	Select
		Case $TType = "Spell"
			FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
			_ArrayAdd($Undo_Array_CSVWrite, $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
			_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
			_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
			_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
			If GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then
				If $iStep = 0 Then
					_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on " & $LogBuilding , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 1 Then
					_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on " & $LogBuilding , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on " & $LogBuilding , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep > 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on " & $LogBuilding , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
			Else
				If $iStep = 0 Then
					_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on map" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 1 Then
					_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on map" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep = 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on map" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				ElseIf $iStep > 2 Then
					_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $TroopSizeinCSV & " " & $LOGName & "(s) on map" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
			EndIf
			$iStep = $iStep + 1

		Case $FirstAdding = True
			Local $ReadLastLine
			$ReadLastLine = FileReadLine($g_sSaveLocation, _FileCountLines($g_sSaveLocation))
			If StringRight($DropPoint, 37) <> "|0          |           |           |" Then
				FileWrite($g_sSaveLocation, @CRLF & $DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $DropEnter & $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				If $iStep = 0 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep = 1 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep = 2 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep > 2 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				EndIf
				$iStep = $iStep + 1
			ElseIf StringLeft($ReadLastLine, 7) = "MAKE  |" And $MultiDropChoose = 1 Then
				FileWrite($g_sSaveLocation,@CRLF & $DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $DropEnter & $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				If $iStep = 0 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep = 1 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep = 2 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep > 2 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				EndIf
				$iStep = $iStep + 1
			Else
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				If $iStep = 0 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep = 1 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep = 2 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				ElseIf $iStep > 2 Then
					If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
						_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					Else
						_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
					EndIf
				EndIf
				$iStep = $iStep + 1
			EndIf

		Case Else
			Local $ReadLastLine
			$ReadLastLine = FileReadLine($g_sSaveLocation, _FileCountLines($g_sSaveLocation))
			If $iStep = 0 Then
				If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
					_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				Else
					_ArrayAdd($StepList, ($iStep + 1) & "st >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
			ElseIf $iStep = 1 Then
				If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
					_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				Else
					_ArrayAdd($StepList, ($iStep + 1) & "nd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
			ElseIf $iStep = 2 Then
				If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
					_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				Else
					_ArrayAdd($StepList, ($iStep + 1) & "rd >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
			ElseIf $iStep > 2 Then
				If _GUICtrlComboBox_GetCurSel($CMBTroops_Name) > 48 Then
					_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $LOGName & " from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				Else
					_ArrayAdd($StepList, ($iStep + 1) & "th >> " & $TroopSizeinCSV & " " & $LOGName & "(s) from side " & $SideType , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				EndIf
			EndIf
			If StringLeft($ReadLastLine, 7) = "MAKE  |" And $OneDropChoose = 1 Then
				FileWrite($g_sSaveLocation,@CRLF & $DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $DropEnter & $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			ElseIf StringLeft($ReadLastLine, 7) = "MAKE  |" And $MultiDropChoose = 1 And _
				(GUICtrlRead($RadioCornertoCenterforA) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforE) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforF) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED) Then
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			ElseIf StringLeft($ReadLastLine, 7) = "MAKE  |" And $MultiDropChoose = 1 Then
				FileWrite($g_sSaveLocation,@CRLF & $DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $DropEnter & $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			ElseIf StringLeft($ReadLastLine, 7) = "~~~~~~~" And $OneDropChoose = 1 Then
				FileWrite($g_sSaveLocation,@CRLF & $DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $DropEnter & $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			ElseIf StringLeft($ReadLastLine, 7) = "~~~~~~~" And $MultiDropChoose = 1 And _
				(GUICtrlRead($RadioCornertoCenterforA) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforB) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforC) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforD) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforE) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforF) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforG) = $GUI_CHECKED Or _
				 GUICtrlRead($RadioCornertoCenterforH) = $GUI_CHECKED) Then
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			ElseIf StringLeft($ReadLastLine, 7) = "~~~~~~~" And $MultiDropChoose = 1 Then
				FileWrite($g_sSaveLocation,@CRLF & $DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, @CRLF & $DropEnter & $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			Else
				FileWrite($g_sSaveLocation,$DropPoint & @CRLF)
				_ArrayAdd($Undo_Array_CSVWrite, $DropPoint & @CRLF, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopName, $LOGName, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVTroopCount, $TroopSizeinCSV, Default,"?","?",$ARRAYFILL_FORCE_STRING)
				_ArrayAdd($Undo_Array_CSVLog, "[UNDO OPERATION] " & $TroopSizeinCSV & " " & $LOGName & "(s) that you set, will not drop!!!" , Default,"?","?",$ARRAYFILL_FORCE_STRING)
				$iStep = $iStep + 1

			EndIf
	EndSelect

EndFunc







