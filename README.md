# googletest-starter-project

This demonstrates how to use [Conan.io](http://docs.conan.io/en/latest/introduction.html) with [cmake](https://cmake.org/documentation/) to create a multi-configuration Visual Studio 2017 solution file.

## Usage

To use:

1. Clone or download this repo
2. Make sure you have CMake installed
3. Make sure you have Conan installed4
4. Run `build_and_test.bat`
5. You can also open `build-windows\googletest-starter-project.sln` in Visual Studio, and build any of the configurations.

## Things to note

* This uses conan's [`cmake_multi`](http://docs.conan.io/en/latest/reference/generators/cmakemulti.html) generator.
* Don't be tempted to use [`visual_studio_multi`](http://docs.conan.io/en/latest/reference/generators/visualstudiomulti.html) - it is for the case where you are hand-maintaining the contents of your solution files and projects, and just want Conan to manage 3rd-party dependencies.