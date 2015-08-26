<cfif IsDefined("form.killit")>
	<cflock scope="session" type="exclusive" timeout="10">
	<cfset session.loggedin=0>
	</cflock>
	<cflocation URL="index.cfm" addtoken="no">	
</cfif>

<cflock scope="session" type="exclusive" timeout="10">
<cfparam name="session.loggedin" default="0">
</cflock>
<cfparam name="attributes.error_page" default="../index.cfm">

<cfif IsDefined("form.loggingin")>
	<cfquery datasource="#APPLICATION.Dsn#" name="rsLogin">
	Select * From Users
	Where User_Name = '#Form.UserName#'
	</cfquery>

	<cfset loggedin = 0>	
	<cfif rsLogin.recordcount IS 1>
		<cfif rsLogin.password IS "">
			<cfset decryptedpwd = "">
		<cfelse>
			<cfset decryptedpwd = Decrypt(rsLogin.Password, APPLICATION.Key)>
		</cfif>

		<cfif decryptedpwd IS Form.Password>
			<cfset loggedin = 1>	
			<cflock scope="session" type="exclusive" timeout="10">
			<cfset Session.UserLevel = rsLogin.Access_Level>
			</cflock>
		</cfif>		
	</cfif>	

	<cflock scope="SESSION" timeout="10" type="EXCLUSIVE">
	<cfset Session.LoggedIn = loggedin>
	</cflock>
	
	<cfif loggedin IS NOT 1>
		<cflocation url="#attributes.error_page#" addtoken="no">
	</cfif>
</cfif>
<cfif session.loggedin is 0>
<cfparam name="attributes.table_color" default="eeeeee">
<cfparam name="attributes.msg_row_color" default="gray">
<cfparam name="attributes.msg_font_color" default="ffffff">
<cfparam name="attributes.msg_font_bold" default="yes">
<cfparam name="attributes.msg_font" default="arial, helvetica, verdana">
<cfparam name="attributes.msg_font_size" default="2">
<cfparam name="attributes.top_message" default="Login to my site">
<cfparam name="attributes.background_color" default="ffffff">
<cfparam name="attributes.font" default="arial, helvetica, verdana">
<cfparam name="attributes.cellspacing" default="1">
<cfparam name="attributes.cellpadding" default="1">
<cfparam name="attributes.font_color" default="">
<cfparam name="attributes.font_size" default="2">
<cfparam name="attributes.tableborder" default="1">
<cfparam name="attributes.error_log" default="off">
<cfparam name="attributes.button_text" default=" Login ">
<cfoutput>
<div align="center"><br><br>
<form action="Index.cfm" method="POST">

<table bgcolor="000080" border="0" cellpadding="2" cellspacing="0">
  <tr>
    <td>
	
	<table border="0" cellpadding="0" cellspacing="0" bgcolor="white">
	  <tr>
		<td>
		
			<table border="#attributes.tableborder#" cellpadding="#attributes.cellpadding#" cellspacing="#attributes.cellspacing#">
				<tr bgcolor="#attributes.msg_row_color#">
					<td colspan="2" align="left"><cfif attributes.top_message is "">&nbsp;<cfelse><font face="#attributes.msg_font#" color="#attributes.msg_font_color#" size="#attributes.msg_font_size#"><cfif attributes.msg_font_bold is "yes"><b></cfif>#attributes.top_message#<cfif attributes.msg_font_bold is "yes"></b></cfif></font></cfif></td>
				</tr>
				<tr>
					<td bgcolor="FFFFEE"><font face="#attributes.font#" color="#attributes.font_color#" size="#attributes.font_size#">User Name: </font></td>
					<td bgcolor="FFFFEE"><input type="Text" name="username" size="15" maxlength="15"></td>
				</tr>
				<tr>
					<td bgcolor="FFFFEE"><font face="#attributes.font#" color="#attributes.font_color#" size="#attributes.font_size#">Password: </font></td>
					<td bgcolor="FFFFEE"><input type="password" name="password" size="15" maxlength="15"></td>
				</tr>
				<tr>
					<td bgcolor="FFFFEE">&nbsp;</td>
					<td bgcolor="FFFFEE"><input type="submit" name="loggingin" value="#attributes.button_text#"></td>
				</tr>
			</table>
	
	</td>
	  </tr>
	</table>

	</td>
  </tr>
</table>


</div>
</form>	
</cfoutput>
<cfabort>
</cfif>
