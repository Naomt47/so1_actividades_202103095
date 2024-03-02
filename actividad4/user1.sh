#!/bin/bash

pipe=/home/naomi/Documentos/Universidad/2024/Semestre1/SO1/Tareas/actividad4/myPipe

if [[ ! -p $pipe ]]; then
    mkfifo $pipe
fi

echo "------- FROM USER 1 -------" 
while true; do
    read -p "you:" user1
    echo $user1 > $pipe 
    echo -n "USER2: " && cat < $pipe
done
