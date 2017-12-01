CURRENT_DIR = $(shell pwd)
LIBS = $(shell ls libs)
LIB_PATH = $(foreach d, $(LIBS), -library-path+=./libs/$d)
SRC_PATH = -source-path+=./src/
FILE = OGSLEditor
#FILE = RayTracing
#FILE = Sample
OPT = -swf-version=37
DEBUG = true

CONSTS = -keep-as3-metadata+=Inject -keep-as3-metadata+=InjectComplete


build:
	mxmlc -debug=$(DEBUG) $(LIB_PATH) $(SRC_PATH) -output=build/Sample.swf $(OPT) $(CONSTS) src/$(FILE).as
	@afplay /System/Library/Sounds/Submarine.aiff &
.PHONY: build

run: run-Sample

run-Sample:
	#adl -screensize 512x512:512x512 sample.xml
	adl sample.xml
