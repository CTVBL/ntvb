<cfparam name="fuseaction" default="PhotoGallery">
<cfsilent>
<cfinclude template = "app_locals.cfm">

<cfswitch expression = "#fuseaction#">
	<cfcase value = "PhotoGallery">
    	<cfset attributes.pagetitle = "Photo Gallery">
		<cfinclude template="act_PhotoGallery.cfm">
		<cfinclude template="dsp_PhotoGallery.cfm">
	</cfcase>

	<cfcase value = "PhotoDetail">
		<cfinclude template="act_PhotoDetail.cfm">
		<cfinclude template="dsp_PhotoDetail.cfm">
	</cfcase>

</cfswitch>
</cfsilent>
<cfinclude template="../templates/index.cfm" />
