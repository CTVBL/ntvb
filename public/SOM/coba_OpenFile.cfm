<!--- security check --->
<CFIF Find('..', URL.ServerFile) OR Find('\', URL.ServerFile)>
  Error: You are not allowed to access this file
  <CFABORT>
</CFIF>

<!--- parameters --->
<CFSET LibraryDirectory = "C:\Virtuals\torontovolleyball_com\wwwPublic">
<CFSET MimeTypes = ".cfm,.htm,.html,.txt,.jpg,.gif,.png,.css,.js">
<CFPARAM NAME="URL.ServerPath" DEFAULT="">

<CFIF IsDefined("URL.ServerPath") AND URL.ServerPath NEQ "">
  <CFSET FilePath = "#LibraryDirectory#\#URL.ServerPath#\#URL.ServerFile#">
<CFELSE>
  <CFSET FilePath = "#LibraryDirectory#\#URL.ServerFile#">
</CFIF>

<!---
<CFOUTPUT>
  Server Path: #URL.ServerPath#<BR>
  Server File: #URL.ServerFile#<BR>
  File Path: #FilePath#<BR>
</CFOUTPUT>
<CFABORT>
--->

<!--- extract the file extension --->
<CFSET SeparatorPos = Find( '.', Reverse(URL.ServerFile) )>
<CFIF SeparatorPos IS 0> <!--- separator not found --->
	<CFSET FileExt = ''>
<CFELSE>
	<CFSET FileExt = Right( URL.ServerFile, SeparatorPos - 1 )>
</CFIF>

<!--- find the proper MIME type --->
<CFIF FileExt IS "pdf">
  <CFSET FileType = "application/pdf">
<CFELSEIF FileExt IS "aif">
  <CFSET FileType = "audio/aiff">
<CFELSEIF FileExt IS "aiff">
  <CFSET FileType = "audio/aiff">
<CFELSEIF FileExt IS "art">
  <CFSET FileType = "image/x-jg">
<CFELSEIF FileExt IS "cil">
  <CFSET FileType = "application/vnd.ms-artgalry">
<CFELSEIF FileExt IS "gif">
  <CFSET FileType = "image/gif">
<CFELSEIF FileExt IS "jpg">
  <CFSET FileType = "image/jpeg">
<CFELSEIF FileExt IS "png">
  <CFSET FileType = "image/png">
<CFELSEIF FileExt IS "tif">
  <CFSET FileType = "image/tiff">
<CFELSEIF FileExt IS "txt">
  <CFSET FileType = "text/plain">
<CFELSEIF FileExt IS "htm">
  <CFSET FileType = "text/html">
<CFELSEIF FileExt IS "html">
  <CFSET FileType = "text/html">
<CFELSEIF FileExt IS "cfm">
  <CFSET FileType = "text/html">
<CFELSEIF FileExt IS "css">
  <CFSET FileType = "text/css">
<CFELSEIF FileExt IS "js">
  <CFSET FileType = "text/javascript">
<CFELSE>
  <CFSET FileType = "unknown">
</CFIF>

<!--- return requested file --->
<CFCONTENT TYPE="#FileType#" FILE="#FilePath#">
