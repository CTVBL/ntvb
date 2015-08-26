<!--- Set-Up Application --->
<cfset thetimeout = #CreateTimeSpan(0,0,30,0)#>

<CFAPPLICATION NAME = "Toronto Volleyball" CLIENTMANAGEMENT = "YES" 
    SESSIONMANAGEMENT = "YES"	
	SESSIONTIMEOUT = #thetimeout#
	APPLICATIONTIMEOUT = #CreateTimeSpan(1,0,0,0)#>

<cfparam name="Application.Home" default="">
<cfparam name="Application.Website" default="http://www.torontovolleyball.com">
<cfparam name="Application.Dsn" default="tvolleyball">
<cfparam name="Application.AdminEmail" default="yogi@vstats.com">
<cfparam name="Application.FtpRoot" default="d:\website\tvolleyball">
<cfparam name="Application.Key" default="jimsucks">
<cfparam name="APPLICATION.dbTrue" default="-1">
<cfparam name="APPLICATION.dbFalse" default="0">
<cfscript>
// _home = "/tvolleyball/public";
_home = "";
_websiteid = 69;
_website = "http://www.masterofmydomain.ca";
_securesite = "https://www.mineafrica.com";
_components = "masterdomain_CF.components";
</cfscript>


