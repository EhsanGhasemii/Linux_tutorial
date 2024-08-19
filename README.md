# Linux Tutorial

## nvim 

### search something
1. Press / to start a search.
2. Type the word you want to search for.
3. Press Enter to perform the search.
4. Press n to find the next occurrence or N to find the previous occurrence1.
If you want to search for a whole word, you can use \< to mark the beginning of a word and \> to mark the end of a word. For example, to search for “gnu” you would use /\<gnu\>1.

You can also search for a whole word by moving the cursor to the word and pressing * (asterisk) to search forwards or # (hash) to search backwards12.

By default, the search result is case sensitive; searching for “GNU” will not match “Gnu”. To ignore case type :set ignorecase or :set ic in the Vim command line1.

## FTP
You can use these commands to connect to ftp and get or put files in the directories. 

1. get files

```bash
ftp 172.20.20.20 2121
Name (172.20.20.20:username): <your_username>
Password: <your_password>
get <your_file_name_in_ftp_server>
bye
```
2. put files


```bash
ftp 172.20.20.20 2121
Name (172.20.20.20:username): <your_username>
Password: <your_password>
put <your_file_name_in_your_local_host>
bye`
```




## Docker
```bash
sudo ip route
sudo ip route delete
```


## Apache2 - Creating web page
Please use this link to deploy your project on you local host by help of apache2. 
[link](https://https://ubuntu.com/tutorials/install-and-configure-apache#1-overview
). 

```bash
sudo apt update
sudo apt install apache2

sudo mkdir /var/www/gci/

cd /var/www/gci/
nano index.html
```

```html
<html>
<head>
  <title> Ubuntu rocks! </title>
</head>
<body>
  <p> I'm running this website on an Ubuntu Server server!
</body>
</html>
```

```bash
cd /etc/apache2/sites-available/

sudo cp 000-default.conf gci.conf

sudo nano gci.conf
```

```
ServerAdmin yourname@example.com
DocumentRoot /var/www/gci/
ServerName gci.example.com
```

```bash
sudo a2ensite gci.conf

service apache2 reload
```


Make sure your Apache web server is running. You can start it by running the following command:
```bash
sudo service apache2 start
```
Ensure that the file has proper permissions to be accessed by the web server. You can set the correct permissions by running:
```bash
sudo chmod 644 /var/www/html/index.html
```

Enable the virtual host by creating a symbolic link to the sites-enabled directory. You can do this by running the following command:
```bash
sudo ln -s /etc/apache2/sites-available/mywebsite.conf /etc/apache2/sites-enabled/
```
Restart the Apache web server to apply the changes:
```bash
sudo service apache2 restart
```
You can access the web page that you create with typing "https://localhost/." in your browser. 
If you're accessing the web page from a different machine on the same network, you can use the IP address of the machine running the Apache server instead of localhost. For example, if the IP address of the machine is 192.168.0.100, you can access the web page by visiting http://192.168.0.100/.

Remember to make sure that your machine's firewall allows incoming connections on port 80 (HTTP) if you want to access the web page from other devices on the network.





## Ffmpeg

without sound
``` bash 
ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 output.mp4
```
In this command:

- video_size 1024x768 specifies the resolution of the captured screen.
- framerate 25 sets the frame rate.
- i :0.0+100,200 captures the image from the desktop, starting with the upper-left corner at coordinates (100, 200).

If you need audio as well, you can add ALSA or PulseAudio input devices. For ALSA:

``` bash
ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 -f alsa -ac 2 -i hw:0 output.mkv


ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 -f pulse -ac 2 -i default output.mkv
```

Use the -video_size flag to set the resolution. For example:
``` bash
ffmpeg -video_size 640x480 -framerate 25 -f x11grab -i :0.0+100,200 output.mp4
```

You can control the video quality by adjusting the bitrate. Higher bitrate results in better quality but larger file size.

Use the -b:v flag to set the video bitrate. For example:
``` bash
ffmpeg -video_size 640x480 -framerate 25 -f x11grab -i :0.0+100,200 -b:v 1000k output.mp4
```

To record your entire screen using FFmpeg, you can adjust the x11grab command to capture the full screen. Here’s how:

``` bash
ffmpeg -f x11grab -video_size 1920x1080 -framerate 30 -i :0.0 output.mp4
```

I use always: 
``` bash
ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 -f alsa -ac 2 -i hw:0 output.mkv
```


How to record voice? 
``` bash
ffmpeg -f alsa -i default output.wav
```


## Network
How to reset your network config:

```bash
sudo rm /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
```
