help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

pdf: ## Convert to .pdf
	pdflatex cv.tex
	pdflatex cv-full.tex

.PHONY: help pdf
