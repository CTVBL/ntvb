<cfinclude template = "app_locals.cfm">
<cfparam name="fuseaction" default="Home">

<html>
<head>
	<title>YogiWan Inc. Administration</title>
	<link rel="stylesheet" href="templates/admin.css" type="text/css">
</head>


<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="ffffff">
  <tr>
	<td width="100%" height="30">&nbsp;</td>  
  </tr>
  <tr>
	<td align="center">
	  <table width="760" height="550" cellpadding="0" cellspacing="0" border="1" bordercolorlight="0E3F76" bordercolordark="0F4076" bgcolor="FFFFFF">
	    <tr>
		  <td valign="top">
			<table width="760" cellpadding="0" cellspacing="0" border="0">
			  <tr height="50" bgcolor="000080">
			    <td colspan="2">&nbsp;</td>
			  </tr>
			  <tr>
			    <td width="160" valign="top"><cfinclude template="templates/dsp_LeftNav.cfm"></td>
				<td width="600" valign="top">

<cfswitch expression = "#fuseaction#">
	<cfcase value = "Home">
		<cfinclude template="dsp_AdminHome.cfm">
	</cfcase>

	<cfcase value = "Logout">
		<cflock scope="session" type="exclusive" timeout="10">
		<cfscript>
		StructClear(Session);		
		</cfscript>
		</cflock>
		
		<cfoutput>
		<script language="JavaScript">
		top.location.href = "#adminhome#/Index.cfm";
		</script>
		</cfoutput>
	</cfcase>

	<cfcase value = "SparesList">
		<cfinclude template="dsp_SparesList.cfm">
	</cfcase>

	<cfcase value = "SpareDetail">
		<cfinclude template="dsp_SpareDetail.cfm">
	</cfcase>

	<!--- Update Database Tables --->
	<cfcase value = "UpdateObject">
		<cfinvoke component="tvolleyball_CF.components.#objectname#" method="Save" argumentcollection="#FORM#">
		</cfinvoke>
		<cfset nextaction = Replace(nextaction, "^", "&","ALL")>
		<cfoutput>
		<script language="JavaScript">
		self.location.href = "Index.cfm?fuseaction=#nextaction#"
		</script>
		</cfoutput>
		<CFEXIT>	
	</cfcase>
	
	<cfcase value = "DeleteObject">
		<cfinvoke component="tvolleyball_CF.components.#objectname#" method="Delete" argumentcollection="#URL#">
		</cfinvoke>
		<cfset nextaction = Replace(nextaction, "^", "&","ALL")>
		<cfoutput>
		<script language="JavaScript">
		self.location.href = "Index.cfm?fuseaction=#nextaction#"
		</script>
		</cfoutput>
		<CFEXIT>	
	</cfcase>

</cfswitch>

				</td>
			  </tr>
			</table>
		  </td>
		</tr>
	  </table>	
	</td>  
  </tr>
  <tr>
	<td width="100%" height="30">&nbsp;</td>  
  </tr>
</table>

</body>
</html>
