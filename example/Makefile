SRCS = css/root.css

all: $(SRCS)

css/%.css: scss/%.scss | css
	sass --no-cache --sourcemap=none $< $@

css:
	mkdir $@

clean:
	rm -rf css/
	rm -f .sass.makefile

.PHONY: all clean

.sass.makefile:
	@sass-makedepend scss/**/*.scss > $@

-include .sass.makefile
