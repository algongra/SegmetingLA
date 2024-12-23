#!/bin/bash
#SBATCH -J find_best_config_LA_013_3d_fullres
#SBATCH -A mambrino
#SBATCH -p compute
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=40
#SBATCH --mem=100G
#SBATCH -o find_best_config_LA_013_3d_fullres.o
#SBATCH -e find_best_config_LA_013_3d_fullres.e


# Config Segmenting LA project
source config.sh

# Declare enviroment variables
DATASET_ID=13
DATASET_NAME=LA
N_PROC=40
TR_CONFIGS=3d_fullres
PLAN_TYPE=nnUNetResEncUNetLPlans


# Call function find_best_config_fun.sh
find_best_config_fun $DATASET_ID $DATASET_NAME $N_PROC $TR_CONFIGS $PLAN_TYPE
