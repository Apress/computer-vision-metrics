project(SDMX)
cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

find_package(OpenCV REQUIRED)

# Project Executable
add_executable (sdmx SDMExtended.cpp )
target_link_libraries(sdmx ${OpenCV_LIBS})

