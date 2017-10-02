<!--- Set-Up Application --->
<cfset thetimeout = CreateTimeSpan(0,1,0,0)>
<CFAPPLICATION NAME = "TorontoVolleyball" 
	CLIENTMANAGEMENT = "YES"
	SESSIONMANAGEMENT = "YES"
	SESSIONTIMEOUT = #thetimeout#>

<cflock name = "#APPLICATION.applicationName#"
 	type = "EXCLUSIVE"
	timeout = 20
	throwontimeout="YES">
	<cfparam name="APPLICATION.SessionTracker" default = #StructNew()#>	
	<cfset dummy = StructInsert(APPLICATION.SessionTracker, CGI.Remote_Addr, Now(), true)>
</cflock>
	
<!--- set constants for colour --->
<cfparam name="APPLICATION.Dsn" default="volleyball">
<cfparam name="APPLICATION.Home" default="/tvolleyball/public">
<cfparam name="APPLICATION.DatabaseType" default="ACCESS">


