.SUFFIXES: .md .pdf .html

.md.html:
	pandoc -s -S -N --toc --toc-depth=2 -c layout.css \
		"$<" -o "$@" --bibliography "$(basename $<).bib"
