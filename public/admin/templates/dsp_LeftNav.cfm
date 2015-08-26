<!--- Left Nav: Administration --->
<cfset home = "#APPLICATION.Home#">
<cfset adminhome = "#home#/admin">

<cfoutput>
<table width="160" cellpadding="0" cellspacing="0" border="0">
  <tr bgcolor="000080" height="2"><td colspan="2"></td></tr>
  <tr height="20">
	<td width="20" class="topnav">&nbsp;</td>  
	<td width="130" class="topnav">&nbsp;</td>  
  </tr>
  <tr bgcolor="000080" height="2"><td colspan="2"></td></tr>
  <tr height="20"><td colspan="2"></td></tr>
  <tr>
    <td>&nbsp;</td>
	<td>
		<a href="#adminhome#/Index.cfm" class="menuitem">MAIN MENU</a><br>
		<a href="#adminhome#/Index.cfm?fuseaction=SparesList" class="menuitem">SPARES LIST</a><br>
		<a href="#adminhome#/Index.cfm?fuseaction=LogOut" class="menuitem">LOG OUT</a><br>
	</td>
  </tr>
</table>
</cfoutput>

