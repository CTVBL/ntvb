<!--- SOM - index.cfm --->
<cfset appName="Site Operations Manager">
<cfset appVersion="1.40">

<!--- Enter absolute root directory path - do not put slash '\' after last entry --->
<cfset DirectoryPath = "C:\Virtuals\torontovolleyball_com\wwwPublic">
<cfset mime = ".cfm,.htm,.html,.txt,.jpg,.gif,.png,.css,.js,.pdf,.dat">

<!--- Options --->
<cfset uploadNameConflict = "OVERWRITE"> <!--- error/makeunique/overwrite/skip --->
<cfset fileBackupName = "_YYYYMMDD_HHMM_XXX"> <!--- template for backup file name - DISPLAY ONLY - NOT USED --->

<!--- Parameters --->
<cfif ParameterExists(URL.path)>
  <cfset LibraryDirectory = #directorypath# & '\' & #URL.path#>
<cfelse>
  <cfset LibraryDirectory = #directorypath#>
</cfif>

<cfif ParameterExists(URL.path)>
  <cfset up_path = "test">
</cfif>

<html>
<head>
    <title><cfoutput>#appName# #appVersion#</cfoutput></title>
</head>
<body bgcolor="ffffff" text="Black">
<cfdirectory action="LIST" directory="#LibraryDirectory#" name="GetFiles" sort="type asc, name asc">
<table cellspacing=1 cellpadding=0 bgcolor="Black" align="center" width="700">
<tr>
  <td bgcolor="White">
    <font face="Arial" size="5" color="BLUE">
      <strong>
        <cfoutput>#appName# #appVersion#</cfoutput>
      </strong>
    </font>
    <br>
  </td>
</tr>
<tr>
  <td bgcolor="Navy">
    <font face="Arial" size="2" color="white"><b>Active directory : <cfoutput><font color="Lime">#LibraryDirectory#</font></cfoutput></b></font>
  </td>
</tr>
<tr>
<td bgcolor="White">

<cfif ParameterExists(FORM.upload)>

  <br><br>
  <blockquote>
  <ul>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f1) and f1 is not ''>
    <cffile action="UPLOAD" filefield="f1" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font>  
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f2) and f2 is not ''>
    <cffile action="UPLOAD" filefield="f2" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f3) and f3 is not ''>
    <cffile action="UPLOAD" filefield="f3" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f4) and f4 is not ''>
    <cffile action="UPLOAD" filefield="f4" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f5) and f5 is not ''>
    <cffile action="UPLOAD" filefield="f5" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f6) and f6 is not ''>
    <cffile action="UPLOAD" filefield="f6" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f7) and f7 is not ''>
    <cffile action="UPLOAD" filefield="f7" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f8) and f8 is not ''>
    <cffile action="UPLOAD" filefield="f8" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f9) and f9 is not ''>
    <cffile action="UPLOAD" filefield="f9" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f10) and f10 is not ''>
    <cffile action="UPLOAD" filefield="f10" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f11) and f11 is not ''>
    <cffile action="UPLOAD" filefield="f11" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f12) and f12 is not ''>
    <cffile action="UPLOAD" filefield="f12" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f13) and f13 is not ''>
    <cffile action="UPLOAD" filefield="f13" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f14) and f14 is not ''>
    <cffile action="UPLOAD" filefield="f14" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f15) and f15 is not ''>
    <cffile action="UPLOAD" filefield="f15" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f16) and f16 is not ''>
    <cffile action="UPLOAD" filefield="f16" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f17) and f17 is not ''>
    <cffile action="UPLOAD" filefield="f17" destination="#LibraryDirectory#\"	nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f18) and f18 is not ''>
    <cffile action="UPLOAD" filefield="f18" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f19) and f19 is not ''>
    <cffile action="UPLOAD" filefield="f2" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  <cfif ParameterExists(form.f20) and f20 is not ''>
    <cffile action="UPLOAD" filefield="f20" destination="#LibraryDirectory#\" nameconflict="#uploadNameConflict#">
    <li><font face="Arial" size="2" color="Blue">File <cfoutput>#File.ClientFile#</cfoutput> was successfully uploaded!!</font> 
  </cfif>
  <!----------------------------------------------------------->
  </ul>
  </blockquote>
  <p align="center">
  <a href="index.cfm<cfif ParameterExists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif ParameterExists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif ParameterExists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif ParameterExists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif ParameterExists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">Back to File Manager</a>
  </p>
  <br>

