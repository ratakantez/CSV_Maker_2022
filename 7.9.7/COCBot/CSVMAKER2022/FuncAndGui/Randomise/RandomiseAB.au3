Func RandomiseGUI_InABScriptedAttackFile()
	Local $x = 25, $y = 160
	$DoRandomiseAB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2022\USE\dice.bmp",$x + 230,$y - 5,23,45)
	GUICtrlSetOnEvent($DoRandomiseAB, "DoRandomiseControlAB")
	GUICtrlSetTip($DoRandomiseAB,"This CheckBox let bot to change indexes that you set in CSVMaker2022")
	$y = 180
	$DontRandomiseAB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlSetState(-1,$GUI_CHECKED)
	GUICtrlSetOnEvent($DontRandomiseAB, "DontRandomiseControlAB")
	GUICtrlSetTip($DontRandomiseAB,"This CheckBox backup your original files and doesnt changes Indexes that you set in CSVMaker2022")
	$y = 200
	$infopicforWidenessAB = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2022\USE\i.bmp",$x + 210,$y + 2,16,16)
	GUICtrlSetOnEvent(-1,"infowideness")
	GUICtrlSetCursor (-1, 0)


EndFunc

Func DoRandomiseControlAB()
	If GUICtrlRead($DoRandomiseAB) = $GUI_CHECKED Then
		GUICtrlSetState($DoRandomiseAB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_UNCHECKED)
		$g_bDoRandomiseAB = True
		$g_bDontRandomiseAB = False
	EndIf

ApplyConfig_Randomise("Save")
EndFunc

Func DontRandomiseControlAB()
	if GUICtrlRead($DontRandomiseAB) = $GUI_CHECKED  Then
		GUICtrlSetState($DoRandomiseAB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_CHECKED)
		$g_bDoRandomiseAB = False
		$g_bDontRandomiseAB = True
	EndIf
ApplyConfig_Randomise("Save")

EndFunc

Func SeeRandomisedAB()

EndFunc
