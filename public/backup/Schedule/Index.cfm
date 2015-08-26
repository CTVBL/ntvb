<cfinclude template="app_locals.cfm">

<HTML>
<HEAD>
	<link rel="stylesheet" href="../templates/styles.css">
</HEAD>
<cfparam name="fuseaction" default="Schedule">

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<cfswitch expression = "#fuseaction#">
	<cfcase value="Schedule">	
		<cfinclude template="dsp_Schedule.cfm">
	</cfcase>

	<cfcase value="ScheduleDetail">	
		<cfinclude template="dsp_ScheduleDetail.cfm">
	</cfcase>
</cfswitch>
</body>
</html>
