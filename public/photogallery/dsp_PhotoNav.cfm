<cfinvoke component="photos_CF.components.album" method="AlbumCountQuery" returnvariable="rsAlbumList">
	<cfinvokeargument name="IsPublish" value="#dbTrue#">
</cfinvoke>
<table cellspacing="0" cellpadding="0" border="0">
  <tr><td height="10"></td></tr>
  <tr>
	<td style="padding-left: 10px; padding-bottom: 10px;"><u><b>Photo Albums:</b></u></td>
  </tr>
<cfoutput query="rsAlbumList" group="Contact_ID">
  <tr>
	<td style="padding-left: 10px;">#rsAlbumList.First_Name# #rsAlbumList.Last_Name#</a></td>  
  </tr>
  <cfoutput>
  <tr>
	<td style="padding-left: 10px;">- <a href="Index.cfm?fuseaction=PhotoGallery&albumid=#rsAlbumList.Album_ID#">#rsAlbumList.Album_Name# (#rsAlbumList.Photo_Count#)</a></td>  
  </tr>
  </cfoutput>
</cfoutput>		
</table>
