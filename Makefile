ELECTRON?=/cygdrive/c/Users/Garrett/Downloads/better-hangoutschat-4.0.3/better-hangoutschat-4.0.3/main.js
THEME?=dark
OUTELECTRON?=out/$(dark)theme/main.js

all: build_all

install: $(OUTELECTRON)
	cp -f $(OUTELECTRON) $(ELECTRON)

$(OUTELECTRON):
	./generate_patch.sh $(ELECTRON)

gmonkey:
	./generate_patch.sh

build_all: $(OUTELECTRON)

clean:
	rm -rf out/
