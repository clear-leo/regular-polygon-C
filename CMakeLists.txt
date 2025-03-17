cmake_minimum_required(VERSION 3.31)
project(polygon)

set(CMAKE_C_FLAGS "-O3 -Wall -Wextra")

find_package(SDL2 REQUIRED)
include_directories(include ${SDL2_INCLUDE_DIRS})

add_library(window src/window.c)

add_executable(main src/main.c)
target_link_libraries(main ${SDL2_LIBRARIES} window m)
