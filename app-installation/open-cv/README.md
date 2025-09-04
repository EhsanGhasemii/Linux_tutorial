# opencv installation
---

### Minimal build with FFmpeg support

Install ffmpeg requirements.
```bash
apt update
apt install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev
```


```bash
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip
cd opencv
git checkout 4.9.0   # or latest stable
mkdir build && cd build

cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D WITH_FFMPEG=ON \
      -D WITH_OPENGL=OFF \
      -D WITH_GTK=ON \
      -D BUILD_EXAMPLES=OFF \
      ..
```

Then:

```bash
make -j$(nproc)
sudo make install
sudo ldconfig
```

### Install with open-gl


```
rm -rf build
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D WITH_FFMPEG=ON \
      -D WITH_GTK=ON \
      -D WITH_QT=OFF \
      -D WITH_OPENGL=ON \
      -D BUILD_EXAMPLES=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_PERF_TESTS=OFF \
      ..
make -j$(nproc)
make install
```


But first should install its dependencies


Got it 👍 That error isn’t about the OpenGL packages — it’s because you accidentally have a **wrong PPA entry** in your container:

```
http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu questing
```

There is **no Ubuntu release named “questing”** → so `apt` is choking on that line. That’s why your install command failed.

---

### ✅ Fix Steps

1. **Remove the bad PPA line**
   Open the file that contains the PPA reference:

```bash
grep -R "ubuntu-toolchain-r" /etc/apt/sources.list /etc/apt/sources.list.d/
```

It will show something like:

```
/etc/apt/sources.list.d/toolchain.list:deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu questing main
```

Remove or comment out that line (or just delete the file):

```bash
rm -f /etc/apt/sources.list.d/*toolchain*.list
```

2. **Update again**

```bash
apt-get update
```

Now it should succeed without the 404.

3. **Install the OpenGL + GTK deps**

```bash
apt-get install -y \
    libgtk-3-dev libcanberra-gtk3-dev \
    libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev
```

---

⚡ Important: Since your base is **Debian Bullseye** (`deb.debian.org/debian bullseye` in logs), you don’t need the Ubuntu toolchain PPA at all — it only works on Ubuntu. On Debian, stick to Debian repos.

---

👉 Do you want me to give you the **clean minimal dependency install line for Debian Bullseye + OpenCV GUI/FFmpeg** (no broken PPAs)?



### How to check opencv installation configurations? 
Use below cpp code. 
```cpp
#include <opencv2/opencv.hpp>
#include <iostream>
int main() {
    std::cout << "Available backends: " << cv::getBuildInformation() << std::endl;
    return 0;
}
```

and below one. 
```cpp
#include <opencv2/opencv.hpp>
#include <iostream>
int main() {
    cv::VideoCapture cap("/path/to/your/video");
    if (!cap.isOpened()) { std::cerr << "Cannot open video file!" << std::endl; return -1; }
    std::cout << "Video opened successfully!" << std::endl;
    return 0;
}
```


