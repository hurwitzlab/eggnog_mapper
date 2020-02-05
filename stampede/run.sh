#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -p normal
#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -J eggnog
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user kyclark@email.arizona.edu

module load tacc-singularity

IMG="/work/05066/imicrobe/singularity/eggnog_mapper-2.0.1.img"

if [[ ! -e "$IMG" ]]; then
    echo "Missing Singularity image \"$IMG\""
    exit 1
fi

DATA_DIR="/work/05066/imicrobe/iplantc.org/data/eggnog"
OUT_DIR="$SCRATCH/ohana-eggog/genes"
GENES="/scratch/03137/kyclark/ohana/ohana-2-nr-genes/ALOHAgenecat_v2_nonredundant.ffn"

[[ ! -d "$OUT_DIR" ]] && mkdir -p "$OUT_DIR"

singularity exec "$IMG" emapper.py --data_dir "$DATA_DIR" -o "$OUT_DIR" \
    -i "$GENES" -m diamond

echo "Comments to kyclark@email.arizona.edu"
