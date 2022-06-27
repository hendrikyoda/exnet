ENET_PATH = ./enet/.libs


.PHONY: all clean

all: $(ENET_PATH)/libenet.a

$(ENET_PATH)/libenet.a:
	(cd enet; autoreconf -vfi)
	(cd enet; ./configure)
	(cd enet; make)
	(cd enet; make install)

clean:
	rm -r enet/.libs
