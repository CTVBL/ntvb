<cfquery name="Standings" datasource="#APPLICATION.Dsn#">
Select DivisionName, TeamName, Wins, Losses, Ties, Defaults, Wins*2+Ties As Points, Wins+Losses+Ties+Defaults As GP
From Team, Division
Where Division.DivisionID = Team.DivisionID
Order By DivisionNo, 7 DESC, 8
</cfquery>

<table width="520" cellspacing="0" cellpadding="0" border="0">
  <tr><td>&nbsp;</td></tr>
  <tr>
	<td width="20">&nbsp;</td>  
	<td width="500">
		<table width="500" border="1" align="left" cellpadding="2" cellspacing="0">
		<cfoutput query="Standings" group="divisionname">
		  <tr bgcolor="006699" align="middle"> 
		    <td colspan="7" height="35" align="middle" class="whitehead">#Standings.DivisionName# - Regular Season Standings</td>
		  </tr>
		  <tr bgcolor="006699"> 
		    <td width="200" align="center" class="whitehead">Team Name</td>
		    <td width="50" align="center" class="whitehead">GP</td>
		    <td width="50" align="center" class="whitehead">W</td>
		    <td width="50" align="center" class="whitehead">L</td>
		    <td width="50" align="center" class="whitehead">T</td>
		    <td width="50" align="center" class="whitehead">Defaults</td>
		    <td width="50" align="center" class="whitehead">Points</td>
		  </tr>
		  <cfoutput>
		  <tr bgcolor="ffffff"> 
		    <td width="200" align="middle" bgcolor="C0C0C0" class="text">#Standings.TeamName#</td>
		    <td width="50" align="center" bgcolor="C0C0C0" class="text">#Standings.GP#</td>
		    <td width="50" align="center" bgcolor="C0C0C0" class="text">#Standings.Wins#</td>
		    <td width="50" align="center" bgcolor="C0C0C0" class="text">#Standings.Losses#</td>
		    <td width="50" align="center" bgcolor="C0C0C0" class="text">#Standings.Ties#</td>
		    <td width="50" align="center" bgcolor="C0C0C0" class="text">#Standings.Defaults#</td>
		    <td width="50" align="center" bgcolor="C0C0C0" class="text">#Standings.Points#</td>
		  </tr>
		  </cfoutput>  
		</cfoutput>  
		</table>	
	</td>
  </tr>
</table>

</body>
</html>