
Func SaveConfig_Randomise()
	ApplyConfig_Randomise(GetApplyConfigSaveAction())
	_Ini_Add("Randomise", "DoRandomiseDB", $g_bDoRandomiseDB ? 1 : 0)
	_Ini_Add("Randomise", "DontRandomiseDB", $g_bDontRandomiseDB ? 1 : 0)
	_Ini_Add("Randomise", "DoRandomiseAB", $g_bDoRandomiseAB ? 1 : 0)
	_Ini_Add("Randomise", "DontRandomiseAB", $g_bDontRandomiseAB ? 1 : 0)

EndFunc

Func ReadConfig_Randomise()
	IniReadS($g_bDoRandomiseDB, $g_sProfileConfigPath, "Randomise", "DoRandomiseDB", False, "Bool")
	IniReadS($g_bDontRandomiseDB, $g_sProfileConfigPath, "Randomise", "DontRandomiseDB", True, "Bool")
	IniReadS($g_bDoRandomiseAB, $g_sProfileConfigPath, "Randomise", "DoRandomiseAB", False, "Bool")
	IniReadS($g_bDontRandomiseAB, $g_sProfileConfigPath, "Randomise", "DontRandomiseAB", True, "Bool")


EndFunc

Func ApplyConfig_Randomise($TypeReadSave)
	Switch $TypeReadSave
		Case "Read"
			GUICtrlSetState($DoRandomiseDB, $g_bDoRandomiseDB ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($DontRandomiseDB, $g_bDontRandomiseDB ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($DoRandomiseAB, $g_bDoRandomiseAB ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($DontRandomiseAB, $g_bDontRandomiseAB ? $GUI_CHECKED : $GUI_UNCHECKED)

		Case "Save"
			$g_bDoRandomiseDB = (GUICtrlRead($DoRandomiseDB) = $GUI_CHECKED)
			$g_bDontRandomiseDB = (GUICtrlRead($DontRandomiseDB) = $GUI_CHECKED)
			$g_bDoRandomiseAB = (GUICtrlRead($DoRandomiseAB) = $GUI_CHECKED)
			$g_bDontRandomiseAB = (GUICtrlRead($DontRandomiseAB) = $GUI_CHECKED)

	EndSwitch


EndFunc