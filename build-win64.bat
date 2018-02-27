mkdir build64-release
cd    build64-release
conan install .. -s arch=x86_64 -s build_type=Release
cmake ..  -G "Visual Studio 15 2017 Win64"
cmake --build . --config release
ctest --build-config     release
cd ..

REM this one gives
REM C:\Users\Clare\Documents\Programming\GitHub\googletest-starter-project\tests\main.cpp(1): fatal error C1083:
REM Cannot open include file: 'gtest/gtest.h': No such file or directory
REM [C:\Users\Clare\Documents\Programming\GitHub\googletest-starter-project\build64-debug\tests\tests.vcxproj]
mkdir build64-debug
cd    build64-debug
conan install .. -s arch=x86_64 -s build_type=Debug
cmake ..  -G "Visual Studio 15 2017 Win64"
cmake --build . --config debug
ctest --build-config     debug
cd ..
