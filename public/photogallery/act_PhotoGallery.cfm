<cfparam name="albumid" default="-1">
<cfscript>
objphoto = CreateObject("component", "#_components#.photo");
objalbum = CreateObject("component", "#_components#.album");
rsAlbums = objalbum.getListQuery(websiteid: _websiteid, ispublish: true);
if (albumid IS -1) albumid = rsAlbums.Album_ID;
rsPhotos = objphoto.getPhotosQuery(_websiteid, albumid);
photo = objphoto.getPhotoPath(_websiteid);
</cfscript>
