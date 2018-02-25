mkdir build64
cd    build64
conan install ..
cmake ..  -G "Visual Studio 15 2017 Win64"
cmake --build . --config release
ctest --build-config     release
cd ..
