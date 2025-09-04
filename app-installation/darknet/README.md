# DarkNet

How to install darknet?
```bash
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
mkdir build && cd build
cmake ..
make -j$(nproc)
```


Without cuda
```bash
cd /app/projects/hekfa/darknet
rm -rf build   # remove the broken build
mkdir build && cd build
cmake .. -DENABLE_CUDA=OFF -DENABLE_CUDNN=OFF -DENABLE_OPENCV=ON
make -j$(nproc)
```
