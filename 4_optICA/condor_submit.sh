#!/bin/bash
# setup proper pathing and permissions
source /opt/bifxapps/miniconda3/etc/profile.d/conda.sh
unset $PYTHONPATH

# activate my environment
conda activate modulome
export NXF_HOME=/home/glbrc.org/cdalldorf/.nextflow

# record time, run nextflow
printf "Start time: "; /bin/date
printf "Job is running on node: "; /bin/hostname
printf "Job running as user: "; /usr/bin/id
printf "Job is running in directory: "; /bin/pwd
echo
./run_ica.sh -n 4 -time 7200 -o ../data/interim ../data/processed_data/log_tpm_norm.csv
echo

# wrap up
echo "Science complete!"
printf "End time: "; /bin/date
conda deactivate
