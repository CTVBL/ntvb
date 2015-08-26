<cfparam name="photono" default="1">
<cfparam name="albumid" default="-1">
<cfparam name="searchtext" default="">

<cfscript>
objphoto = CreateObject("component", "#_components#.photo");
objalbum = CreateObject("component", "#_components#.album");
rsPhotos = objphoto.getphotosquery(_websiteid, albumid);
if (IsNumeric(photono)) {
	if (photono GT rsPhotos.RecordCount) {
		photono = 1;
	} else {
		if (photono LTE 0) {
			photono = rsPhotos.RecordCount;
		}
	}
} else {
	photono = 1;
}
albumphotoid = ListGetAt(ValueList(rsPhotos.AlbumPhoto_ID), photono);
rsPhoto = objalbum.getalbumphotorecord(albumphotoid);
attributes.filename = rsPhoto.File_Name;
attributes.caption = rsPhoto.Caption;
attributes.phototitle = rsPhoto.Photo_Title;
attributes.filesize = rsPhoto.File_Size;
attributes.photowidth = rsPhoto.Photo_Width;
attributes.photoheight = rsPhoto.Photo_Height;
attributes.albumname = objalbum.getAlbumName(albumid);
photo = objphoto.getPhotoPath(_websiteid);
</cfscript>
