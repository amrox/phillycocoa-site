all:
	cp -R skel/* output/
	nanoc compile

clean:
	rm -rf output/*


