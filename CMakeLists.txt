cmake_minimum_required(VERSION 3.14)
project(swig_c_sharp_set_bug)

find_package(SWIG 4.0)
include(${SWIG_USE_FILE})
set(CMAKE_CXX_STANDARD 14)

set_property(SOURCE cSharpIntSet.i PROPERTY CPLUSPLUS ON)

swig_add_library(swig_c_sharp_set_bug
        LANGUAGE csharp
        TYPE SHARED
        SOURCES cSharpIntSet.i cSharpIntSet.cpp
        OUTPUT_DIR cSharp)

set_property(TARGET swig_c_sharp_set_bug PROPERTY SWIG_INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR})
set_property(TARGET swig_c_sharp_set_bug PROPERTY INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR})
