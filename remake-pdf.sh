#!/bin/bash
## written by lina

## last major modification 2010/11/12
clean
##
BASEFILENAME=dissertation

##
PDFLATEX=/usr/bin/pdflatex
BIBTEX=/usr/bin/bibtex
BIBDISTILL=/usr/local/bin/bibdistill
MAKEGLOSSARIES=/usr/bin/makeglossaries
##

[ -x $PDFLATEX ] || exit 1
[ -x $BIBTEX ] || exit 1

##
$BIBDISTILL ${BASEFILENAME}.tex
#./bibextract.pl ${BASEFILENAME}.tex
$PDFLATEX ${BASEFILENAME}.tex
$BIBTEX	${BASEFILENAME}
$PDFLATEX ${BASEFILENAME}.tex
$MAKEGLOSSARIES ${BASEFILENAME}
$PDFLATEX ${BASEFILENAME}.tex



exit 0
##
## eos
