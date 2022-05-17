; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Get Wideness
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
; =================================================================================================================================


Func SetWideness()
	Switch _GUICtrlComboBox_GetCurSel($RandomnessSlider)
		Case 0
			;Exact point.. DONT DO ANYTHING. Drop same in CSV
			$Wideness = "           "
		Case 1
			If $SideNumber = 1 Then
				$SideNumber = Random(1,2,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(9,10,1)
			Else
				$SideNumber = Random($SideNumber-1,$SideNumber+1,1)
			EndIf
			$Wideness = "W1         "
		case 2
			If $SideNumber = 1 Then
				$SideNumber = Random(1,3,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,4,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(7,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(8,10,1)
			Else
				$SideNumber = Random($SideNumber-2,$SideNumber+2,1)
			EndIf
			$Wideness = "W2         "
		case 3
			If $SideNumber = 1 Then
				$SideNumber = Random(1,4,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,5,1)
			ElseIf $SideNumber = 3 Then
				$SideNumber = Random(1,6,1)
			ElseIf $SideNumber = 8 Then
				$SideNumber = Random(5,10,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(6,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(7,10,1)
			Else
				$SideNumber = Random($SideNumber-3,$SideNumber+3,1)
			EndIf
			$Wideness = "W3         "
		case 4
			If $SideNumber = 1 Then
				$SideNumber = Random(1,5,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,6,1)
			ElseIf $SideNumber = 3 Then
				$SideNumber = Random(1,7,1)
			ElseIf $SideNumber = 4 Then
				$SideNumber = Random(1,8,1)
			ElseIf $SideNumber = 7 Then
				$SideNumber = Random(3,10,1)
			ElseIf $SideNumber = 8 Then
				$SideNumber = Random(4,10,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(5,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(6,10,1)
			Else
				$SideNumber = Random($SideNumber-4,$SideNumber+4,1)
			EndIf
			$Wideness = "W4         "
		case 5
			If $SideNumber = 1 Then
				$SideNumber = Random(1,6,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,7,1)
			ElseIf $SideNumber = 3 Then
				$SideNumber = Random(1,8,1)
			ElseIf $SideNumber = 4 Then
				$SideNumber = Random(1,9,1)
			ElseIf $SideNumber = 5 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 6 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 7 Then
				$SideNumber = Random(2,10,1)
			ElseIf $SideNumber = 8 Then
				$SideNumber = Random(3,10,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(4,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(5,10,1)
			EndIf
			$Wideness = "W5         "

		case 6
			If $SideNumber = 1 Then
				$SideNumber = Random(1,7,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,8,1)
			ElseIf $SideNumber = 3 Then
				$SideNumber = Random(1,9,1)
			ElseIf $SideNumber = 4 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 5 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 6 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 7 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 8 Then
				$SideNumber = Random(2,10,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(3,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(4,10,1)
			EndIf
			$Wideness = "W6         "
		case 7
			If $SideNumber = 1 Then
				$SideNumber = Random(1,8,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,9,1)
			ElseIf $SideNumber = 3 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 4 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 5 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 6 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 7 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 8 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(2,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(3,10,1)
			EndIf
			$Wideness = "W7         "

		case 8
			If $SideNumber = 1 Then
				$SideNumber = Random(1,9,1)
			ElseIf $SideNumber = 2 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 3 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 4 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 5 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 6 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 7 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 8 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 9 Then
				$SideNumber = Random(1,10,1)
			ElseIf $SideNumber = 10 Then
				$SideNumber = Random(2,10,1)
			EndIf
			$Wideness = "W8         "

	EndSwitch

EndFunc

Func GetWideness()
	Switch _GUICtrlComboBox_GetCurSel($RandomnessSlider)
		Case 0
			;Exact point.. DONT DO ANYTHING. Drop same in CSV
			$Wideness = "           "
		Case 1
			$Wideness = "W1         "
		case 2
			$Wideness = "W2         "
		case 3
			$Wideness = "W3         "
		case 4
			$Wideness = "W4         "
		case 5
			$Wideness = "W5         "
		case 6
			$Wideness = "W6         "
		case 7
			$Wideness = "W7         "
		case 8
			$Wideness = "W8         "
	EndSwitch

EndFunc


Func ComboRandomnessCombo()

	Switch _GUICtrlComboBox_GetCurSel($RandomnessSlider)
		case 0
			GUICtrlSetState($RandomnessSliderImage0,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		Case 1
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 2
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 3
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 4
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 5
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 6
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 7
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_SHOW)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_HIDE)
		case 8
			GUICtrlSetState($RandomnessSliderImage0,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage1,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage2,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage3,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage4,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage5,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage6,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage7,$GUI_HIDE)
			GUICtrlSetState($RandomnessSliderImage8,$GUI_SHOW)
	EndSwitch

EndFunc

