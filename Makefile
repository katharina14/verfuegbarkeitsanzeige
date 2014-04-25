.SUFFIXES: .md .pdf .html

.md.html:
	pandoc -s -S --toc "$<" -o "$@" --bibliography "$(basename $<).bib"
