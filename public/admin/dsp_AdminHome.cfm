<table width="580" cellspacing="0" cellpadding="0" border="0">
  <tr>
	<td><cfmodule template="templates/pagetitle.cfm" pagetitle="ADMINISTRATION MENU" gotopage="Index.cfm"></td>  
  </tr>
  <tr>
	<td>
	  <table cellpadding="0" cellspacing="20" border="0">
	    <tr>
		  <td>
		  <cfoutput>
			<table cellspacing="0" border="0">
			  <tr>
				<td width="250" align="center" bgcolor="#headcolour#" class="listheading">Maintenance</td>
				<td width="17">&nbsp;</td>
				<td width="250" align="center" bgcolor="#headcolour#" class="listheading">Administration</td>
			  </tr>
			  <tr>
				<td valign="top">
				  <ul>
					<li><a href="Index.cfm?fuseaction=SparesList" class="menuitem">Spares List</a></li>
				  </ul>				  
				</td>
				<td width="17">&nbsp;</td>
				<td valign="top" class="menutext">
				  <ul>
					<li><a href="Index.cfm?fuseaction=UsersList" class="menuitem">Users</a></li>
					<li><a href="Index.cfm?fuseaction=ReferencesList" class="menuitem">Reference Numbers</a></li>
				  </ul>
				</td>
			  </tr>
			</table>	
		  </cfoutput>
		  </td>
		</tr>
	  </table>	
	</td>  
  </tr>
</table>
  
