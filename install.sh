# GtkSourceView folder, on most systems change /usr/share 
# to /usr/local/share if GtkSourceView has been compiled from source.
SOURCEVIEW_3_DIR=/usr/share/gtksourceview-3.0/language-specs
SOURCEVIEW_2_DIR=/usr/share/gtksourceview-2.0/language-specs

if [ -d "$SOURCEVIEW_3_DIR" ]; then
	echo Found GtkSourceView 3, copying syntax definition to $SOURCEVIEW_3_DIR
	cp ctl.lang $SOURCEVIEW_3_DIR
elif [ -d "$SOURCEVIEW_2_DIR" ]; then
	echo Found GtkSourceView 2, copying syntax definition to $SOURCEVIEW_2_DIR
	cp ctl.lang $SOURCEVIEW_2_DIR
else
	echo Error: Could not find GtkSourceView syntax definition folder!
	echo Please manually copy ctl.lang to the correct location. 
	echo This is often at /usr/share/gtksourceview-x.y/language-spec\
		or /usr/local/share/gtksourceview-x.y/language-specs
fi

echo Creating Meep/MPB MIME type
cp x-meepmpb.xml /usr/share/mime/packages
update-mime-database /usr/share/mime

