#Requires AutoHotkey v2.0

; Example structure for mapping keys
; Key1map := Map("sketch", "sketchkey", "model", "modelkey", "assembly", "assemblykey", "drafting", "draftingkey")

keyset := "view"

NumpadMult::
{
    global keyset
    keyset := "sketch"
    MsgBox("Sketching mode")
}

NumpadDiv::
{
    global keyset
    keyset := "model"
    MsgBox("Modeling mode")
}

NumpadUp::
{
    if (keyset = "model")
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
    Send "^!+6" ; Trim
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
