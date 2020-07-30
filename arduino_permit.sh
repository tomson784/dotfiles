ls /dev/ttyACM*

envs=($(ls /dev/ttyACM*))

for envs in "${envs[@]}" ; do
  sudo chmod 777 ${envs}
done