<cfelseif ParameterExists(FORM.edit_file) or ParameterExists(FORM.save_edit)>

  <table align="center">
  <tr>
  <td align="center">
  <cfif ParameterExists(FORM.save_edit)> 
  	<cffile action="Write" file="#LibraryDirectory#\#FORM.file_name#" output="#FORM.isi_file#">
  		<br><br><br>
  		File <b><cfoutput>#LibraryDirectory#\#form.file_name#</cfoutput></b> has been edited !	
  		<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  		<input type="Submit" value="   Back   ">
  		</form>
  		<br><br><br>
  <cfelse>
  	<cfif ParameterExists(FORM.files)>
  		<cfset htg=0>
  		<cfloop index="test" list="#form.files#">
        <cfset htg=#htg#+1>	
  		</cfloop>
  	<!--1-------------------------------------------->
  	<cfif htg IS 1>
  		<cffile action="Read" file="#LibraryDirectory#\#form.files#" variable="data_var"> 
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Hidden" name="file_name" value="<cfoutput>#form.files#</cfoutput>">
  			<hr noshade size="1">
  			<div align="left"><font face="Arial" size="4"><b>File Viewer</b></font></div>
  
  			<hr noshade size="1">View File : <b><cfoutput>#form.files#</cfoutput></b>
  			<hr noshade size="1"><cfoutput>
  			<textarea cols="60" rows="20" name="isi_file" wrap="virtual">#data_var#</textarea></cfoutput>
  			<hr noshade size="1">
  			<input type="Submit" value="Save File" name="save_edit" disabled>&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
  			<hr noshade size="1">
  			</form>
  		<cfelse>
  			<br><br>
  			<font size="4"><b>Ops!! This is likely that you are select more one file<br>or select nothing file to edit<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form>
  		</cfif>
  	<cfelse>
  	<br><br>
  			<font size="4"><b>Ops!! This is likely that you are select more one file<br>or select nothing file to edit<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form>
  	
  	</cfif>
  </cfif>
  </td>
  </tr>
  </table>

<cfelseif ParameterExists(FORM.delete_file)>

  <br><br>
  <cfif parameterexists(url.action_file) and url.action_file is 'delete'>
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <hr noshade size="1">
  <b><font face="Arial" size="3">Your action results is like below :</font></b>
  <hr noshade size="1">
  <blockquote>
  <cfloop index="ListElement" list="#form.files#"> 
		<cfoutput>
			<cffile action="Delete" file="#LibraryDirectory#\#listelement#">
			File <i>#ListElement#</i> has been deleted<br>
		</cfoutput>
	</cfloop>
  </blockquote>
  <hr noshade size="1">
  <a href="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">Back to File Manager</a>
  <hr noshade size="1">
  </td>
  </tr>
  </table>
  
  <cfelse>
  
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <cfif parameterexists(form.files)>
  <hr noshade size="1">
  <b><font face="Arial" size="3">Are you sure to delete file below :</font></b>
  <hr noshade size="1">
  <blockquote>
  <form method="post" action="index.cfm?action_file=delete<cfif parameterexists(url.action) and url.action is 'change_dir'>&action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">
  <cfloop index="ListElement" 
      list="#form.files#"> 
          <cfoutput><input type="Checkbox" name="files" value="#ListElement#" checked> #ListElement#</cfoutput><br> 
  </cfloop>
  
  </blockquote>
  <hr noshade size="1">
  <input type="Submit" value=" Yes delete all" name="delete_file">&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
  <hr noshade size="1">
  </form>
  <cfelse>
  			<div align="center"><br><br>
  			<font size="4"><b>Ops!! This is likely that you are select nothing file to delete<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form></div>
  </cfif>
  </td>
  </tr>
  </table>
  </cfif>
  <br><br>

