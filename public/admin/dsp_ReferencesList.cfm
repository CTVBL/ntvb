<cfinvoke component="yogiwan_CF.components.reference" method="ListQuery" returnvariable="rsReferences">
<cfset ctr = 0>
<cfset noofcols = 1>
<cfset maxrows = rsReferences.RecordCount>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
	<td><cfmodule template="../templates/pagetitle.cfm" pagetitle="REFERENCES LIST"></td>  
  </tr>	
  <tr>
	<td>
	  <table width="100%" cellspacing="20" cellpadding="0" border="0">  
		<tr>
		  <td>
			  <table cellspacing="0" cellpadding="0" border="0">  
			  <cfoutput>
				<tr height="20" bgcolor="#headcolour#">
				  <td width="150" class="listheading">&nbsp;REFERENCE ITEM</td>
				  <td width="240" class="listheading">DESCRIPTION</td>
				  <td width="150" class="listheading">VALUE</td>
				</tr>  
			  </cfoutput>
			  <cfoutput query = "rsReferences">
				<tr>
				  <td valign="top">&nbsp;<a href="Index.cfm?fuseaction=ReferenceDetail&referenceid=#rsReferences.Reference_ID#" class="listitem">#rsReferences.Reference_Name#</a></td>
				  <td valign="top" class="listitem">#rsReferences.Description#</td>
				  <td valign="top" class="listitem">
					<cfif rsReferences.Is_Encrypted>
						XXXXXXXXXX
					<cfelse>	
						#rsReferences.Reference_Value#
					</cfif>
				  </td>
				</tr>
			  </cfoutput>
			  <cfoutput>
				<tr><td colspan="3"><hr noshade size="2" color="#headcolour#"></td></tr>
			  </cfoutput>
				<tr><td colspan="3"><A href="index.cfm?fuseaction=ReferenceDetail" class="addlink">Add New Reference Item</A></td></tr>
			  </table>	
		  </td>
		</tr>
	  </table>
	</td>
  </tr>
</table>
  	