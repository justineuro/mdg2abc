## mdg2abc.sh

[**mdg2abc.sh**](https://github.com/justineuro/mdg2abc) is a [Bash](https://www.gnu.org/software/bash/) script (see [Wikipedia:Bash\_(Unix_shell)](https://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) for more info) that can be used for creating a musical score, written in [ABC music notation](http://www.abcnotation.com), of a particular [Musical Dice Game (MDG)](https://en.wikipedia.org/wiki/Musikalisches_W%C3%BCrfelspiel) minuet, generated based on the rules given in  [Musikalisches Würfelspiel, K.516f (Mozart, Wolfgang Amadeus)](http://imslp.org/wiki/Musikalisches_W%C3%BCrfelspiel,_K.516f_(Mozart,_Wolfgang_Amadeus)). 
 
To view the generated musical score, one can process it using [`abcm2ps`](http://moinejf.free.fr/) to produce images in Postscript, PDF, SVG, or XHTML formats.  
This directory includes:

- [mdg2abc.sh](./mdg2abc.sh) - a Bash script for generating the musical score, written in ABC, of an MDG minuet corresponding to any sequence of 16 tosses of a pair of dice
- [mdg2abc2-sm.sh](./mdginabc2svg-sm.sh) - similar to [mdg2abc.sh](./mdg2abc.sh) but smaller images are created when processed
- [mdg2abc-tab2.sh](./mdg2abc-tab2.sh) - similar to [mdg2abc.sh](./mdg2abc.sh) but coded with tabs of width 2 instead of 8 spaces
- [mdg2mid.sh](./mdg2mid.sh) - a Bash script for generating the musical score, written in ABC, and MIDI (using [`abc2midi`](http://abc.sourceforge.net/abcMIDI)) of an MDG minuet corresponding to any sequence of 16 tosses of a pair of dice; [abcmidi](http://abc.sourceforge.net/abcMIDI) has to be installed beforehand
- [mdg2AllNoX.sh](./mdg2AllNoX.sh) - a Bash script similar to [mdg2abc.sh](./mdg2abc.sh); in addition to the particular MDG score requested in ABC notation, the corresponding MIDI, SVG, Postscript, and PDF files are also created;  the tail part of this script can be easily edited to create only some of these [abcm2ps](http://moinejf.free.fr/)-created files 
- [mdg2abcRndN.sh](./mdg2abcRndN.sh) - A Bash script that generates the musical score in ABC notation of *N* (a counting number) randomly-generated MDG minuets
- [mdg2midRndN.sh](./mdg2midRndN.sh) - similar to [mdg2abcRndN.sh](./mdg2abcRndN.sh) where the corresponding MIDI output are also created 
- [mdg2abcList.sh](./mdg2abcList.sh) - A Bash script that generates the musical score in ABC notation of all the 16-sequences provided in a text file
- [mdg2midList.sh](./mdg2midList.sh) - similar to [mdg2abcList.sh](./mdg2abcList.sh) where the corresponding MIDI output are also created 
- [samples](./samples) - also accessible at [samples](https://justineuro.github.io/mdg2abc/samples/); a folder containing samples of generated MDG minuets written in ABC music notation, and the corresponding audio (MIDI) and images (SVG, PDF, Postscript)
- [res](./res) - also accessible at [res](https://justineuro.github.io/mdginabc2svg/res/); a folder containing the measures of *Musikalisches Würfelspiel, K.516f* written in ABC notation and other related files 

To use the `mdg2abc.sh` Bash script, at the command line type:

```
/path/to/mdg2abc.sh n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16
```
    
where `n1, n2, ..., n16` are any of the 11 possible outcomes of the toss of two ordinary six-sided dice, e.g., are 16 integers, not necessarily unique, chosen from the set {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}.  For example, if the script is located in the present working directory and each outcome of the 16 dice tosses was a 3:

```
./mdg2abc.sh 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
```
The output will be the file `K516f-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3-3.abc`, containing the score of the MDG minuet corresponding to the 16 outcomes given at the command line (all tosses came up a 3), and will be created under the current working directory.  Please see the [`samples`](./samples/index.md) folder in this directory for more samples.

### Using <span style="background: white; width: auto; display:inline-block; padding-left:1%; padding-right:1%"> mdg2abcRndN.sh </span> and <span style="background: white; width: auto; display:inline-block; padding-left:1%; padding-right:1%"> mdg2midRndN.sh </span>
To use the scripts for generating a requested number of randomly-generated of MDG minuets: 

* [mdg2abcRndN.sh](./mdg2abcRndN.sh) - for generating only the ABC files, put `mdg2abcRndN.sh` and `mdg2abc.sh` in the same directory (folder) that will contain the ABC files, `cd` (change directory) to that folder, then: 

```
./mdg2abcRndN.sh <numberOfMDGsToMake>
```
* [mdg2midRndN.sh](./mdg2midRndN.sh) - to create both the ABC and MIDI files of randomly generated MDG minuets in a chosen folder (directory), put the `mdg2abcRndN.sh` and `mdg2mid.sh` in that directory (folder), `cd` (change directory) to that folder, then:
 
```
./mdg2midRndN.sh <numnberOfMDGsToMake>
```
Note that [abcmidi](http://abc.sourceforge.net/abcMIDI) has to be installed beforehand.

A [related Bash script](https://github.com/justineuro/mdginabc2svg) that generates XHTML files that contain the musical scores and audio (plays when the image is clicked-on or tapped) of MDG minuets can be found at the GitHub site [mdginabc2svg](https://github.com/justineuro/mdginabc2svg) or its GitHub Pages Site at [mdginabc2svg](https://justineuro.github.io/mdginabc2svg/).

### Using <span style="background: white; width: auto; display:inline-block; padding-left:1%; padding-right:1%"> mdg2abcList.sh </span> and <span style="background: white; width: auto; display:inline-block; padding-left:1%; padding-right:1%"> mdg2midList.sh </span>
To use the scripts for generating MDG minuets for 16-toss outcomes provided, one 16-sequence per line, in a text file (say, `listfile.txt`):

* [mdg2abcList.sh](./mdg2abcList.sh) - for generating only the ABC files, put `listfile.txt`, `mdg2abcList.sh`, and `mdg2abc.sh` in the same directory (folder) that will contain the ABC files, `cd` (change directory) to that folder, then: 

```
./mdg2abcList.sh listfile.txt
```
* [mdg2midList.sh](./mdg2midList.sh) - to create both the ABC and MIDI files for MDG minuets of 16-toss outcomes provided as in the list (`listfile.txt`) above in a chosen folder (directory), put the `listfile.txt`, `mdg2midList.sh`, and `mdg2mid.sh` in that directory (folder), `cd` (change directory) to that folder, then:
 
```
./mdg2midList.sh listfile.txt
```
Note that [abcmidi](http://abc.sourceforge.net/abcMIDI) has to be installed beforehand.

## Acknowledgements
My sincerest gratitude to Chris Walshaw et al. for the [ABC music notation](http://www.abcnotation.com);  Jean-Francois Moine for [abcm2ps](http://moinejf.free.fr/) and [abcmplugin](http://moinejf.free.fr/), and the accompanying examples, templates, and pointers for the appropriate use of these resources;  Guido Gonzato for the [ABC Plus Project](http://abcplus.sourceforge.net/) and the [abcmidi resources](http://abcplus.sourceforge.net/#abcMIDI) available there, more especially for the ABC resource book *Making Music with ABC 2*; James R. Allwright and Seymour Shlien for [abcmidi](http://abc.sourceforge.net/abcMIDI) source and binaries; and [Artifex, Inc.](https://artifex.com) for Ghostscript (includes the `ps2pdf` converter).  Special thanks also to the [International Music Score Library Project (IMSLP)](http://imslp.org/) for making available the score for *Musikalisches Würfelspiel, K.516f*.  Ditto to Machtelt Garrels for the book [Bash Guide for Beginners](http://tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html), Vivek Gite for the book [Linux Script Shell Tutorial](http://www.freeos.com/guides/lsst/), and Steve Parker for the [Unix/Linux Shell Cheatsheet](http://steve-parker.org/sh/cheatsheet.pdf).  Much thanks, too, to the [Debian Project](https://www.debian.org) for the Debian 8 (Jessie) GNU/Linux OS, to Brian Fox for [Bash](https://www.gnu.org/software/bash/), and [GitHub](https://github.com) for its generosity in providing space for [this project](https://github.com/justineuro/mdg2abc).   

## License
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title"><b>mdg2abc</b></span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/justineuro/mdg2abc" property="cc:attributionName" rel="cc:attributionURL">Justine Leon A. Uro</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/justineuro/mdginabc2svg" rel="dct:source">https://github.com/justineuro/mdg2abc</a>