#!/bin/bash
# setup proper pathing and permissions
source /opt/bifxapps/miniconda3/etc/profile.d/conda.sh
unset $PYTHONPATH

# activate my environment
conda activate modulome
export NXF_HOME=$HOME/.nextflow

# record time, run nextflow
printf "Start time: "; /bin/date
printf "Job is running on node: "; /bin/hostname
printf "Job running as user: "; /usr/bin/id
printf "Job is running in directory: "; /bin/pwd
echo $NXF_HOME
printf $NXF_HOME
nextflow run main.nf -profile local
echo

# wrap up
echo "Science complete!"
printf "End time: "; /bin/date
conda deactivate