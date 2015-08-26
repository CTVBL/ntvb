<cfparam name = "contactid" default = "-1">
<cfparam name = "nextaction" default = "SparesList">
<cfparam name = "contacttype" default = "Contact">

<cfif contactid IS -1>
	<cfset lastname = "">
	<cfset firstname = "">
	<cfset level = "--- Select Level ---">
	<cfset gender = "">
	<cfset emailaddress = "">
	<cfset phone = "">
<cfelse>
	<cfinvoke component="tvolleyball_CF.components.contact" method="DetailQuery" returnvariable="rsContact">
		<cfinvokeargument name="contactid" value="#contactid#">
	</cfinvoke>

	<cfscript>
	lastname = rsContact.Last_Name;
	firstname = rsContact.First_Name;
	level = rsContact.Skill_Level;
	gender = rsContact.Gender;
	emailaddress = rsContact.Email;
	phone = rsContact.Phone;
	</cfscript>
	
</cfif>
<cfinvoke component="tvolleyball_CF.components.level" method="ListBoxQuery" returnvariable="rsLevels">
</cfinvoke>

<script language="JavaScript" src="../../templates/FormValidation.js"></script>
<script language = "JavaScript">
<cfoutput>

function DeleteRecord() {
	if (confirm("Are you sure you want to delete this record?")) {
		self.location.href = "Index.cfm?fuseaction=DeleteObject&objectname=contact&contactid=#contactid#&nextaction=#nextaction#";
	}
}

</cfoutput>
</script>

<cfset gotopage = "Index.cfm?fuseaction=" & Replace(nextaction,"^","&","ALL")>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
	<td><cfmodule template="templates/pagetitle.cfm" pagetitle="CONTACT DETAIL" gotopage="#gotopage#"></td>  
  </tr>	
  <tr>
	<td>
	
<table width="100%" cellpadding="0" cellspacing="20" border="0">
  <tr>
	<td>
		<cfform name="ContactDetail" action="Index.cfm" method="post">
		<cfoutput>
		<table cellpadding="0" cellspacing="0" border="0">
		  <tr height="20" bgcolor="#headcolour#">
			<td align="center" colspan="6" class="listheading">Contact Information</td>
		  </tr>
		  <tr>
			<td><img src="../images/spacer.gif" width="80" height="5"></td>
			<td><img src="../images/spacer.gif" width="120" height="5"></td>
			<td><img src="../images/spacer.gif" width="80" height="5"></td>
			<td><img src="../images/spacer.gif" width="20" height="5"></td>
			<td><img src="../images/spacer.gif" width="50" height="5"></td>
			<td><img src="../images/spacer.gif" width="50" height="5"></td>
		  </tr>
		  <tr>
			<td class="form_label">First Name:</td>
			<td><input type="text" name="FirstName" value="#firstname#" size="15" class="form_contactshort"></td>
		  </tr>	
		  <tr>
			<td class="form_label">Last Name:</td>
			<td colspan="3"><input type="text" name="LastName" value="#lastname#" size="15" class="form_contactshort"></td>
		  </tr>	
		  <tr>
			<td class="form_label">Gender:</td>
			<td colspan="5"><input type="text" name="Gender" value="#gender#" size="1" class="form_contactlong"></td>	
		  </tr>	
		  <tr>
			<td class="form_label">Level:</td>
			<td colspan="5">
			  <cfselect name="Level" query="rsLevels" display="Level_Name" value="Level_Name" selected="#level#"></cfselect>
			</td>
		  </tr>	
		  <tr>
			<td class="form_label">E-mail:</td>
			<td colspan="5"><input type="text" name="Email" value="#emailaddress#" size="45" class="form_contactlong"></td>
		  </tr>	
		  <tr>
			<td class="form_label">Phone:</td>
			<td colspan="5"><input type="text" name="Phone" value="#phone#" size="20" class="form_contactlong"></td>
		  </tr>	
		  <tr bgcolor="#headcolour#" height="28">
		    <td align="center" colspan="6">
				<input type="submit" name="Save" value="   Save  ">&nbsp;
				<input type="button" name="Cancel" value=" Cancel " onclick="history.back()">&nbsp;
				<input type="button" name="Delete" value=" Delete  " onclick="DeleteRecord()">
			</td>
		  </tr>
		  </cfoutput>
		</table>
		<cfoutput>
		<input type="hidden" name="fuseaction" value="UpdateObject">
		<input type="hidden" name="objectname" value="Contact">
		<input type="hidden" name="nextaction" value="#nextaction#">
		<input type="hidden" name="contactid" value="#contactid#">
		</cfoutput>
		</cfform>
	</td>  
  </tr>
</table>
	
	</td>  
  </tr>
</table>


