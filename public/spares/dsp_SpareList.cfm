<cfinvoke component="tvolleyball_CF.components.contact" method="SpareListQuery" returnvariable="rsSpares">
</cfinvoke>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	color: #0B4769;
	font-weight: bold;
}
-->
</style>

<table border="0" cellpadding="4" cellspacing="1" width="662">
  <tr>
    <td height="1"><p class="bluetext style11 style4 style2"><font face="Arial" size="3">VOLLEYBALL SPARES</font></td>
    <td height="1"><div align="right"><b> <img border="0" src="../images/contact.jpg" width="50" height="50"></b></div></td>
  </tr>
  <tr>
	<td width="643" colspan="2">
	  <hr color="#000080" noshade size="1">
	  <table width="647" border="0" cellpadding="0" cellspacing="1">
		<tr bgcolor="#0B4769">
		  <td width="139" class="table_head style1">Level</td>
		  <td width="148" class="table_head style1">Name</td>
		  <td width="117" class="table_head style1">M/F</td>
		  <td width="132" class="table_head style1">Phone</td>
		  <td width="105" class="table_head style1">E-mail</td>
		</tr>
	<cfoutput query="rsSpares" group="gender">
	    <cfif rsSpares.CurrentRow/2 IS Int(rsSpares.CurrentRow/2)>
			<cfset bgcolor = "COCOCO">
		<cfelse>	
			<cfset bgcolor = "E2E2E2">
		</cfif>
        <cfoutput>
		<tr bgcolor="#bgcolor#" height="18">
		  <td class="text">#rsSpares.Skill_Level#</td>	
		  <td class="text">#rsSpares.First_Name# #rsSpares.Last_Name#</td>	
		  <td class="text">#rsSpares.Gender#</td>	
		  <td class="text">#rsSpares.Phone#</td>	
		  <td class="text">#rsSpares.Email#</td>	
		</tr>
        </cfoutput>
        <tr height="10"><td></td></tr>
	</cfoutput>	
	  </table>
	</td>  
  </tr>
</table>	  



