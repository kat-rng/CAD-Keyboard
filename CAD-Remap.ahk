#Requires AutoHotkey v2.0

keyset := "view"

NumpadMult::
keyset := "sketch"
return

NumpadDiv::
keyset := "view"
return

NumpadUp::
if (keyset = "view")
    Send, ^5 ; Top View
if (keyset = "sketch")
    Send, {Esc}
return

NumpadRight::
Send, ^4 ; Right View
return

NumpadLeft::
Send, ^3 ; Left View
return

NumpadDown::
Send, ^6 ; Bottom View
return

NumpadClear::
Send, ^1 ; Front View
return

NumpadPgDn::
Send, ^2 ; Back View
return

NumpadPgUp::
Send, ^7 ; Isometric
return

NumpadEnd::
Send, ^8 ; Normal to selected surface
return

NumpadHome::
Send, ^{Space} ; View selector
return