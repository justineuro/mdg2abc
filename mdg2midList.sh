#!/bin/bash
#===================================================================================
#
#	 FILE:	mdg2midList.sh
#
#	USAGE:	mdg2midList.sh <listfile>
#
#		where <listfile> is a text file containing the outcomes of all the 
#		16-tosses, listed a 16-sequence at a time, for which the MDG minuet 
#		in ABC notation and the corresponding MIDI is to be generated.
#		*** NOTE:  This script has to be in the same directory as mdg2mid.sh. ***
#
# DESCRIPTION:	Used for generating ABC files, each a Musical Dice Game (MDG) minuet 
#		based on the rules given in K. 516f or K. 294d or K. Anh. C 30.01
#		(1792 publication attributed to W.A. Mozart by his publisher, Nikolaus 
#		Simrock), and the corresponding MIDI files.  
#
#      AUTHOR:	J.L.A. Uro (justineuro@gmail.com)
#     VERSION:	1.0
#     LICENSE:	Creative Commons Attribution 4.0 International License (CC-BY)
#     CREATED:	2017.08.15 21:07:12 +8
#    REVISION:	
#==================================================================================

#----------------------------------------------------------------------------------
# input the list of 16-sequences for which the MDG, in ABC notation, and MIDI 
# is to be generated
#----------------------------------------------------------------------------------
listfile=$1

#----------------------------------------------------------------------------------
# declare the variable "diceS" as an array
# diceS - array containing the 16 outcomes from input line
#----------------------------------------------------------------------------------
declare -a diceS

#----------------------------------------------------------------------------------
# generate the MDG minuets for each 16-sequence in the list provided
#----------------------------------------------------------------------------------
i=1
while read sequence; 
do
#----------------------------------------------------------------------------------
# set diceS to be the current 16-sequence read from the list provided
#----------------------------------------------------------------------------------
	diceS=($sequence)

#----------------------------------------------------------------------------------
# generate a minuet in ABC notation and corresponding MIDI for the current diceS 
# using mdg2mid.sh
#----------------------------------------------------------------------------------
	./mdg2mid.sh ${diceS[*]}
	i=`expr $i + 1`
done < $listfile
#
##
####
