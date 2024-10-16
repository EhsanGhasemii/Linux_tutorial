# MongoDB

## How to install in linux?
```bash
mkdir -p mongodb
cd mongodb
curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1804-3.6.22.tgz
tar xvf ongodb-linux-x86_64-ubuntu1804-3.6.22
mv ongodb-linux-x86_64-ubuntu1804-3.6.22 mongodb
cd mongodb
cd bin
pwd # keep the result somewhere
echo $PATH
export PATH=$PATH:<result_of_pwd>
cd ..
mkdir -p data
cd bin
./mongod --dbpath /app/mongodb/mongodb/data &
``` 

Follow below steps if you have below error after running the mongod core.

```bash
[1] 6557
root@75a5c2c70ee9:/app/mongodb/mongodb/bin# ./mongod: error while loading shared libraries: libcrypto.so.1.1: cannot open shared object file: No such file or directory
^C
[1]+  Exit 127                ./mongod --dbpath /app/mongodb/mongodb/data
```
The commands that you should follow: 
```bash
apt install libssl1.1
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
```

