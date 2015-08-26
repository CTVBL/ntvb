<!--- Define the application parameters --->
<cfinclude template = "../app_locals.cfm">
<cflock scope="session" timeout="10" type="exclusive">
<cfparam name="Session.IsLogSpare" default="false">
</cflock> 

<cfif IsDefined("Form.Password")>
	<cfif Form.Password IS "ineedaspare">
		<cflock scope="session" timeout="10" type="exclusive">
		<cfset Session.IsLogSpare = true>
		</cflock>
	</cfif>
</cfif>

<cfif Session.IsLogSpare IS false>
	<cfset fuseaction = "login">
</cfif>
