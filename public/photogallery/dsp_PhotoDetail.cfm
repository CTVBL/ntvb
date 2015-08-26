<cfoutput>
<cfsavecontent variable="layout.content">
<p class="page_title">#attributes.albumname#</p>	
<div id="gallery"><a href="index.cfm">Back to Gallery</a></div>
<div id="portrait"><img src="#_photosite#/#photo.largeurl#/#rsPhoto.File_Name#" border="0"><br />
#rsPhoto.Caption#<br />
</div>
<div id="photo-nav">
<div id="photo-back"><a href="Index.cfm?fuseaction=PhotoDetail&albumid=#albumid#&photono=#Evaluate(photono-1)#">&lt&lt; Back</a></div>
<div id="photo-counter">Photo #photono# of #rsPhotos.RecordCount#</div>
<div id="photo-next"><a href="Index.cfm?fuseaction=PhotoDetail&albumid=#albumid#&photono=#Evaluate(photono+1)#">Next &gt&gt;</a></div>
</div>
</cfsavecontent>
</cfoutput>

