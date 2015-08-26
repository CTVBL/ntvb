<cfparam name = "referenceid" default = "-1">
<cfparam name = "nextaction" default = "ReferencesList">

<cfif referenceid IS -1>
	<cfset refname = "">
	<cfset refvalue = "">
	<cfset description = "">
	<cfset isencrypted = false>
<cfelse>
	<cfinvoke component="yogiwan_CF.components.reference" method="DetailQuery" returnvariable="rsReference">
		<cfinvokeargument name="referenceid" value="#referenceid#">
	</cfinvoke>
	<cfinvoke component="yogiwan_CF.components.reference" method="getEncryptionKey" returnvariable="refkey">
	</cfinvoke>
	<cfscript>
	refname = rsReference.Reference_Name;
	isencrypted = rsReference.Is_Encrypted;
	description = rsReference.Description;
	if (isencrypted) {
		refvalue = Decrypt(rsReference.Reference_Value, refkey);
	} else {
		refvalue = rsReference.Reference_Value;	
	}
	</cfscript>
	
</cfif>

<!--- Define function to delete record if requested --->
<cfoutput>
<script language = "JavaScript">
function DeleteRecord() {
	if (confirm("Are you sure you want to delete the item #refname#?")) {
		self.location.href = "Index.cfm?fuseaction=DeleteObject&objectname=reference&referenceid=#referenceid#&nextaction=#nextaction#"
	}
}
</script>
</cfoutput>
<cfset gotopage="index.cfm?fuseaction=#Replace(nextaction,'^','&','ALL')#">

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
	<td><cfmodule template="../templates/pagetitle.cfm" pagetitle="REFERENCE DETAIL" gotopage="#gotopage#"></td>  
  </tr>	
  <tr>
	<td>
	  <table width="100%" cellpadding="20" cellspacing="0" border="0">
		<tr>
		  <td>
			<cfform name="References" action="Index.cfm" method="post">
			<cfoutput>
			<table>
			  <tr>
				<td class="bodytext">Reference:</td>
				<td><input type="text" name="ReferenceName" value="#refname#" size="20"></td>
			  </tr>	
			  <tr>
				<td class="bodytext">Value:</td>
				<td><input type="text" name="ReferenceValue" value="#refvalue#" size="40"></td>
			  </tr>	
			  <tr>
				<td valign="top" class="bodytext">Description:</td>
				<td><textarea name="Description" cols="40" rows="3">#description#</textarea></td>
			  </tr>	
			  <tr>
				<td class="bodytext">Is Encrypted:</td>
				<td><input type="checkbox" name="IsEncrypted" value="#dbTrue#" <cfif isencrypted>CHECKED</cfif>></td>
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
			<input type="hidden" name="objectname" value="Reference">
			<input type="hidden" name="referenceid" value="#referenceid#">
			</cfoutput>
			</cfform>
		  </td>
		</tr>
	  </table>  	
	</td>
  </tr>
</table>  	
