<cfparam name="albumid" default="-1">
<cfparam name="SearchText" default="wedding">

<cfinvoke component="photos_CF.components.albumphoto" method="SearchQuery" returnvariable="rsPhotos">
	<cfinvokeargument name="ispublish" value="#dbTrue#">
	<cfinvokeargument name="SearchText" value="#searchtext#">
</cfinvoke>
<cfinvoke component="photos_CF.components.photo" method="getPhotoFilePath" returnvariable="photo">
</cfinvoke>

<cfset noofcols = 3>
<cfset ctr = 0>

<cfif rsPhotos.RecordCount GT 0>
	<cfoutput>
	<p>Click on any of the thumbnails below to see the full-size picture:</p>
	</cfoutput>
	
	<table align=center border=0 cellspacing=10 width="100%">
	
	<cfoutput query="rsPhotos">
	  <cfset ctr = ctr + 1>
	  <cfset modval = ctr - Int(ctr/noofcols)*noofcols>  
	  <cfif modval IS 1>
		<cfif ctr GT 1>
		</tr>
		</cfif>
		<tr valign="top">     
	  </cfif>
		<td align="center" class="photolabel"><a href="Index.cfm?fuseaction=photodetail&photono=#rsPhotos.CurrentRow#&type=search&searchtext=#searchtext#"><img src="#photo.webpath#/thumbnail/#rsPhotos.File_Name#" border=0></a><br>
			#rsPhotos.Photo_Title#
		</td>  	
	</cfoutput>
	  </tr>
	</table>

<cfelse>
	<p><img src="../images/daveandfay.jpg"></p>	
	<p>Come share your memories with us.</p>
</cfif>
