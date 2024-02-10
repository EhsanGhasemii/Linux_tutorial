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


