<cfelseif ParameterExists(FORM.rename_file)>

  <br><br>
  <cfif parameterexists(url.action_file) and url.action_file is 'rename'>
  
  
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <hr noshade size="1">
          <cfoutput><tr><td><cffile action="RENAME" source="#LibraryDirectory#\#form.files_source#" destination="#LibraryDirectory#\#form.file_target#"></td></tr>
  
  			<div align="center"><br><br>
  			<font size="4">Your file <b>#form.files_source#</b> has been rename to <b>#form.file_target#</b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=#urlencodedformat(url.action)#</cfif><cfif parameterexists(url.path)>&path=#urlencodedformat(url.path)#</cfif><cfif parameterexists(url.name)>&name=#urlencodedformat(url.name)#</cfif><cfif parameterexists(url.first_path)>&first_path=#urlencodedformat(url.first_path)#</cfif><cfif parameterexists(url.first_name)>&first_name=#url.first_name#</cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form></div>
  			
  		</cfoutput>
  <hr noshade size="1">
  </td>
  </tr>
  </table>
  
  <cfelse>
  
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <cfif parameterexists(form.files)>
  	<cfif parameterexists(form.files)>
  		<cfset htg=0>
  		<cfloop index="test" list="#form.files#">
  		<cfset htg=#htg#+1>	
  		</cfloop>
  	<!--1-------------------------------------------->
  	<cfif htg is 1>
  
  <hr noshade size="1">
  <b><font face="Arial" size="3">Are you sure to rename file below :</font></b>
  <hr noshade size="1">
  <blockquote>
  <table>
  <form method="post" action="index.cfm?action_file=rename<cfif parameterexists(url.action) and url.action is 'change_dir'>&action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">
  
  <cfoutput><tr><td><b>#form.files#</b></td><td>will be rename to</td><td><input type="hidden" name="files_source" value="#form.files#"><input type="text" name="file_target" value="#form.files#"></td></tr></cfoutput>
  
  </table>
  
  </blockquote>
  <hr noshade size="1">
  <input type="Submit" value=" Rename it !" name="rename_file">&nbsp;<input type="button" value=" cancel "> 
  <hr noshade size="1">
  </form>
  <cfelse>
  			<div align="center"><br><br>
  			<font size="4"><b>Ops!! This is likely that you are select more than one file to Rename<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form></div>
  
  </cfif>
  </cfif>
  <cfelse>
  
  			<div align="center"><br><br>
  			<font size="4"><b>Ops!! This is likely that you are select nothing file to rename<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form></div>
  
   
  </cfif>
  </td>
  </tr>
  
  </table>
  </cfif>
  <br><br>

<cfelseif ParameterExists(FORM.new_file) or ParameterExists(FORM.save_new)>

  <table align="center">
  <tr>
  <td align="center">
  <cfif parameterexists(form.save_new)>
  
  <cffile action="Write"
      file="#LibraryDirectory#\#form.file_name##form.mim#"
      output="#form.isi_file#">
  <br><br><br>
  File <b><cfoutput>#LibraryDirectory#\#form.file_name##mim#</cfoutput></b> has been writed !	
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  <input type="Submit" value="   Back   ">
  </form>
  <br><br><br>
  <cfelse>
  
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  <hr noshade size="1">
  <font face="Arial" size="4"><b>Create New File</b></font>
  <hr noshade size="1">File Name
  <input type="Text" name="file_name" size="30">
  <select name="mim">
  <cfloop index="listelement" 
      list="#mime#"> 
          <cfoutput><option value="#ListElement#">#ListElement#</cfoutput><br> 
  </cfloop>
  </select> 
  <hr noshade size="1">
  <textarea cols="60" rows="20" name="isi_file"></textarea>
  <hr noshade size="1">
  <input type="Submit" value="Save File" name="save_new">&nbsp;&nbsp;<input type="button" value=" Cancel ">
  <hr noshade size="1">
  
  </form>
  </cfif>
  </td>
  </tr>
  </table>

