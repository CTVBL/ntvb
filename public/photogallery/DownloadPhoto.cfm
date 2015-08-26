<cfinclude template = "app_locals.cfm">
<cfparam name = "photoid" default = "-1">

<cfinvoke component="photos_CF.components.photo" method="DetailQuery" returnvariable="rsPhoto">
	<cfinvokeargument name="photoid" value="#photoid#">
</cfinvoke>
<cfinvoke component="photos_CF.components.photo" method="getPhotoFilePath" returnvariable="photo">
</cfinvoke>
<cfset photofile = "#photo.uploadpath#\#rsPhoto.File_Name#">

<cfcontent file="#photofile#" deletefile="no" type="jpg">
