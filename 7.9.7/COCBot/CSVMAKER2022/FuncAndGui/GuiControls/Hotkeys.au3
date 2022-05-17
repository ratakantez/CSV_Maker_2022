; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Hotkeys
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (28th December 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================
	HotKeySet("!q", "_hide")
	HotKeySet("!a", "_show")
	HotKeySet("!f", "_OpenLastCSV")
	HotKeySet("!d", "_KillCSV")
	HotKeySet("!b", "ADDCSV")
;~ 	HotKeySet("^z", "UNDO")

Func _hide()
	GUISetState(@SW_HIDE,$h_hGUI_MakeCsv)
	TrayTip("CSV MAKER","Hide",0)
EndFunc

Func _show()
	GUISetState(@SW_SHOW,$h_hGUI_MakeCsv)
	TrayTip("CSV MAKER","Show",0)
EndFunc

Func _OpenLastCSV()
	WinClose("[CLASS:Notepad]", "")
	ShellExecute("Notepad.exe",$g_sSaveLocation)
EndFunc

Func _KillCSV()
	WinClose("[CLASS:Notepad]", "")
EndFunc


Func _quit()
   Exit
EndFunc

Func _restartt()
 If @Compiled = 1 Then
        Run( FileGetShortName(@ScriptFullPath))
    Else
        Run( FileGetShortName(@AutoItExe) & " " & FileGetShortName(@ScriptFullPath))
    EndIf
    Exit
EndFunc
