#include <MsgBoxConstants.au3>
#include <StringConstants.au3>

Local $clip = ClipGet()
If @error <> 0 Then Exit

Local $arr = StringSplit ( $clip, @CRLF, $STR_ENTIRESPLIT + $STR_NOCOUNT )

For $e In $arr
	ShellExecute ( "https://www.ebay.de/itm/" & StringStripWS($e, $STR_STRIPALL) & "?nordt=true&rt=nc&orig_cvip=true")
Next
