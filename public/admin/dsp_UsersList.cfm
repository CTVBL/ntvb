<cfinvoke component="yogiwan_CF.components.user" method="ListQuery" returnvariable="rsUsers">
</cfinvoke>

<cfset ctr = 0>
<cfset noofcols = 1>
<cfset maxrows = rsUsers.RecordCount>


<table cellspacing="0" cellpadding="0" width="100%" class="bodytext">  
  <tr>
	<td><cfmodule template="../templates/pagetitle.cfm" pagetitle="USERS LIST"></td>  
  </tr>
  <tr>
	<td>
	  <table width="100%" cellspacing="20" cellpadding="0" border="0">  
		<tr>
		  <td>
			<table cellspacing="0" cellpadding="0" width="300">  
			<cfoutput>
			  <tr height="20" colspan="#noofcols#" bgcolor="#headcolour#">
				<td width="10">&nbsp;</td>
				<td class="adminbartitle">Users</td>
				<td class="adminbartitle">Level</td>
			  </tr>
			</cfoutput>
			
			<cfoutput query = "rsUsers">
			  <tr>
				<td>&nbsp;</td>
				<td valign="top"><a href="Index.cfm?fuseaction=UserDetail&userid=#rsUsers.User_ID#&nextaction=UsersList" class="listitem">#rsUsers.User_Name#</a></td>
				<td valign="top" class="listitem">#rsUsers.Access_Level#</td>
			  </tr>
			</cfoutput>
			  <tr>
				<td>&nbsp;</td>
				<td colspan="3"><hr noshade size="1"></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td colspan="3"><A href="index.cfm?fuseaction=UserDetail&nextaction=UsersList" class="addlink">Add User</A></td>
			  </tr>
			</table>	
		  </td>  
		</tr>
	  </table>  	
	</td>
  </tr>
</table>

