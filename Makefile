# Configuration
PDF_BUILD="build/pdf/ApuntesIO.pdf"
EPUB_BUILD="build/epub/ApuntesIO.epub"

# Compile everything
all: $(PDF_BUILD) $(EPUB_BUILD) clean

# Generates PDF file
$(PDF_BUILD):
	@echo "Generating PDF files"
	@echo "Copying distribution"
	@cp dist/pdf.tex src/dist.tex
	@cd src/ && latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex
	@mv src/main.pdf $(PDF_BUILD)

# Generates EPUB file
$(EPUB_BUILD):
	@echo "Generating EPUB files"
	@echo "Copying distribution"
	@cp dist/epub.tex src/dist.tex
	@cd src && htlatex main.tex "xhtml, charset=utf-8" " -cunihtf -utf8"
	@mv src/*.html build/html/
	@mv src/*.css build/html/
	@mv src/*.png build/html/
	@mv build/html/main.html build/html/ApuntesIO.html
	@./tools/cleanup-html.py
	@./tools/inject-css.py
	@ebook-convert build/html/ApuntesIO.html build/epub/ApuntesIO.epub


# Clean latex files
clean:
	@rm -rf src/*.aux
	@rm -rf src/*.fdb_latexmk
	@rm -rf src/*.log
	@rm -rf src/*.css
	@rm -rf src/*.dvi
	@rm -rf src/*.idv
	@rm -rf src/*.lg
	@rm -rf src/*.tmp
	@rm -rf src/*.xhtml
	@rm -rf src/*.4tc
	@rm -rf src/*.4ct
	@rm -rf src/*.ncx
	@rm -rf src/*.opf
	@rm -rf src/*.xref
	@rm -rf src/*.fls
	@rm -rf src/main-epub3
	@rm -rf src/dist.tex
