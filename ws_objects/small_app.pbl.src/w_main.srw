$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_close from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 4224
integer height = 1760
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_close cb_close
end type
global w_main w_main

on w_main.create
this.cb_close=create cb_close
this.Control[]={this.cb_close}
end on

on w_main.destroy
destroy(this.cb_close)
end on

type cb_close from commandbutton within w_main
integer x = 2898
integer y = 1212
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
end type

event clicked;close(parent)
end event

