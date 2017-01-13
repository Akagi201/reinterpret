cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

### Hunter snapshot that will be used ###
include("cmake/HunterGate.cmake")
HunterGate(
        URL "https://github.com/ruslo/hunter/archive/v0.17.12.tar.gz"
        SHA1 "74cfa490ef0d3ff8916523bbf5add53049aad7be"
)

project(reinterpret CXX)

hunter_add_package(gflags)
find_package(gflags REQUIRED)

add_subdirectory(src)
