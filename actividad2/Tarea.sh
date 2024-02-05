
echo "GITHUB_USER:"
#Leer la variable GITHUB_USER
#read GITHUB_USER

GITHUB_USER=Naomt47


#Consulte la URL https://api.github.com/users/ concatenando el valor de la variable GITHUB_USER al final
data=$(curl https://api.github.com/users/$GITHUB_USER)

user=$(echo $data | jq '."login"' )
id=$(echo $data | jq '."id"' )
cuenta=$(echo $data | jq '."created_at"' )


#Imprimir el mensaje: “Hola <github_user>. User ID: <id>. Cuenta fue creada el: <created_at>.” 
MSG="Hola $user . User ID: $id . Cuenta fue creada el: $cuenta"
echo $MSG

#Crear un log file en /tmp/<fecha>/saludos.log con la salida del mensaje anterior. 


fecha=$(date +"%Y-%m-%d")
#parseo=$(date -d @$fecha "+%m/%d/%Y:%H:%M:%S")

mkdir -p /tmp/$fecha

echo $MSG >> /tmp/$fecha/saludos.log

#Crear un cronjob para que el script se ejecute cada 5 minutos

#crontab -e 

#*/5 * * * * /home/naomi/Documentos/Universidad/2024/Semestre1/SO1/Tareas/Tarea2/Tarea.sh
