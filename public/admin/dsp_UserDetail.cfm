<cfparam name = "userid" default = "-1">
<cfparam name="nextaction" default="UsersList">

<cfif userid IS -1>
	<cfset accesslevel = 10>
	<cfset pwd = "">
	<cfset username = "">
	
<cfelse>
	<cfinvoke component="yogiwan_CF.components.user" method="DetailQuery" returnvariable="rsUser">
		<cfinvokeargument name="UserID" value="#userid#">
	</cfinvoke>
	<cfset accesslevel = rsUser.Access_Level>
	<cfset username = rsUser.User_Name>

	<cfif rsUser.Password IS "">
		<cfset pwd = "          ">
	<cfelse>	
		<cfset pwd = Decrypt(rsUser.Password, APPLICATION.Key)>
		<cfset pwd = Left("#pwd#          ",10)>
	</cfif>
</cfif>

<!--- Define function to delete record if requested --->
<cfoutput>
<script language = "JavaScript">
function DeleteRecord() {
	if (confirm("Are you sure you want to delete this record?")) {
		self.location.href = "Index.cfm?fuseaction=DeleteObject&objectname=user&userid=#userid#"
	}
}
</script>
</cfoutput>


<table width="100%" cellspacing="0" cellpadding="0" border="0">  
  <tr>
	<td><cfmodule template="../templates/pagetitle.cfm" pagetitle="USER ACCOUNT DETAIL" gotopage="index.cfm?fuseaction=#Replace(nextaction,'^','&','ALL')#"></td>  
  </tr>
  <tr>
	<td>
	  <table width="100%" cellspacing="0" cellpadding="20" border="0">  
		<tr>
		  <td>
			<cfform name="users" action="Index.cfm" method="post">
			<cfoutput>
			<table>
			  <tr>
				<td class="label">Account Name:</td>
				<td><input type="text" name="UserName" value="#username#" size="15"></td>
			  </tr>
			  <tr>
				<td class="bodytext">Password:</td>
				<td><input type="password" name="Password" value="#pwd#" size="15"><span class="smalltext">** Must be between 4-10 characters</span></td>
			  </tr>	
			  <tr>
				<td class="label">Access Level:</td>
				<td><input type="text" name="accesslevel" value="#accesslevel#" size="3"></td>
			  </tr>	
			  <tr>
				<td height="40" colspan="2"><input type="Submit" name="Save" value="   Save  ">&nbsp;
					<input type="button" name="Cancel" value=" Cancel " onclick="history.back()">&nbsp;
					<input type="button" name="Delete" value=" Delete  " onclick="DeleteRecord()">
				</td>
			  </tr>
			</table>
			<input type="hidden" name="fuseaction" value="UpdateObject">
			<input type="hidden" name="nextaction" value="#nextaction#">
			<input type="hidden" name="objectname" value="User">
			<input type="hidden" name="userid" value="#userid#">
			</cfoutput>
			</cfform>
		  </td>  
		</tr>
	  </table>  
	</td>
  </tr>
</table>
