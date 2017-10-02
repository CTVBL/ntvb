<cfset today = CreateOdbcDate(Now())>

<cfquery name="NextGameDate" datasource="#APPLICATION.Dsn#">
Select Min(GameDate) As Game_Date
From ScheduleTeam, Team, Schedule, Division, Location
Where Division.DivisionID = Team.DivisionID
 And ScheduleTeam.TeamID = Team.TeamID
 And ScheduleTeam.ScheduleID = Schedule.ScheduleID
 And Schedule.LocationID = Location.LocationID
 And Schedule.GameDate >= #today# 
Order By 1 DESC
</cfquery>

<cfif IsDate(NextGameDate.Game_Date)>
	<cfset nextgamedate = CreateOdbcDate(NextGameDate.Game_Date)>
	
	<cfquery name="NextGame" datasource="#APPLICATION.Dsn#">
	Select Schedule.ScheduleID, DivisionName, TeamName, TeamNo, GameDate, LocationName, Is_Location
	From ScheduleTeam, Team, Schedule, Division, Location
	Where Division.DivisionID = Team.DivisionID
	 And ScheduleTeam.TeamID = Team.TeamID
	 And ScheduleTeam.ScheduleID = Schedule.ScheduleID
	 And Schedule.LocationID = Location.LocationID
	 And Schedule.GameDate = #nextgamedate#
	Order By GameDate, DivisionNo, TeamNo
	</cfquery>
	
	<cfquery name="Schedule" datasource="#APPLICATION.Dsn#">
	SELECT ScheduleID, GameDate, LocationName, DivisionName
	From Schedule, Division, Location
	Where Schedule.DivisionID = Division.DivisionID
	 And Schedule.LocationID = Location.LocationID
	 And Schedule.GameDate > #nextgamedate#
	Order By GameDate, DivisionNo
	</cfquery>
</cfif>

<br>
<table width="600" cellpadding="0" cellspacing="0" border="0">
  <tr>
	<td width="20">&nbsp;</td>  
	<td>
	  <p class="title">Volleyball Schedule</p>
	</td>
  </tr>
  <tr>
	<td><img src="../images/space_white.gif" width="100%" height="10"></td>  
  </tr>
  <tr>
	<td width="20">&nbsp;</td>  
	<td width="580"><p><b>Games start at 6:45 pm</b> sharp and must be finished by 9:45 pm. 
		There will be four teams at each gym - teams that are not playing are 
		responsible for refereeing, keeping lines, and scoring. 
		The schedule is set up so that each team plays 5 games 
		each evening.  Games will be rally point to 25 (max at 27).  Games 
		that are not played will be considered a tie - no points will be 
		awarded for such games.
		
		If you have any questions or concerns please contact 
		<a href="mailto:sdaley@dimensionaltech.com">Steve</a> or 
		<a href="mailto:tvolleyball@home.com">Jim</a>.</p>

	<cfif IsDefined("NextGame")>
		<cfoutput>
		<p class="boldtext">Next Game: #DateFormat(nextgamedate,"dddd, mmmm d")#</p>
		</cfoutput>
		<table width="570">
		  <tr>
		  <cfoutput query="NextGame" group="DivisionName">

		    <td valign="top">
			  <table cellspacing="0" cellpadding="0" border="0">
			    <tr><td colspan="2" class="bluetext"><a href="Index.cfm?fuseaction=ScheduleDetail&ScheduleID=#NextGame.ScheduleID#">#NextGame.DivisionName#</a></td></tr>
			  <cfif NextGame.Is_Location>
			    <tr><td colspan="2" class="bluetext"><a href="Index.cfm?fuseaction=ScheduleDetail&ScheduleID=#NextGame.ScheduleID#">#NextGame.LocationName#</a></td></tr>
			  </cfif>	
				<tr><td colspan="2"><img src="../images/bluespacer.gif" width="150" height="1"></td></tr>
			  <cfif NextGame.Is_Location IS False>
				<tr><td class="text">&nbsp;</td></tr>
				<tr>
				  <td class="text"><b>#NextGame.LocationName#</b></td>
				</tr>
			  </cfif>	
			  <cfoutput>
			    <cfif NextGame.Is_Location>
				<tr>
				  <td width="50" class="text">Team #NextGame.TeamNo#:</td>
				  <td width="140" class="text">#NextGame.TeamName#</td>
				</tr>   
				</cfif>
			  </cfoutput>
			  </table>
			</td>
		  </cfoutput>
		  </tr>
		  
		  <tr>
		    <td colspan="3"><img src="../images/bluespacer.gif" width="570" height="1"></td>
		  </tr>
		</table>
	<cfelse>
		<p class="boldtext">Next Game:</p>	
		<p class="bodytext">There are no games scheduled for this week</p>	
	</cfif>

		<br>
		<p class="boldtext">Future Games:</p>
		
	<cfif IsDefined("Schedule")>
		<table>
		  <th width="50" align="left" class="bluetext">Date</th>
		  <th width="200" align="left" class="bluetext">Location</th>
		  <th width="150" align="left" class="bluetext">Division</th>
		  <th width="50" align="left" class="bluetext">&nbsp;</th>
		<cfoutput query="Schedule" group="gamedate">
		  <tr><td colspan="4"><img src="../images/bluespacer.gif" width="450" height="1"></td></tr>
		  <cfoutput>
		  <tr>
			<td class="text">#DateFormat(Schedule.GameDate,"mmm d")#</td>  
			<td class="text"><a href="../maps.htm">#Schedule.LocationName#</a></td>  
			<td class="text">#Schedule.DivisionName#</td>  
			<td class="text"><a href="Index.cfm?fuseaction=ScheduleDetail&ScheduleID=#Schedule.ScheduleID#">Detail</a></td>  
		  </tr>
		  </cfoutput>
		</cfoutput>  
		  <tr><td colspan="4"><img src="../images/bluespacer.gif" width="450" height="1"></td></tr>
		</table>
	<cfelse>
		<p class="bodytext">There are no games scheduled</p>	
	</cfif>
	</td>
  </tr>
</table>


<p>&nbsp;</p>
</body>
</html>
