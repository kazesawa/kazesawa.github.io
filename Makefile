JEKYLL = bundle exec jekyll
.DEFAULT_GOAL := build

.PHONY: deps watch build clean

deps:
	bundle install --path vendor/bundle

serve:
	$(JEKYLL) serve --watch

build:
	$(JEKYLL) build

clean:
	rm -r _site/
