#!/bin/bash

echo 'Ports: 3000, 8000, 8085'

# ssh -i ~/.ssh/tunnel -N -R localhost:3000:localhost:3000 beingtmk@3000.mithileshkohale.com
# ssh -i ~/.ssh/tunnel -N -R localhost:8000:localhost:8000 beingtmk@8000.mithileshkohale.com
# ssh -i ~/.ssh/tunnel -N -R localhost:8085:localhost:8085 beingtmk@8085.mithileshkohale.com

# for i in ${@:2}
#   do
#     echo Forwarding port $i
#     ssh -N -L $i:localhost:$i $1 &
#   done  

declare -a arr=(3000 8000 8085)

## now loop through the above array
for i in "${arr[@]}"
do
    echo Forwarding port $i
    ssh -i ~/.ssh/tunnel -N -R localhost:$i:localhost:$i beingtmk@$i.mithileshkohale.com &
done