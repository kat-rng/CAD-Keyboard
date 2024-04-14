#Requires AutoHotkey v2.0

Home::{
    global xdist
    global ydist
    MsgBox("mouse tracker running") 
    xlast := 0
    ylast := 0
    xcurrent := 0
    ycurrent := 0
    xdist := 0
    ydist := 0
    
    MouseGetPos(&xlast,&ylast)
    while True
    {
        MouseGetPos(&xcurrent,&ycurrent)
        xdist := xdist + Abs(xcurrent-xlast)
        ydist := ydist + Abs(ycurrent-ylast)
        xlast := xcurrent
        ylast := ycurrent
        Sleep 10
    }
}


Insert::{
    global xdist
    global ydist
    MsgBox("x: " xdist " y: " ydist) 
}

`::{
    global xdist
    global ydist
    xdist := 0
    ydist := 0
    MsgBox("distances reset") 
}

