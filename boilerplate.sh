#!/bin/bash

#
# DESCRIPTION
#
# Brief program description
#
# INPUTS
#
# $INPUT- Example Input
#
# OUTPUTS
#
# output.txt
#
# PARAMETERS
#
# optional settings
#
# CITATION
#
# Paper reference
#
# HOMEPAGE
#
# URL to website and/or manual
#

#PBS -q default
#PBS -M email@example.com
#PBS -m abe
#PBS -l pmem=512Mb
#PBS -l walltime=100:00:00
#PBS -l nodes=1:ppn=48
#PBS -N 
#PBS -j oe

set -e

cd $PBS_O_WORKDIR
