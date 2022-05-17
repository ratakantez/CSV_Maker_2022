
Func RandomiseGUI_InDBScriptedAttackFile()
	Local $x = 25, $y = 160
	$DoRandomiseDB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2022\USE\dice.bmp",$x + 230,$y - 5,23,45)
	GUICtrlSetOnEvent($DoRandomiseDB, "DoRandomiseControlDB")
	GUICtrlSetTip($DoRandomiseDB,"This CheckBox let bot to change indexes that you set in CSVMaker2022")
	$y = 180
	$DontRandomiseDB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlSetState(-1,$GUI_CHECKED)
	GUICtrlSetOnEvent($DontRandomiseDB, "DontRandomiseControlDB")
	GUICtrlSetTip($DontRandomiseDB,"This CheckBox backup your original files and doesnt changes Indexes that you set in CSVMaker2022")
	$y = 200
	$infopicforWidenessAB = GUICtrlCreatePic(@ScriptDir &"\COCBot\CSVMAKER2022\USE\i.bmp",$x + 210,$y + 2,16,16)
	GUICtrlSetOnEvent(-1,"infowideness")
	GUICtrlSetCursor (-1, 0)

EndFunc


Func DoRandomiseControlDB()

	If GUICtrlRead($DoRandomiseDB) = $GUI_CHECKED Then
		GUICtrlSetState($DoRandomiseDB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_UNCHECKED)
		$g_bDoRandomiseDB = True
		$g_bDontRandomiseDB = False
	EndIf
ApplyConfig_Randomise("Save")
EndFunc

Func DontRandomiseControlDB()
	if GUICtrlRead($DontRandomiseDB) = $GUI_CHECKED  Then
		GUICtrlSetState($DoRandomiseDB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_CHECKED)
		$g_bDoRandomiseDB = False
		$g_bDontRandomiseDB = True
	EndIf
ApplyConfig_Randomise("Save")

EndFunc

Func SeeRandomisedDB()

ApplyConfig_Randomise("Save")
EndFunc

