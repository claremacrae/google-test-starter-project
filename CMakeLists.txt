cmake_minimum_required(VERSION 3.8)
project(googletest-starter-project)

set(CMAKE_CXX_STANDARD 17)

# Note the use of _multi in these filenames, as created by the cmake_multi generator.
# This is a different file than is generated the cmake generator.
if(EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
    conan_basic_setup()
else()
    message(WARNING "The file conanbuildinfo_multi.cmake doesn't exist, you have to run conan install first")
endif()

enable_testing()
add_subdirectory(tests)
