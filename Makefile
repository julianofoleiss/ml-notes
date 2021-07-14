all:
	pandoc -c pandoc.css index.md -o html/index.html
	pandoc --mathjax -c pandoc.css -s cross_validation.md -o html/cross_validation.html
	pandoc -c pandoc.css -s bias_variance.md -o html/bias_variance.html
	cp pandoc.css html/pandoc.css
	cp -r images/ html/