<cfelseif ParameterExists(FORM.copy_file)>

  <br><br>
  <cfif parameterexists(url.action_file) and url.action_file is 'copy'>
  
  <cfif Len(FORM.dir_target) is not 0>
  
  <cfif right(FORM.dir_target,1) is not '\'>
  <script language="JavaScript">
  alert("You must include the backward slash (\\) after the destination directory name.");
  history.go(-1);
  </script>
  <cfelse>
  
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <hr noshade size="1">
  <b><font face="Arial" size="3">Your action results is like below :</font></b>
  <hr noshade size="1">
  <blockquote>
  <cfloop index="ListElement" 
      list="#form.files#"> 
          <cfoutput>
  		<cffile action="copy"
      source="#LibraryDirectory#\#listelement#" destination="#form.dir_target#">
  	File <i>#ListElement#</i> has been copied<br></cfoutput>
  </cfloop>
  <br>
  <font face="Arial" size="2">to directory:</font> <cfoutput>#form.dir_target#</cfoutput>
  </blockquote>
  <hr noshade size="1">
  <a href="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">Back to File Manager</a>
  <hr noshade size="1">
  </td>
  </tr>
  </table>
  
  </cfif>
  <cfelse>
  <script language="JavaScript">
  alert("You are not fill the destination directory name.");
  history.go(-1);
  </script>
  </cfif>
  <cfelse>
  
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <cfif parameterexists(form.files)>
  <hr noshade size="1">
  <b><font face="Arial" size="3">You will copy file/s below :</font></b>
  <hr noshade size="1">
  <blockquote>
  <form method="post" action="index.cfm?action_file=copy<cfif parameterexists(url.action) and url.action is 'change_dir'>&action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">
  <cfloop index="ListElement" 
      list="#form.files#"> 
          <cfoutput><input type="Checkbox" name="files" value="#ListElement#" checked> #ListElement#</cfoutput><br> 
  </cfloop>
  <br>
  <font face="Arial" size="2">to directory:</font><br> <font face="Arial" size="1">You must include the backward slash (\) after the destination directory name.</font><br><input type="Text" size="60" name="dir_target" value="<cfoutput>#LibraryDirectory#\</cfoutput>">
  </blockquote>
  <hr noshade size="1">
  <input type="Submit" value=" Yes copy all" name="copy_file">&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
  <hr noshade size="1">
  </form>
  <cfelse>
  			<div align="center"><br><br>
  			<font size="4"><b>Ops!! This is likely that you are select nothing file to copy<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form></div>
  </cfif>
  </td>
  </tr>
  </table>
  </cfif>
  <br><br>

<cfelseif ParameterExists(FORM.move_file)>

  <br><br>
  <cfif parameterexists(url.action_file) and url.action_file is 'move'>
  
  <cfif Len(FORM.dir_target) is not 0>
  	  <cfif right(FORM.dir_target,1) is not '\'>
  
      	<script language="JavaScript">
       	alert("You must include the backward slash (\\) after the destination directory name.");
       	history.go(-1);
       	</script>
   
   	 <cfelse>
  
  		<table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  		<tr>
  		<td>
  			<hr noshade size="1">
  			<b><font face="Arial" size="3">Your action results is like below :</font></b>
  			<hr noshade size="1">
  			<blockquote>
  			<cfloop index="ListElement" 
      			list="#form.files#"> 
          		<cfoutput>
  					<cffile action="move"
      					source="#LibraryDirectory#\#listelement#" destination="#form.dir_target#">
  							File <i>#ListElement#</i> has been moved<br></cfoutput>
  				</cfloop>
  				<br>
  				<font face="Arial" size="2">to directory:</font> <cfoutput>#form.dir_target#</cfoutput>
  				</blockquote>
  				<hr noshade size="1">
  				<a href="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">Back to File Manager</a>
  			<hr noshade size="1">
  		</td>
  		</tr>
  		</table>
   	</cfif>
  	
  <cfelse>
  	
  		<script language="JavaScript">
  		alert("You are not fill the destination directory name.");
  		history.go(-1);
  		</script>
  
  </cfif>
  
  <cfelse>
  
  <table align="center" width="80%" cellpadding="0" cellspacing="0" border="0">
  <tr>
  <td>
  <cfif parameterexists(form.files)>
  <hr noshade size="1">
  <b><font face="Arial" size="3">You will move file/s below :</font></b>
  <hr noshade size="1">
  <blockquote>
  <form method="post" action="index.cfm?action_file=move<cfif parameterexists(url.action) and url.action is 'change_dir'>&action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>">
  <cfloop index="ListElement" 
      list="#form.files#"> 
          <cfoutput><input type="Checkbox" name="files" value="#ListElement#" checked> #ListElement#</cfoutput><br> 
  </cfloop>
  <br>
  <font face="Arial" size="2">to directory:</font><br> <font face="Arial" size="1">You must include the backward slash (\) after the destination directory name.</font><br><input type="Text" size="60" name="dir_target" value="<cfoutput>#LibraryDirectory#\</cfoutput>">
  </blockquote>
  <hr noshade size="1">
  <input type="Submit" value=" Yes move all" name="move_file">&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
  <hr noshade size="1">
  </form>
  <cfelse>
  			<div align="center"><br><br>
  			<font size="4"><b>Ops!! This is likely that you are select nothing file to move<b></font>
  			<br><br>
  			<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  			<input type="Submit" value="   Back   ">
  			</form></div>
  </cfif>
  </td>
  </tr>
  </table>
  </cfif>
  <br><br>

