# Makedepend for SASS

Simple binary that prints file dependencies for SASS/SCSS stylesheets suitable
for GNU Make.

## Usage

Include the following into your Makefile:

``` Makefile
.sass.makefile:
	@sass-makedepend $(SCSS_PATH)/**/*.scss > $@

-include .sass.makefile
```

Where `$(SCSS_PATH)` is the path to where you store your SCSS/SASS stylesheets.
For example, `app/assets/stylesheets`.

See the [`example`](./example) directory for a more complete example.

## License

Licensed under the MIT license. See the attached [LICENSE](./LICENSE) file for
details.
