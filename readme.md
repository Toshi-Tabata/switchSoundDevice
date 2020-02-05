# Default Sound Device Switcher for Windows 10

## What is this?

Included are two AutoHotkey scripts that allow the toggling or cycling between sound devices on Windows 10. 

`cycleSoundDevices.ahk` allows the cycling between however many devices you desire.

`toggleSoundDevices.ahk` allows the toggling between two devices.



## Installation

The scripts are reliant on nircmd [(download)](http://www.nirsoft.net/utils/nircmd.zip) and Autohotkey [(download)](https://www.autohotkey.com/download/ahk-install.exe).

1. Extract `nircmd.zip`

![image-20200205172708889](readme.assets/image-20200205172708889.png)

2. Open the `nircmd` folder and copy and paste nircmd.exe into `%windir%\system32`

3. Install Autohotkey
4. Download the [latest release](https://github.com/Toshi-Tabata/switchSoundDevice/releases/latest)

5. Extract the file and open the extracted file

6. Copy and paste **EITHER** `cycleSoundDevices.ahk` or `toggleSoundDevices.ahk` into %appdata%\Microsoft\Windows\Start Menu\Programs\Startup

7. Right click `cycleSoundDevices.ahk` or `toggleSoundDevices.ahk` and click `Edit Script`

![image-20200205172817678](readme.assets/image-20200205172817678.png)

8. Inside the script, change the `change this to your sound device name` to your sound device's name (to find the name, see ["Finding Your Sound Device Name"](#FindYourDeviceName) section below)

![image-20200205172916255](readme.assets/image-20200205172916255.png)

![image-20200205173504038](readme.assets/image-20200205173504038.png)

9. Press `ctrl + s` to save.

10. Double click `cycleSoundDevices.ahk` or `toggleSoundDevices.ahk`



## Finding Your Sound Device Name <a name="FindYourDeviceName"></a>

1. Right click the sound icon

![image-20200205173020499](readme.assets/image-20200205173020499.png)

2. Click `open sound settings`

![image-20200205173102476](readme.assets/image-20200205173102476.png)

3. Click the drop down menu under `Choose your output device`

![image-20200205173134832](readme.assets/image-20200205173134832.png)

4. The name of the device is whatever is written before the brackets `()`. In the above picture, the device name is `Rear Audio Jack`

![image-20200205173334812](readme.assets/image-20200205173334812.png)



## Usage

To switch or cycle between sound devices, the default key binding is `ctrl + win + s`.



## Adding More than Two Sound Devices

1. Right click `cycleSoundDevices.ahk` and click `Edit Script`
2. Under `case 1: Run nircmd...` add a new line with 

```
case 2:
	Run nircmd setdefaultsounddevice "change this to your sound device name"
```

![image-20200205174305773](readme.assets/image-20200205174305773.png)

3. Repeat step 2 with as many sound devices as desired, each time increasing the number (e.g. adding another sound device, change `case 2` to `case 3` etc.)
4. Change the `change this to your sound device name` to your device's name
5. Change the number in `numDevices := 2` to however many devices you have

![image-20200205174513648](readme.assets/image-20200205174513648.png)

- Here, we added 3 devices, so we changed the `2` to `3` 

6. Press `ctrl + s` to save
7. Double click `cycleSoundDevices.ahk` to rerun the script

