DOCNAME := resume

EXAMPLE_DIR := example
REQ_INPUTS := references.tex contact-info.tex

.PHONY: clean default full-clean example live

default: $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex $(REQ_INPUTS)
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

live:
	latexmk -pvc resume.tex

example:
	-[ -f references.tex ] && cp references.tex references.tex.bak
	-[ -f contact-info.tex ] && cp contact-info.tex contact-info.tex.bak
	cp $(EXAMPLE_DIR)/example-references.tex references.tex
	cp $(EXAMPLE_DIR)/example-contact-info.tex contact-info.tex
	$(MAKE) $(DOCNAME).pdf
	mv $(DOCNAME).pdf $(EXAMPLE_DIR)/example-resume.pdf
	pdftoppm $(EXAMPLE_DIR)/example-resume.pdf $(EXAMPLE_DIR)/example-resume -png
	rm references.tex contact-info.tex
	-[ -f references.tex.bak ] && mv references.tex.bak references.tex
	-[ -f contact-info.tex.bak ] && mv contact-info.tex.bak contact-info.tex

full-clean: clean
	rm -rf *.pdf $(EXAMPLE_DIR)/*.pdf $(EXAMPLE_DIR)/*.png

clean:
	rm -rf *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
