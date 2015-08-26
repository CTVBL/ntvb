<cfparam name="ATTRIBUTES.GotoPage" default="#APPLICATION.Home#/admin/Index.cfm">
<cfparam name="ATTRIBUTES.PageTitle" default="Administration">

<cfoutput>
<table width="600" border="0" cellpadding="0" cellspacing="0">
  <tr height="2" bgcolor="000080"><td colspan="3"></td></tr>
  <tr>
	<td width="20"></td>
	<td width="540" align="left" class="topheading">#UCase(ATTRIBUTES.PageTitle)#</td>
	<td width="40" align="right">
		<table cellpadding="1" cellspacing="0" border="1" bgcolor="184B8B">
		  <tr>
			<td><a href="#ATTRIBUTES.GotoPage#" class="closebutton">&nbsp;X&nbsp;</a></td>
		  </tr>
		</table>
	</td>
  </tr>
  <tr height="2" bgcolor="000080"><td colspan="3"></td></tr>
</table>
</cfoutput>

