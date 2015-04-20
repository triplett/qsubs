#!/bin/bash

#
# DESCRIPTION
#
# Run the Kraken Metagenomic Read Classifier
#
# INPUTS
#
# $DATABASE - Kraken database (available from website)
# $QUERY - Query (FASTA) file
#
# OUTPUTS
#
# $QUERY.out - Table of results
#
# PARAMETERS
#
# CITATION
#
# Wood, D. E., & Salzberg, S. L. (2014). Kraken: ultrafast metagenomic sequence
# classification using exact alignments. Genome Biol, 15(3), R46.
#
# HOMEPAGE
#
# https://ccb.jhu.edu/software/kraken/
#

#PBS -q bigmem
#PBS -m abe
#PBS -j oe
#PBS -l pmem=128gb
#PBS -l walltime=10:00:00
#PBS -l nodes=1:ppn=1
#PBS -N kraken

# define QUERY, DATABASE

cd $PBS_O_WORKDIR

module load kraken

OUTPUT="$QUERY".out

kraken \
  --db $DATABASE \
  --fasta-input $QUERY \
  > $OUTPUT

# vim: set ft=sh
