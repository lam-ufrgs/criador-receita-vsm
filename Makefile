QT_FILE_DIR:=./src/main/qt
VIEW_FILE_DIR:=./src/main/python/View

compile_resources: $(QT_FILE_DIR)/*.qrc
	for file in $^ ; do \
		echo $(notdir $${file}) ; \
		# pyrcc5 $${file} -o $(VIEW_FILE_DIR)/$(notdir $${file}) ; \
	done