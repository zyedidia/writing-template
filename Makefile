TEMPLATE=.template/template.tex

MACRODIR=.macros
MACROS=$(wildcard $(MACRODIR/*.m4))

REFERENCES=$(wildcard refs/*.bib)
CSL=$(wildcard refs/*.csl)

DGRMDIR=diagrams
PLOTDIR=plots
DGRMS=$(notdir $(wildcard $(DGRMDIR)/*.m4))
PLOTS=$(notdir $(wildcard $(PLOTDIR)/*.gp))
PLOTDEPS=$(patsubst %.gp, %.tex, $(PLOTS))
DGRMDEPS=$(patsubst %.m4, %.tex, $(DGRMS))

SRCS=$(filter-out README.md, $(wildcard *.md))
OUTPDFS=$(patsubst %.md, %.pdf, $(SRCS))

PANDOCFLAGS=--template=$(TEMPLATE)                               \
            --number-sections                                    \
            --citeproc --bibliography=$(REFERENCES) --csl=$(CSL) \

.PRECIOUS: $(DGRMDEPS) $(PLOTDEPS)

all: $(OUTPDFS)
figs: $(DGRMDEPS) $(PLOTDEPS)

%.pdf: %.tex $(DGRMDEPS) $(PLOTDEPS)
	latexmk -pdf -latex=xelatex $<

%.tex: %.md $(TEMPLATE) $(REFERENCES) $(CSL)
	pandoc $(PANDOCFLAGS) -s -o $@ $<

%.pic: $(DGRMDIR)/%.m4 $(MACROS)
	M4PATH=$(MACRODIR) m4 pgf.m4 $^ > $@

%.tex: %.pic
	dpic -g $^ > $@

%.tex: $(PLOTDIR)/%.gp
	gnuplot $^

print-%: ; @echo $* = $($*)

.PHONY: all figs clean

clean:
	rm -f $(DGRMDEPS) $(PLOTDEPS) $(OUTPDFS)
	latexmk -f -C $(OUTPDFS) 2>/dev/null