<cfelseif ParameterExists(FORM.newdir) or ParameterExists(FORM.create_dir)>

  <table align="center">
  <tr>
  <td align="center">
  <cfif parameterexists(form.create_dir)>
    <cfdirectory action="CREATE" directory="#LibraryDirectory#\#form.dir_name#">
  	<br><br><br>
  	New Directory : <br><br><b><cfoutput>#LibraryDirectory#\#form.dir_name#</cfoutput></b> <br>has been Created !	
  	<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  	<input type="Submit" value="   Back   ">
  	</form>
  	<br><br><br>
  <cfelse>
    <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
    <hr noshade size="1">
    <font face="Arial" size="4"><b>Create New Directory</b></font>
    <hr noshade size="1">New Directory Name
    <input type="Text" name="dir_name" size="30" value="new_directory">
    <hr noshade size="1">
    <hr noshade size="1">
    <input type="Submit" value="Create File" name="Create_dir">&nbsp;&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
    <hr noshade size="1">
    </form>
  </cfif>
  </td>
  </tr>
  </table>

<cfelseif ParameterExists(FORM.renamedir) or ParameterExists(FORM.rename_dir)>

  <table align="center">
  <tr>
  <td align="center">
  <cfif parameterexists(form.rename_dir)>
  
  <cfdirectory action="rename"  directory="#LibraryDirectory#\#form.dir_name#" newdirectory="#LibraryDirectory#\#form.newdir_name#">
  		<br><br><br>
  		Directory : <br><br><b><cfoutput>#LibraryDirectory#\#form.dir_name#</cfoutput></b> <br>has been Renamed to :<br>
  		<b><cfoutput>#LibraryDirectory#\#form.newdir_name#</cfoutput></b>	
  		<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  		<input type="Submit" value="   Back   ">
  		</form>
  		<br><br><br>
  
  
  <cfelse>
  <cfif parameterexists(form.directory)>
  
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  <hr noshade size="1">
  <font face="Arial" size="4"><b>Rename Directory <cfoutput>#LibraryDirectory#\#form.directory#</cfoutput></b></font>
  <hr noshade size="1">New Directory Name
  <input type="Hidden" name="dir_name" value="<cfoutput>#form.directory#</cfoutput>">
  <input type="Text" name="newdir_name" size="30" value="new_directory">
  <hr noshade size="1">
  <hr noshade size="1">
  <input type="Submit" value="Rename Directory" name="rename_dir">&nbsp;&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
  <hr noshade size="1">
  </form>
  <cfelse>
  <br><br>
  <font size="4"><b>Ops!! This is likely that you are select nothing directory to delete<b></font>
  <br><br>
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  <input type="Submit" value="   Back   ">
  </form>
  </cfif>
  </cfif>
  </td>
  </tr>
  </table>

<cfelseif ParameterExists(FORM.deletedir) or ParameterExists(FORM.delete_dir)>

  <table align="center">
  <tr>
  <td align="center">
  <cfif parameterexists(form.delete_dir)>
  
  <cfdirectory action="delete"  directory="#LibraryDirectory#\#form.dir_name#">
  		<br><br><br>
  		 Directory : <br><br><b><cfoutput>#LibraryDirectory#\#form.dir_name#</cfoutput></b> <br>has been deleted !	
  		<form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  		<input type="Submit" value="   Back   ">
  		</form>
  		<br><br><br>
  
  
  <cfelse>
  <cfif parameterexists(form.directory)>
  
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  <hr noshade size="1">
  <font face="Arial" size="4"><b>You will delete directory :</b></font>
  <hr noshade size="1">
  <b><cfoutput>#LibraryDirectory#\#form.directory#</cfoutput></b>
  <input type="Hidden" name="dir_name" value="<cfoutput>#form.directory#</cfoutput>">
  <hr noshade size="1">
  <hr noshade size="1">
  <input type="Submit" value="Delete Directory" name="delete_dir">&nbsp;&nbsp;<input type="button" value=" Cancel " onClick="javascript:history.go(-1)">
  <hr noshade size="1">
  </form>
  <cfelse>
  <br><br>
  <font size="4"><b>Ops!! This is likely that you are select nothing directory to delete<b></font>
  <br><br>
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post">
  <input type="Submit" value="   Back   ">
  </form>
  </cfif>
  </cfif>
  </td>
  </tr>
  </table>

