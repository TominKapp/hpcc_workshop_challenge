#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=10G
#SBATCH --time=1-00:15:00
#SBATCH --mail-user=useremail@address.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="workshop_test"
#SBATCH -p intel

module purge
module load hpcc_workshop/2.0
module load miniconda3

mkdir -p output
rm -rf output/secret_message.txt
create_output_file > output/secret_message.txt

chmod 000 output/secret_message.txt
