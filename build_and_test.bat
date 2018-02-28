
mkdir build-windows
cd    build-windows
REM Commands based on:
REM     https://stackoverflow.com/questions/45835644/how-to-link-only-to-some-of-the-libraries-in-conan-package
REM Maybe add -s compiler.version=15 ?
conan install .. -g cmake_multi -s arch=x86_64 -s build_type=Debug   -s compiler.runtime=MDd
conan install .. -g cmake_multi -s arch=x86_64 -s build_type=Release -s compiler.runtime=MD
cmake -G "Visual Studio 15 2017 Win64" ..

cmake --build . --config Release
cmake --build . --config Debug
cmake --build . --config MinSizeRel
cmake --build . --config RelWithDebInfo 

ctest --build-config Release
ctest --build-config Debug
ctest --build-config MinSizeRel
ctest --build-config RelWithDebInfo 

cd ..
