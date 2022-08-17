cmake_minimum_required(VERSION 3.0.0)
project(cuda-utils VERSION 0.1.0 LANGUAGES C CXX CUDA)

if(NOT DEFINED CMAKE_CUDA_ARCHITECTURES)
  set(CMAKE_CUDA_ARCHITECTURES 50)
endif()

find_package(CUDAToolkit REQUIRED)

add_library(cuda-utils src/cuda-utils.cu)

target_link_libraries(cuda-utils PRIVATE
                        CUDA::cudart)   

set_property(TARGET cuda-utils PROPERTY CUDA_ARCHITECTURES 50)

target_include_directories(cuda-utils PUBLIC
                            /usr/local/cuda-11.7/include)
