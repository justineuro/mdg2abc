#!/bin/bash
#===================================================================================
#
#	 FILE:	mdg2midRndN.sh
#
#	USAGE:	mdg2midRndN.sh <num>
#
#		where <num> is the number of random MDG minuets to be generated, e.g., 50.
#		*** NOTE:  This script has to be in the same directory as mdg2mid.sh. ***
#
# DESCRIPTION:	Used for generating <num> ABC files, each a Musical Dice Game (MDG)
#		minuet based on the rules given in K. 516f or K. 294d or K. Anh. C 30.01
#		(1792 publication attributed to W.A. Mozart by his publisher, Nikolaus 
#		Simrock), and the corresponding MIDI files.  
#
#      AUTHOR:	J.L.A. Uro (justineuro@gmail.com)
#     VERSION:	1.0.1
#     LICENSE:	Creative Commons Attribution 4.0 International License (CC-BY)
#     CREATED:	2017.08.12 14:30:55 +8
#    REVISION:	2017.08.14 13:13:21 +8
#==================================================================================

#----------------------------------------------------------------------------------
# define the function genS() that randomly chooses an integer from 2 to 12, inclusive
#----------------------------------------------------------------------------------
genS() { # $RANDOM randomly generates an integer from 0 to 32767
	echo `expr $[$RANDOM + 1] % 11 + 2`
}

#----------------------------------------------------------------------------------
# declare the variables "diceS" as an array
# diceS - array containing the 16 outcomes from input line
#----------------------------------------------------------------------------------
declare -a diceS

#----------------------------------------------------------------------------------
# generate the <num> random minuets
#----------------------------------------------------------------------------------
i=1
while [ $i -le $1 ]; do
#----------------------------------------------------------------------------------
# generate the random 16-sequence of outcomes of the 16 throws of two dice
#----------------------------------------------------------------------------------
	for j in {0..15}; do
		diceS[$j]=`genS`
	done

#----------------------------------------------------------------------------------
# generate a minuet in ABC and MIDI for the current diceS using mdg2mid.sh
#----------------------------------------------------------------------------------
	./mdg2mid.sh ${diceS[*]}
	i=`expr $i + 1`
done
#
##
####
