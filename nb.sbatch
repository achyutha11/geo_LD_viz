#!/bin/bash
#SBATCH --time=6:00:00
#SBATCH --partition=jnovembre
#SBATCH --account=pi-jnovembre
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=2G
#SBATCH --job-name=geo-LD-nbgeneral
#SBATCH --output=nb-log-%j.out
#SBATCH --error=nb-log-%j.err


ip=$(hostname -i)
port=$((10000+ $RANDOM % 20000))
which jupyter-notebook
echo "http://"$ip":"$port"/"
jupyter-notebook --no-browser --ip=$ip --port=$port --log-level='ERROR'


