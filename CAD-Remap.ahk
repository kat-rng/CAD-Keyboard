#Requires AutoHotkey v2.0

; Example structure for mapping keys
; Key1map := Map("sketch", "sketchkey", "model", "modelkey", "assembly", "assemblykey", "drafting", "draftingkey")
Key1map := Map("sketch", "^!+1", "model", "^+1", "assembly", "^!1", "draft", "+!1")
Key2map := Map("sketch", "^!+2", "model", "^+2", "assembly", "^!2", "draft", "+!2")
Key3map := Map("sketch", "^!+3", "model", "^+3", "assembly", "^!3", "draft", "+!3")
Key4map := Map("sketch", "^!+4", "model", "^+4", "assembly", "^!4", "draft", "+!4")
Key5map := Map("sketch", "^!+5", "model", "^+5", "assembly", "^!5", "draft", "+!5")
Key6map := Map("sketch", "^!+6", "model", "^+6", "assembly", "^!6", "draft", "+!6")
Key7map := Map("sketch", "l"   , "model", "^+7", "assembly", "^!7", "draft", "+!7")
Key8map := Map("sketch", "^!+8", "model", "^+8", "assembly", "^!8", "draft", "+!8")
Key9map := Map("sketch", "^!+9", "model", "^+9", "assembly", "^!9", "draft", "+!9")

is_parentheses_free := 1
keyset := "sketch"

NumpadDiv::
{
    global keyset
    keyset := "sketch"
    MsgBox("Sketching mode")
}

NumpadMult::
{
    global keyset
    keyset := "model"
    MsgBox("Modeling mode")
}

NumpadSub::
{
    global keyset
    keyset := "assembly"
    MsgBox("Assembly mode")
}

!Numpad0::
{
    global is_parentheses_free
    if(is_parentheses_free = 1){
        MsgBox("(")
    } 
    is_parentheses_free := 0
    sleep 10
    is_parentheses_free := 1
}

!Numpad4::
{
    global is_parentheses_free
    if(is_parentheses_free = 0){
        MsgBox(")")
    }
    is_parentheses_free := 0
    sleep 10
    is_parentheses_free := 1
}

NumpadUp::
{
    Send Key8map[Keyset]
}

NumpadRight::
{
    Send Key6map[Keyset]
}

NumpadLeft::
{
    Send Key4map[Keyset]
}

NumpadDown::
{
    Send Key2map[Keyset]
}

NumpadClear::
{
    Send Key5map[Keyset]
}

NumpadPgDn::
{
    Send Key3map[Keyset]
}

NumpadPgUp::
{
    Send Key9map[Keyset]
}

NumpadEnd::
{
    Send Key1map[Keyset]
}

NumpadHome::
{
    Send Key7map[keyset] 
}
