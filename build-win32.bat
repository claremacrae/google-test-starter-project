mkdir build32
cd    build32
conan install .. -s arch=x86
cmake ..  -G "Visual Studio 15 2017"
cmake --build . --config release
ctest --build-config     release
cd ..
