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
lastarrow := "none"


#HotIf RegExMatch(WinGetTitle('A'),"SOLIDWORKS")
NumLock::
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

NumpadMult::
{
    global keyset
    keyset := "assembly"
    MsgBox("Assembly mode")
}
NumpadSub::
{
    global keyset
    keyset := "draft"
    MsgBox("Drafting mode")
}

PgDn::Shift
PgUp::Ctrl

Home::^y
End::^z

+up::
{
    global lastarrow
    if(lastarrow="uparrow"){
        send '^6'
        lastarrow:="none"
    }   else{
        send '^5'
        lastarrow:="uparrow"
    }
}

+down::
{
    global lastarrow
    if(lastarrow="downarrow"){
        send '^2'
        lastarrow:="none"
    }   else{
        send '^1'
        lastarrow:="downarrow"
    }
}

+left::
{
    global lastarrow
    send '^8'
    lastarrow:="none"
}

+right::
{
    global lastarrow
    if(lastarrow="rightarrow"){
        send '^3'
        lastarrow:="none"
    }   else{
        send '^4'
        lastarrow:="rightarrow"
    }
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

NumpadIns::
{
    Send "0"
}

NumpadDel::
{
    Send "."
}

NumpadEnd::
{
    if(isTextFieldSelected()){
        Send Key1map[Keyset]
    }
    else{
        Send "1"
    }
}
Numpad1::
{
    if(isTextFieldSelected()){
        Send Key1map[Keyset]
    }
    else{
        Send "1"
    }
}

NumpadDown::
{
    if(isTextFieldSelected()){
        Send Key2map[Keyset]
    }
    else{
        Send "2"
    }
}
Numpad2::
{
    if(isTextFieldSelected()){
        Send Key2map[Keyset]
    }
    else{
        Send "2"
    }
}

NumpadPgDn::
{
    if(isTextFieldSelected()){
        Send Key3map[Keyset]
    }
    else{
        Send "3"
    }
}
Numpad3::
{
    if(isTextFieldSelected()){
        Send Key3map[Keyset]
    }
    else{
        Send "3"
    }
}

NumpadLeft::
{
    if(isTextFieldSelected()){
        Send Key4map[Keyset]
    }
    else{
        Send "4"
    }
}
Numpad4::
{
    if(isTextFieldSelected()){
        Send Key4map[Keyset]
    }
    else{
        Send "4"
    }
}

NumpadClear::
{
    if(isTextFieldSelected()){
        Send Key5map[Keyset]
    }
    else{
        Send "5"
    }
}
Numpad5::
{
    if(isTextFieldSelected()){
        Send Key5map[Keyset]
    }
    else{
        Send "5"
    }
}

NumpadRight::
{
    if(isTextFieldSelected()){
        Send Key6map[Keyset]
    }
    else{
        Send "6"
    }
}
Numpad6::
{
    if(isTextFieldSelected()){
        Send Key6map[Keyset]
    }
    else{
        Send "6"
    }
}

NumpadHome::
{
    if(isTextFieldSelected()){
        Send Key7map[Keyset]
    }
    else{
        Send "7"
    }
}
Numpad7::
{
    if(isTextFieldSelected()){
        Send Key7map[Keyset]
    }
    else{
        Send "7"
    }
}

NumpadUp::
{
    if(isTextFieldSelected()){
        Send Key8map[Keyset]
    }
    else{
        Send "8"
    }
}
Numpad8::
{
    if(isTextFieldSelected()){
        Send Key8map[Keyset]
    }
    else{
        Send "8"
    }
}

NumpadPgUp::
{
    if(isTextFieldSelected()){
        Send Key9map[Keyset]
    }
    else{
        Send "9"
    }
}
Numpad9::
{
    if(isTextFieldSelected()){
        Send Key9map[Keyset]
    }
    else{
        Send "9"
    }
}

isTextFieldSelected()
{
	return !CaretGetPos()
}
