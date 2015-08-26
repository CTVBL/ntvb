<!--- Define the application parameters --->
<cfinclude template = "../app_globals.cfm">

<CF_db_login
	session_timeout="#createtimespan(1,5,5,5)#"
	clientmanagment="yes"
	setclientcookies="yes"
	background_color="ffffff"
	table_color=""
	tableborder="0"
	cellspacing="0"
	cellpadding="5"
	top_message="Toronto Volleyball"
	msg_row_color="##F9F9FF"
	msg_font_color="black"
	msg_font_bold="yes"
	msg_font="arial, helvetica, verdana"
	msg_font_size="4"
	font="courier"
	font_color="OOOOOO"
	font_size="2"
	error_page="index.cfm"
	error_log="off"
	button_text=" Login ">

<cfset headcolour = "E2DC6F">
<cfset headcolour = "e3e3e3">
