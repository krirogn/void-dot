
getDate() {
	currentTime=`date +"%d/%m/%y %H:%M:%S"`
	echo $currentTime
}

getBattery() {
	currentBattery=$(acpi -b | awk '{print $4}')
	currentCharge=$(acpi -b | awk '{print $3}')

	if [ "$currentCharge" = "Charging," ]; then
		echo " ${currentBattery%,*}"
	else
		
		echo " ${currentBattery%,*}"
	fi
}

getScreenBrightness() {
	currentBrightness=$(xbacklight)
	echo ${currentBrightness%.*}
}

getWifiConnection() {
	wget -q --spider http://google.com

	if [ $? -eq 0 ]; then
    	echo ""
	else
		echo "Off"
	fi
}

getVolume() {
	mute=$(amixer sget Master | grep 'Mono:' | awk -F'[][]' '{ print $6 }')

	if [ "$mute" = "on" ]; then
		echo " $(amixer sget Master | grep 'Mono:' | awk -F'[][]' '{ print $2 }')"
	else
		echo ""
	fi
}

currentSong() {
	currentSong=$(playerctl metadata xesam:title)
	echo $currentSong
}

xsetroot -name " $(currentSong) | $(getVolume) |  $(getScreenBrightness)% | $(getBattery) | $(getDate)"