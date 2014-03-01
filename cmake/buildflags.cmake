# Set a default build type for single-configuration
# CMake generators if no build type is set.
# (http://www.cmake.org/pipermail/cmake/2006-February/008371.html)

if(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
   set(CMAKE_BUILD_TYPE RelWithDebInfo)
endif()
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")

set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g          -Wno-attributes ${CMAKE_CXX_FLAGS}")
set(CMAKE_CXX_FLAGS_RELEASE        "-Ofast          -Wno-attributes ${CMAKE_CXX_FLAGS}") # -Weffc++
set(CMAKE_CXX_FLAGS_DEBUG          "-O0 -g -frtti   -Wno-attributes ${CMAKE_CXX_FLAGS}")
set(CMAKE_CXX_FLAGS_PROFILE        "-O0 -g -pg      -Wno-attributes ${CMAKE_CXX_FLAGS}")
