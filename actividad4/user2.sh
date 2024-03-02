#!/bin/bash
pipe=/home/naomi/Documentos/Universidad/2024/Semestre1/SO1/Tareas/actividad4/myPipe

if [[ ! -p $pipe ]]; then
    mkfifo $pipe
fi
echo "------- FROM USER 2 -------"
while true; do
    echo -n "USER1:" && cat < $pipe
    read -p "you:" user2
    #read $USER1
    echo  $user2 > $pipe
done