#Requires AutoHotkey v2.0

keyset := "view"

NumpadMult::
{
    keyset := "sketch"
}

NumpadDiv::
{
    keyset := "view"
}

NumpadUp::
{
    if (keyset = "view")
    {
        Send "^5" ; Top View
    }
        
    if (keyset = "sketch")
    {
        Send "{Esc}"
    }

}

NumpadRight::
{
    Send "^4" ; Right View
}

NumpadLeft::
{
    Send "^3" ; Left View
}

NumpadDown::
{
    Send "^6" ; Bottom View
}

NumpadClear::
{
    Send "^1" ; Front View
}

NumpadPgDn::
{
    Send "^2" ; Back View
}

NumpadPgUp::
{
    Send "^7" ; Isometric
}

NumpadEnd::
{
    Send "^8" ; Normal to selected surface
}

NumpadHome::
{
    Send "^{Space}" ; View selector
}