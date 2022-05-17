;~ Func _GUICreatedeneme($title, $width, $height, $left = -1, $top = -1, $style = -1, $exStyle = $WS_EX_TOPMOST, $parent = 0)
;~    $GUI_deneme_in_function = GUICreate($title, $width, $height, $left, $top, $style, $exStyle, $parent)
;~    GUISetBkColor(0xFFFF99,$GUI_deneme_in_function)
;~    Local $key = String($GUI_deneme_in_function)
;~    Local $obj = $GUI_deneme_in_function
;~    WinSetTrans ( $GUI_deneme_in_function, "", 55 )
;~    $g_oGuiNotInMini.Add($key, $obj)
;~    GUISetIcon("csv.ico")
;~    Return $GUI_deneme_in_function
;~  EndFunc   ;==>_GUICreateMultiDropforA

;~ Func GUI_deneme()
;~ 	$h_hGUI_Makedeneme = _GUICreatedeneme("", 860, 732, 0,0, $WS_BORDER, $WS_EX_CONTROLPARENT)
;~ 	$Pic1 = GUICtrlCreatePic("", 0, 0, 860, 732)
;~ 	_GDIPlus_Startup()
;~ 	GUICtrlSendMsg($Pic1, 0x0172, 0, _GDIPlus_BitmapCreateHBITMAPFromBitmap(@ScriptDir & "\COCBot\CSVMAKER2022\USE\t.png"))
;~ 	_WinAPI_DeleteObject(GUICtrlSendMsg($Pic1,0x0172,0, _GDIPlus_BitmapCreateHBITMAPFromBitmap(_GDIPlus_ImageLoadFromFile(@ScriptDir & "\COCBot\CSVMAKER2022\USE\t.png"))))
;~ 	GUICtrlSetState(-1,$GUI_DISABLE)

;~ EndFunc