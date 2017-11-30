build: prepare
	compc -swf-version=37 -source-path=src -include-sources=src -optimize -output samples/libs/OGSL.swc
	@afplay /System/Library/Sounds/Submarine.aiff &

run: run-mobile

clean:
	/bin/rm -rf samples/libs/OGSL.swc

prepare:
	#mkdir -p build
