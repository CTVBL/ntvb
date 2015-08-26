<cfparam name="fuseaction" default="SpareList">
<cfinclude template="app_locals.cfm">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="Keywords" content="Toronto Volleyball, Volleyball, Toronto, Canada, Recreation, Competitive, Indoor, Court">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Toronto North Volleyball</title>
<link rel="stylesheet" type="text/css" href="../templates/styles.css">
</head>

<body topmargin="5" leftmargin="5">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
	<td><cfinclude template="dsp_TopMenu.cfm"></td>
  </tr>
  <tr>
	<td>
	  <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" width="790">
		<tr>
		  <td valign="top" width="127" align="left" bgcolor="#92CE48"><cfinclude template="dsp_LeftNav.cfm"></td>
		  <td valign="top" width="663" bordercolorlight="#00FF00">
<cfswitch expression = "#fuseaction#">
	<cfcase value = "Login">
		<cfinclude template="dsp_Login.cfm">
	</cfcase>

	<cfcase value = "SpareList">
		<cfinclude template="dsp_SpareList.cfm">
	</cfcase>

</cfswitch>
		  </td>
		</tr>
	  </table>
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%" height="28" style="border-collapse: collapse" bordercolor="#111111">
              <tr>
                <th width="306" bordercolor="#000000" height="28" background="images/spacer.gif" align="left"> <p align="left"><font face="Arial" size="1"> <font color="#000080">&nbsp; </font> <a href="mailto:contact@torontovolleyball.com?subject=New%20Toronto%20Volleyball%20Inquiry" target="_top"> <font color="#000080">New Toronto Volleyball</font></a><font color="#000080">&nbsp; <br>
&nbsp; &copy; 2001-2009 All rights reserved. </font> </font> </th>
                <th width="812" bordercolor="#000000" height="28" background="images/spacer.gif" align="left">&nbsp;</th>
              </tr>
          </table></td>
        </tr>
      </table>
    <p>&nbsp;</p></td>  
  </tr>
</table>
</body>

</html>