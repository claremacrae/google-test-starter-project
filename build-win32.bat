mkdir build32-release
cd    build32-release
conan install .. -s arch=x86 -s build_type=Release
cmake ..  -G "Visual Studio 15 2017"
cmake --build . --config release
ctest --build-config     release
cd ..

mkdir build32-debug
cd    build32-debug
conan install .. -s arch=x86 -s build_type=Debug
cmake ..  -G "Visual Studio 15 2017"
cmake --build . --config debug
ctest --build-config     debug
cd ..