<cfelse>

  <script language="JavaScript">
  function SetChecked(val) {
  dml=document.docu;
  len = dml.elements.length;
  var i=0;
  for( i=0 ; i<len ; i++) {
      if (dml.elements[i].name=='files') {
  		dml.elements[i].checked=val;
  		}
  	}
  }	
  function SetChecked2(val) {
  dml=document.docu;
  len = dml.elements.length;
  var i=0;
  for( i=0 ; i<len ; i++) {
      if (dml.elements[i].name=='directory') {
  		dml.elements[i].checked=val;
  		}
  	}
  }			
  </script>
  
  <!------------------batas uploads form--------------------------->
  <cfparam name="URL.num" default="4">

  <table cellspacing=3 align="center" width="90%">
  <form action="index.cfm" method="get">
  <cfif parameterexists(url.action) and url.action is 'change_dir'>
  <input type="Hidden" name="action" value="<cfoutput>#url.action#</cfoutput>"> 
  </cfif>
  <cfif parameterexists(url.path)>
  <input type="Hidden" name="path" value="<cfoutput>#url.path#</cfoutput>"> 
  </cfif>
  <cfif parameterexists(url.name)>
  <input type="Hidden" name="name" value="<cfoutput>#url.name#</cfoutput>"> 
  </cfif>
  <cfif parameterexists(url.first_path)>
  <input type="Hidden" name="first_path" value="<cfoutput>#url.first_path#</cfoutput>"> 
  </cfif>
  <cfif parameterexists(url.first_name)>
  <input type="Hidden" name="first_name" value="<cfoutput>#url.first_name#</cfoutput>"> 
  </cfif>
  <tr>
  <td width="50%">
  </td>
  <td align="LEFT" width="50%">
  Number of files to upload : 
  <select name="num" style="border: 1 solid black">
  <cfloop from="1" to="20" index="nomor">
  <cfoutput><option value="#nomor#"  style="border: 1 solid black" <cfif nomor eq url.num>selected</cfif>>#nomor#</cfoutput>
  </cfloop>
  </select>&nbsp;&nbsp;<input type="Submit" value="Display">
  <hr color="Black" noshade size="1"> 
  </td>
  </tr>
  </form>
  
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post" enctype="multipart/form-data">
  
  <tr>	
  	<td valign="top" align="right">
  	<table align="center" width="90%">
  	<tr>
  	<td>
  	<font face="Arial" size="2">Use the 'Browse...' button to locate the file on your local drive. 
  	<br><br>
  	Note: Upload will replace existing files of the same name unless the 'uploadNameConflict' parameter is changed.
  	</font></td>
  	</tr>
  	</table>
  	</td>
  	<td><cfset jml=1>
  	<cfloop from="1" to="#url.num#" index="files">
      <cfoutput>
  	<input type="hidden" name="ServerFile#files#" value="1">
  	<input type="file" name="f#files#" size=30  style="border: 1 solid black"><br>
      <input type="Hidden" name="jumlah_file" value="#jml#">
  	<cfset jml=#jml#+1>
  </cfoutput>
  </cfloop></td>
  </tr>
  <tr>
  	<td>&nbsp;</td>
  	<td align="LEFT">
  	<hr color="Black" noshade size="1">
    <input disabled type="Button" name="options" value="    Options    " style="border: 1 solid black">
    &nbsp;&nbsp;&nbsp;
  	<input type="submit" name="upload" value="    Upload File(s)    "  style="border: 1 solid black">
  	<hr color="Black" noshade size="1"> 
  	</td>
  </tr>
  </form>
  </table>
  </td>
  </tr>
  <form action="index.cfm<cfif parameterexists(url.action) and url.action is 'change_dir'>?action=<cfoutput>#urlencodedformat(url.action)#</cfoutput></cfif><cfif parameterexists(url.path)>&path=<cfoutput>#urlencodedformat(url.path)#</cfoutput></cfif><cfif parameterexists(url.name)>&name=<cfoutput>#urlencodedformat(url.name)#</cfoutput></cfif><cfif parameterexists(url.first_path)>&first_path=<cfoutput>#urlencodedformat(url.first_path)#</cfoutput></cfif><cfif parameterexists(url.first_name)>&first_name=<cfoutput>#url.first_name#</cfoutput></cfif>" method="post" name="docu">
  <tr>
  <td bgcolor="eeeeee">
  
  <hr noshade size="1">
  <table cellpadding="3" width="100%" cellspacing="1" border="0" bgcolor="Silver" align="center">
  <tr>
	<td align="center" bgcolor="White">
	<font face="Arial" size="2"><b>Select</b></font><br>
	<input type="Button" value="All" style="border: 1 solid black" name="check_all" onClick="javascript:SetChecked(1)">
	<input type="Button" value="None" style="border: 1 solid black" name="check_None" onClick="javascript:SetChecked(0)">
	</td>
  <td align="center" bgcolor="White">
  <font face="Arial" size="2"><b>File Actions</b></font><br>
	<input type="submit" value="New" style="border: 1 solid black" name="new_file">
  <input type="submit" value="View" style="border: 1 solid black" name="edit_file">
  <input type="submit" value="Delete" style="border: 1 solid black" name="delete_file">
  <input type="submit" value="Rename" style="border: 1 solid black" name="Rename_file">
  <input type="submit" value="Copy" style="border: 1 solid black" name="Copy_file">
  <input type="submit" value="Move" style="border: 1 solid black" name="Move_file">
  </td>
  <td align="center" bgcolor="White">
  <font face="Arial" size="2"><b>Directory Actions</b></font><br>
  <input type="submit" value="New" style="border: 1 solid black" name="newdir">
  <input type="submit" value="Rename" style="border: 1 solid black" name="renamedir">
  <input type="submit" value="Delete" style="border: 1 solid black" name="deletedir">
  </td>
  </tr>
  </table>
  <hr noshade size="1">
  </td>
  </tr>
  <tr>
  <td>
  <table cellspacing=0 cellpadding=2 align="center" bgcolor="eeeeee" width="700">
  <tr bgcolor="cccccc">
    <td colspan="3">
      <a href="index.cfm"><img src="openfolder.gif" border="0"></a>
    </td>
