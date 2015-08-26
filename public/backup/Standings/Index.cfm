<cfinclude template="app_locals.cfm">

<HTML>
<HEAD>
	<link rel="stylesheet" href="../templates/styles.css">
</HEAD>
<cfparam name="fuseaction" default="Standings">

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<cfswitch expression = "#fuseaction#">
	<cfcase value="Standings">	
		<cfinclude template="dsp_Standings.cfm">
	</cfcase>
</cfswitch>
</body>
</html>
