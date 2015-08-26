<cfinvoke component="tvolleyball_CF.components.contact" method="ListQuery" returnvariable="rsContacts">
</cfinvoke>

<cfset ctr = 0>
<cfset noofcols = 2>
<cfset maxrows = rsContacts.RecordCount>
<cfset totalwidth = 500>
<cfset colwidth = Int(totalwidth/noofcols)>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
	<td><cfmodule template="templates/pagetitle.cfm" pagetitle="SPARES LIST"></td>  
  </tr>
  <tr>
	<td>
	  <table width="100%" cellspacing="20" cellpadding="0">
	    <tr>
		  <td>
			<table width="540" cellspacing="0" cellpadding="0">   
			  <cfoutput>
			  <tr height="20" bgcolor="#headcolour#">
				<td>&nbsp;</td>  
				<td width="130" align="left" class="listheading">CONTACT</td>
				<td width="50" align="left" class="listheading">M/F</td>
				<td width="100" align="left" class="listheading">LEVEL</td>  
				<td width="200" align="left" class="listheading">E-MAIL</td>  
				<td width="100" class="listheading">PHONE</td>  
			  </tr>
			  </cfoutput>
			<cfif rsContacts.RecordCount GT 0>
			  <cfoutput query = "rsContacts">
			  <tr>
				<td width="10">&nbsp;</td>
				<td valign="top"><A href="Index.cfm?fuseaction=SpareDetail&contactid=#rsContacts.Contact_ID#" class="listitem">#rsContacts.First_Name# #rsContacts.Last_Name#</a></td>
				<td valign="top" class="listitem">#rsContacts.Gender#</td>
				<td valign="top" class="listitem">#rsContacts.Skill_Level#</td>
				<td valign="top" class="listitem">#rsContacts.Email#</td>
				<td valign="top" align="center" class="listitem">#rsContacts.Phone#</td>
			  </tr>
			  </cfoutput>
			<cfelse>
			  <tr height="30">
				<td align="center" colspan="5">There are no Contacts</td>  
			  </tr>  
			</cfif>
			<cfoutput>
			  <tr><td colspan="6"><hr noshade size="1" color="#headcolour#"></td></tr>
			  <tr height="25">
				<td colspan="5"><a href="Index.cfm?fuseaction=SpareDetail&contactid=-1" class="addlink">Add Spare</a></td>  
			  </tr>
			</cfoutput>
			</table>
		  </td>
		</tr> 
	  </table>	  
	</td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>