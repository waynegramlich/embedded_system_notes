MARKDOWNS := \
    kicad_notes.md
HTMLS := ${MARKDOWNS:%.md=%.html}
PDFS := ${HTMLS:%.html=%.pdf}

all: ${HTMLS} ${PDFS}

%.html: %.md
	markdown $< > $@

%.pdf: %.html
	htmldoc --numbered --book --no-title --header /// -f $@ $< 

