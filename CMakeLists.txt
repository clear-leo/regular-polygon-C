cmake_minimum_required(VERSION 3.31)
project(polygon)

find_package(SDL2 REQUIRED)

add_library(window src/window.c)


add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} ${SDL2_LIBRARIES} window m)
