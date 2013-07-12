VERSION     = 0.1
JS_SRCS     = build/%.js
COFFEE_SRCS = $(wildcard ./src/*.coffee)

DISTDIR     = GreenhopperWidget_$(VERSION).wdgt
COFFEEC     = coffee



all: build

build:
	$(COFFEEC) -c -b --output ./build $(COFFEE_SRCS) $<
	@component install
	@component build

install:
	mkdir -p $(DISTDIR)
	cp -r ./build/*.js $(DISTDIR)/
	cp -r ./components $(DISTDIR)/
	cp -r ./assets/* $(DISTDIR)/
	cp GreenHopper.html $(DISTDIR)/
	cp Info.plist $(DISTDIR)/
	cp README.md $(DISTDIR)/

clean:
	rm -rf ./build
	rm -rf $(DISTDIR)
	rm -rf ./components

