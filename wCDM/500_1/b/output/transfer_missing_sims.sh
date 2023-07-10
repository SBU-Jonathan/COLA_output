#!/bin/bash

for i in {0..499}; do
    if [ -d "./${i}ph_rev" ]; then
        echo Simulation ${i} is already here
    else
        echo Downloading simulation ${i}...
        scp -r joao.reboucas2@login.sdumont.lncc.br:/scratch/decola/joao.reboucas2/COLA_projects/wCDM/outputs/${i}ph_rev . > /dev/null
        if [ $? -ne 0 ]; then
            echo Could not download simulation ${i} from Sdumont
        fi
    fi
done
