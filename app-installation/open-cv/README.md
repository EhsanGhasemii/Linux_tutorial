# opencv installation
---

### Minimal build with FFmpeg support

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


