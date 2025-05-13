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
#     VERSION:	1.0.3
#     LICENSE:	Creative Commons Attribution 4.0 International License (CC-BY)
#     CREATED:	2017.08.12 14:30:55 +8
#    REVISION:	2025/05/13 08:04:16
#==================================================================================

#----------------------------------------------------------------------------------
# define the function genS() that randomly chooses an integer from 1 to 6, inclusive,
#----------------------------------------------------------------------------------
genS() { # RANDOM randomly generates an integer from 0 to 32765 (max: 32767)
	rnd=32767
	until [ $rnd -le 32765 ]
	do
		rnd=$[RANDOM]
		if [ $rnd -le 32765 ]; then echo $[rnd%6+1]; fi
	done
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
		diceS[$j]=$((`genS` + `genS`))
	done

#----------------------------------------------------------------------------------
# generate a minuet in ABC notation and corresponding MIDI for the current diceS 
# using mdg2mid.sh
#----------------------------------------------------------------------------------
	./mdg2mid.sh ${diceS[*]}
	i=`expr $i + 1`
done
#
##
####
