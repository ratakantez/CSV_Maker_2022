; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Variable
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func ADDNotes()

			FileWrite($g_sSaveLocation, "NOTE  |**Created With CSV MAKER 2022 "& $Program_Version &"**" & @CRLF)
			$ReadNote = GUICtrlRead($Note)
			$SplitTheNote = StringSplit($ReadNote, @CRLF, 3)
			ReDim $CSVNOTE[UBound($SplitTheNote)]
			$CSVNOTE = $SplitTheNote
			For $1 = 0 To UBound($CSVNOTE) - 1
			  FileWrite($g_sSaveLocation, "NOTE  |" & $CSVNOTE[$1] & @CRLF)
			Next
			FileWrite($g_sSaveLocation, @CRLF)

EndFunc
