all:
	pandoc -c pandoc.css index.md -o out/index.html
	pandoc --mathjax -c pandoc.css -s cross_validation.md -o out/cross_validation.html
	pandoc -c pandoc.css -s bias_variance.md -o out/bias_variance.html
	cp pandoc.css out/pandoc.css
	cp -r images/ out/