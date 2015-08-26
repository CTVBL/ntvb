<cfset noofcols = 3>
<cfset ctr = 0>

<cfsavecontent variable="layout.content">
<cfoutput>
<cfif rsPhotos.RecordCount GT 0>
	<p>
	<cfloop query="rsAlbums">
		<cfif rsAlbums.CurrentRow GT 1>| </cfif><a href="index.cfm?albumid=#rsAlbums.Album_ID#">#rsAlbums.Album_Name#</a>
	</cfloop>
	</p>

	<p>Click on any of the thumbnails below to see the full-size picture:</p>
	
	<cfloop query="rsPhotos"><div class="thumbnail">
	<a href="Index.cfm?fuseaction=photodetail&photono=#rsPhotos.CurrentRow#&albumid=#albumid#"><img src="#_photosite#/#photo.thumbnailurl#/#rsPhotos.File_Name#" border="0" align="middle"></a><br />
	#rsPhotos.Caption#
    </div>
	</cfloop>

<cfelse>
	<p><img src="../images/conference.jpg" align="center"></p>	
</cfif>
</cfoutput>
</cfsavecontent>
