; #INDEX# ======================================================================
; Title .........: openEbayItems.au3
; Version  ......: 1.1
; Language ......: English
; Author(s) .....: jalbersdorfer
; Link ..........: https://github.com/jalbersdorfer/openEbayItems
; Description ...: Open ebay Items from Item Numbers in Clipboard
; ==============================================================================

#pragma compile(Out, openEbayItems.exe)
; Uncomment to use the following icon. Make sure the file path is correct and matches the installation of your AutoIt install path.
; #pragma compile(Icon, C:\Program Files\AutoIt3\Icons\au3.ico)
#pragma compile(FileDescription, openEbayItems - Open ebay Items from Item Numbers in Clipboard)
#pragma compile(ProductName, openEbayItems)
#pragma compile(ProductVersion, 1.1)
#pragma compile(FileVersion, 1.1.0)
#pragma compile(LegalCopyright, jalbersdorfer 2020)
#pragma compile(CompanyName, 'jalbersdorfer')

#include <MsgBoxConstants.au3>
#include <StringConstants.au3>

Local $clip = ClipGet()
If @error <> 0 Then Exit

Local $arr = StringSplit ( $clip, @CRLF, $STR_ENTIRESPLIT + $STR_NOCOUNT )

For $e In $arr
	ShellExecute ( "https://www.ebay.de/itm/" & StringStripWS($e, $STR_STRIPALL) & "?nordt=true&rt=nc&orig_cvip=true")
Next
