PDF ?=

define optimize_pdf
pdftocairo -pdf "$(1)" "$(basename $(1))1.pdf" && qpdf --linearize "$(basename $(1))1.pdf" "$(basename $(1))2.pdf" && rm "$(basename $(1))1.pdf" "$(1)" && mv "$(basename $(1))2.pdf" "$(1)"
endef

.DEFAULT_GOAL := help

.PHONY: help optimize-pdf FORCE

help:
	@echo "Usage: make rpz.pdf"
	@echo "   or: make optimize-pdf PDF=rpz.pdf"

ifeq ($(filter optimize-pdf,$(MAKECMDGOALS)),optimize-pdf)
ifeq ($(strip $(PDF)),)
$(error Usage: make optimize-pdf PDF=rpz.pdf)
endif
endif

optimize-pdf:
	$(call optimize_pdf,$(PDF))

%.pdf: FORCE
	$(call optimize_pdf,$@)

FORCE:
