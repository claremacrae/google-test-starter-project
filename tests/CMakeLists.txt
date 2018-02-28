cmake_minimum_required(VERSION 3.8)
project(tests)
set(CMAKE_CXX_STANDARD 17)
set(SOURCE_FILES
        main.cpp
        )

add_executable(${PROJECT_NAME} ${SOURCE_FILES} )

add_test(NAME ${PROJECT_NAME} COMMAND ${PROJECT_NAME})

# Special mechanism needed to specify libraries to link, when using cmake_multi generator:
#   http://docs.conan.io/en/latest/integrations/cmake/cmake_multi_generator.html#targets-approach
conan_target_link_libraries(${PROJECT_NAME})
