CURRENT_DIR = $(shell pwd)
LIBS = $(shell ls libs)
LIB_PATH = $(foreach d, $(LIBS), -library-path+=./libs/$d)
SRC_PATH = -source-path+=./src/
#FILE = OGSLEditor
#FILE = RayTracing
FILE = Sample
OPT = -swf-version=37
DEBUG = true

CONSTS = -keep-as3-metadata+=Inject -keep-as3-metadata+=InjectComplete


build:
	ascshd mxmlc -debug=$(DEBUG) $(LIB_PATH) $(SRC_PATH) -output=build/$(FILE).swf $(OPT) $(CONSTS) src/$(FILE).as
	@afplay /System/Library/Sounds/Submarine.aiff &
.PHONY: build

run: run-$(FILE)

run-OGSLEditor:
	#adl -screensize 900x600:600x900 ogsl-editor.xml
	adl ogsl-editor.xml

run-RayTracing:
	#adl -screensize 640x480:480x640 raytracing.xml
	adl raytracing.xml

run-Sample:
	#adl -screensize 512x512:512x512 sample.xml
	adl sample.xml
