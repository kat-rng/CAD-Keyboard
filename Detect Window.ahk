#Requires AutoHotkey v2.0

GuiCtrl := Gui()

NumpadDiv::
{
	MsgBox isTextFieldSelected()
}

isTextFieldSelected()
{
	return CaretGetPos()
}
