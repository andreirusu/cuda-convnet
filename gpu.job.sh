#!/bin/bash -e

### TO ADD NEW QSUB/CRUNCH OPTIONS, PLEASE ADD: "#$ OPTION" LINEAS
### TO REMOVE DEFAULTS, PLEASE REMOVE THE CORRESPONDING "#$" LINES


#########################################
##### QSUB/CRUNCH SCRIPT DEFAULTS #######
#########################################

# run in your current directory
#$ -cwd

# sends you an email when completed
#$ -m eas
#$ -M andreirusu@deepmind.com

# write output and errors to the same file
#$ -j y


# USE BASH
#$ -S /bin/bash


# SELECT THE RIGHT QUEUE
#$ -q gpu.q


##############################
##### SETUP ENVIRONMENT ######
##############################

# instruct MKL/BLAS to use all the allocated cores
export MKL_NUM_THREADS=2
export OMP_NUM_THREADS=2

# DMT specifics
export PATH=$PATH:/dmt3/software/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/dmt3/software/lib



# write some system information
echo "Host: `hostname`"
echo "Your PATH is: $PATH"
echo "Your LD_LIBRARY_PATH is: $LD_LIBRARY_PATH"
echo "OMP_NUM_THREADS: $OMP_NUM_THREADS"



#########################################
######## CALL YOUR PROGRAM BELOW ########
######## USING "WITHGPU" ########
#########################################

withgpu ./run11p.sh


