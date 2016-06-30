#!/bin/bash

y=mastersThesis

latex $y

if [ $? -eq 0 ]
    then
 
    bibtex $y

    if [ $? -eq 0 ]    
    then
	latex $y
    
	if [ $? -eq 0 ]
	then

#	    cp -f  mastersThesis.lot.bck mastersThesis.lot
	    latex $y

	    if [ $? -eq 0 ]
	    then
	    
#	    dvips -z -Ppdf -o $y.ps $y
	    dvips -o $y.ps $y
#	    ps2pdf13 -dAutoRotatePages=/None $y.ps $y.pdf

	    fi
	fi
    fi
fi

#rm *.aux *.blg *.dvi *.log *.tmp
#rm *.dvi *.log *.tmp

#killall Preview

#open -a Preview $y.pdf

