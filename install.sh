#!/bin/bash

echo "Instalation de hexagon.sty dans votre dossier texmf."

dossiercibleinst=~/texmf/tex/latex/hexagon
echo $dossiercibleinst

if test -d $dossiercibleinst
then
	echo "Le dossier $dossiercibleinst existe déjà"
	read -p "Voulez vous le suprimer (o/n)? " repsuprdoss

	if test $repsuprdoss == "o"
	then
		rm -R $dossiercibleinst
	else
		exit 1
	fi
fi

mkdir $dossiercibleinst
if cp hexagon.sty $dossiercibleinst/
then
	echo "Instalation terminée."
fi
