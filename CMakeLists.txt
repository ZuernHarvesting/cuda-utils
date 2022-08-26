cmake_minimum_required(VERSION 3.1.0)
project(cuda-utils VERSION 0.1.0 LANGUAGES CUDA)

add_library(cuda-utils INTERFACE)

target_include_directories(cuda-utils INTERFACE
                            include/)
