# googletest-starter-project

This demonstrates how to use [Conan.io](http://docs.conan.io/en/latest/introduction.html) with [cmake](https://cmake.org/documentation/) to create a multi-configuration Visual Studio 2017 solution file.

See also https://github.com/claremacrae/googletest-starter-project-separate-folders, which shows a much less good way of using Visual Studio with Conan and CMake.

## Usage

To use:

1. Clone or download this repo
1. Make sure you have Visual Studio 2017 installed
1. Make sure you have CMake installed
1. Make sure you have Conan installed
1. Run `build_and_test.bat`
1. You can also open `build-windows\googletest-starter-project.sln` in Visual Studio, and build any of the configurations.

## Things to note

* This uses conan's [`cmake_multi`](http://docs.conan.io/en/latest/reference/generators/cmakemulti.html) generator.
* Don't be tempted to use the [`visual_studio_multi`](http://docs.conan.io/en/latest/reference/generators/visualstudiomulti.html) generator - it is for the case where you are hand-maintaining the contents of your solution files and projects, and just want Conan to manage 3rd-party dependencies.