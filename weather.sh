while :
do
	source ./config.ini
	wget -N -q https://pogoda.yandex.by/
	grep -Po 'current-weather__thermometer_type_now">.[0-9]+' index.html | grep -Po '.[0-9]+'
	sleep $timetosleep
done

