num := 0
numDevices := 2 ; Change "2" to however many devices you have added
^#s::
	Switch mod(num, numDevices) {
		case 0:
			Run nircmd setdefaultsounddevice "change this to your sound device name"
		case 1:
			Run nircmd setdefaultsounddevice "change this to your sound device name"
	}
	num++
