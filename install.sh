SOURCEVIEW_3_DIR=/usr/share/gtksourceview-3.0/language-specs
SOURCEVIEW_2_DIR=/usr/share/gtksourceview-2.0/language-specs

if [ -d "$SOURCEVIEW_3_DIR" ] then
	echo Found GtkSourceView 3, copying syntax definition to $SOURCEVIEW_3_DIR
	cp ctl.lang $SOURCEVIEW_3_DIR
fi

if [ -d "$SOURCEVIEW_2_DIR" ] then
	echo Found GtkSourceView 2, copying syntax definition to $SOURCEVIEW_2_DIR
	cp ctl.lang $SOURCEVIEW_2_DIR
fi

echo Creating MEEP/MPB MIME type
cp x-meepmpb.xml /usr/share/mime/packages
update-mime-database /usr/share/mime

