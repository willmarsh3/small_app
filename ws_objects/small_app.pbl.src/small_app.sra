$PBExportHeader$small_app.sra
$PBExportComments$Generated Application Object
forward
global type small_app from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type small_app from application
string appname = "small_app"
end type
global small_app small_app

on small_app.create
appname="small_app"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on small_app.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