<!---
    <td width="10"></td>
    <td width="20"></td>
--->
  	<td width="300" align="LEFT">
      <b><font face="Arial" size="2">File/Directory</font></b>
    </td>
  	<td align="CENTER"><b><font face="Arial" size="2">Size&nbsp;&nbsp;</font></b></td>
  	<td align="CENTER"><b><font face="Arial" size="2">Last Modified&nbsp;&nbsp;</font></b></td>
  </tr>
  </table>
  <table cellspacing=0 cellpadding=2 align="center" bgcolor="eeeeee" width="700">
  <tr bgcolor="eeeeee">
    <td>
      <cfif parameterexists(url.path)><img src="upfolder.gif">&nbsp;<a href="index.cfm<cfoutput><cfif parameterexists(url.first_path)>?action=change_dir&path=#urlencodedformat(url.first_path)#&name=#urlencodedformat(url.first_name)#<cfelse></cfif></cfoutput>"><font face="Arial" size="2"><b>Up One Level</b></font></a></cfif>
    </td>
  </tr>
  <tr bgcolor="eeeeee">
    <td><cfif parameterexists(url.path)><img src="join.gif"><cfelse>&nbsp;</cfif><img src="fopen.gif">&nbsp;
    <font face="Arial" size="2"><cfif parameterexists(url.name)><cfoutput>#url.name#</cfoutput><cfelse>Root</cfif></font></td>
  </tr>
  </table>
  <table cellspacing=0 cellpadding=2 align="center" bgcolor="eeeeee" width="700">
  <cfset Row = 1>
  <cfoutput query="GetFiles">
  <cfif Type is "dir" and name is not '.' and name is not '..'>
  <tr bgcolor="#IIf(Row Mod 2, DE('ffffff'), DE('eeeeee'))#">
      <td>&nbsp;</td>
      <td width="10"><input type="radio" name="directory" value="#name#" onClick="javascript:SetChecked(0)"></td> 
  	<td width="20"><img src="folder.gif"></td>
  	<td width=300>
  		<a href="index.cfm?action=change_dir&path=<cfif parameterexists(url.path)>#urlencodedformat(url.path)#\</cfif>#urlencodedformat(name)#&name=#urlencodedformat(name)#<cfif parameterexists(url.path)>&first_path=#urlencodedformat(url.path)#&first_name=#urlencodedformat(url.name)#</cfif>"><font face="Arial" size="-1">#Name#</font></a>
  	</td>
  	<td align="RIGHT"><font face="Arial" size="-1">#Size#</font>&nbsp;&nbsp;</td>
  	<td nowrap align="RIGHT"><font face="Arial" size="-1">#DateFormat(DateLastModified, "yyyy-mm-dd")#&nbsp;&nbsp;&nbsp;&nbsp;#TimeFormat(DateLastModified, "HH:MM:SS TT")#</font>&nbsp;&nbsp;</td>
  	<cfset Row = Row + 1>
  </tr>
  </cfif>
  <cfif Type is "file">
  <tr bgcolor="#IIf(Row Mod 2, DE('ffffff'), DE('dddDEE'))#">
      <td>&nbsp;</td>
  	<td width="10"><input type="Checkbox" name="files" value="#name#"  onClick="javascript:SetChecked2(0)"></td> 
  	<td width="20">
  	<cfif GetFiles.name CONTAINS ".html" or GetFiles.name CONTAINS ".htm">
  	<img src="html.gif" border="0">
  	<cfelse>
  	<cfif GetFiles.name CONTAINS ".cfm" or GetFiles.name CONTAINS ".cfml">
  	<img src="cfm.gif" border="0">
  	<cfelse>
  	<cfif GetFiles.name CONTAINS ".jpeg" or GetFiles.name CONTAINS ".jpg"  or GetFiles.name CONTAINS ".gif" or GetFiles.name CONTAINS ".png">
  	<img src="image.gif" border="0">
  	<cfelse>
  	<img src="txt.gif" border="0">
  	</cfif></cfif></cfif>
  	</td>
  	<td width="300">
      <font face="Arial" size="-1">
        <cfif IsDefined("URL.Path")>
          <a href="showFile.cfm?ServerPath=#URLEncodedFormat(URL.Path)#&ServerFile=#URLEncodedFormat(Name)#">#Name#</a>
        <cfelse>
          <a href="showFile.cfm?ServerPath=&ServerFile=#URLEncodedFormat(Name)#">#Name#</a>
        </cfif>
        <!--- #Name# --->
      </font>
  	</td>
  	<td align="RIGHT">
      <font face="Arial" size="-1">#Size#</font>&nbsp;&nbsp;
    </td>
  	<td align="RIGHT" nowrap>
      <font face="Arial" size="-1">
        #DateFormat(DateLastModified, "yyyy-mm-dd")#&nbsp;&nbsp;&nbsp;&nbsp;#TimeFormat(DateLastModified, "HH:MM:SS TT")#
      </font>
      &nbsp;&nbsp;
    </td>
  	<cfset Row = Row + 1>
  </tr>
  </cfif>
  </cfoutput>
  </table>
  </td>
  </tr>
  <tr>
  <tr>
  <td align="center" bgcolor="eeeeee">
  <hr noshade size="1">
  <table cellpadding="3" width="100%" cellspacing="1" border="0" bgcolor="Silver">
  <tr>
	<td align="center" bgcolor="White">
	<font face="Arial" size="2"><b>Select</b></font><br>
	<input type="Button" value="All" style="border: 1 solid black" name="check_all" onClick="javascript:SetChecked(1)">
	<input type="Button" value="None" style="border: 1 solid black" name="check_None" onClick="javascript:SetChecked(0)">
	</td>
  <td align="center" bgcolor="White">
  <font face="Arial" size="2"><b>File Actions</b></font><br>
  <input type="submit" value="New" style="border: 1 solid black" name="new_file">
  <input type="submit" value="View" style="border: 1 solid black" name="edit_file">
  <input type="submit" value="Delete" style="border: 1 solid black" name="delete_file">
  <input type="submit" value="Rename" style="border: 1 solid black" name="Rename_file">
  <input type="submit" value="Copy" style="border: 1 solid black" name="Copy_file">
  <input type="submit" value="Move" style="border: 1 solid black" name="Move_file">
  </td>
  <td align="center" bgcolor="White">
  <font face="Arial" size="2"><b>Directory Actions</b></font><br>
  <input type="submit" value="New" style="border: 1 solid black" name="newdir">
  <input type="submit" value="Rename" style="border: 1 solid black" name="renamedir">
  <input type="submit" value="Delete" style="border: 1 solid black" name="deletedir">
  </td>
  </tr>
  </table>
  <hr noshade size="1">
  </td>
  </tr>
  </form>
  <td bgcolor="eeeeee">
  <br>

</cfif>

</td>
</tr>
<tr>
<td bgcolor="White" align="right">
<font face="Arial" size="-2">
<a href="index.cfm"><cfoutput>#appName# #appVersion#</cfoutput></a>
</font>
</td>
</tr>
</table>

</body>
</html>

