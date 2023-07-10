#!/bin/bash

for i in {195..195}; do
    #if [ -d "./${i}" ]; then
    #    echo Simulation ${i} is already here
    #else
        echo Downloading simulation ${i}...
        scp -r joaoreboucas@access2.grid.unesp.br:~/COLA_projects/wCDM/outputs/${i} . > /dev/null
        if [ $? -ne 0 ]; then
            echo Could not download simulation ${i} from Sdumont
        fi
    #fi
done
