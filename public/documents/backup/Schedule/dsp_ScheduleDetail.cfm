<cfset today = CreateOdbcDate(Now())>

<cfquery name="Games" datasource="#APPLICATION.Dsn#">
SELECT GameNo, Away.TeamName As TeamName1, Home.TeamName As TeamName2
From GamesMaster, ScheduleTeam AwayTeam, Team Away, Schedule AwaySched,
  ScheduleTeam HomeTeam, Team Home, Schedule HomeSched
Where GamesMaster.AwayTeamNo = AwayTeam.TeamNo
 And AwayTeam.ScheduleID = AwaySched.ScheduleID
 And AwayTeam.TeamID = Away.TeamID
 And AwaySched.ScheduleID = #scheduleid#
 And GamesMaster.HomeTeamNo = HomeTeam.TeamNo
 And HomeTeam.ScheduleID = HomeSched.ScheduleID
 And HomeTeam.TeamID = Home.TeamID
 And HomeSched.ScheduleID = #scheduleid#
Order By GameNo
</cfquery>

<cfquery name="Schedule" datasource="#APPLICATION.Dsn#">
Select GameDate, DivisionName
From Schedule, Division
Where Schedule.DivisionID = Division.DivisionID
 And Schedule.ScheduleID = #scheduleid#
</cfquery>

<table width="400" cellpadding="0" cellspacing="0" border="0">
  <tr>
	<td colspan="2">&nbsp;</td>  
  </tr>
  <tr>
	<td width="50">&nbsp;</td>  
	<td width="350">
	  <cfoutput>
		<table>
		  <tr>
			<td width="60" class="bluetext">Date:</td>  
			<td width="200" class="bluetext">#DateFormat(Schedule.GameDate, "mmm d, yyyy")#</td>
		  </tr>
		  <tr>
			<td class="bluetext">Division:</td>  
			<td class="bluetext">#Schedule.DivisionName#</td>  
		  </tr>
		</table>
	  </cfoutput>
		</p>
		<table>
		  <th width="30" class="bluetext">Game</th>
		  <th width="150" class="bluetext">Away Team</th>
		  <th width="20" class="bluetext">&nbsp;</th>
		  <th width="150" class="bluetext">Home Team</th>
		  <tr><td colspan="4"><img src="../images/bluespacer.gif" width="100%" height="1"></td></tr>
		<cfoutput query="Games">
		  <tr>
			<td align="center" class="text">#Games.GameNo#.</td>  
			<td class="text">#Games.TeamName1#</a></td>  
			<td align="center" class="boldtext">vs.</td>
			<td class="text">#Games.TeamName2#</td>  
		  </tr>
		</cfoutput>  
		  <tr><td colspan="4"><img src="../images/bluespacer.gif" width="100%" height="1"></td></tr>
		</table>
		
		
	</td>
  </tr>
</table>



<p>&nbsp;</p>
</body>
</html>