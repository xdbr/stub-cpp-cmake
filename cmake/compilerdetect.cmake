### Check g++'s version
if(CMAKE_COMPILER_IS_GNUCXX)
    
    # http://stackoverflow.com/questions/3371127/use-isystem-instead-of-i-with-cmake
    message(STATUS "Compiler is GNUCXX")
    set(CMAKE_INCLUDE_SYSTEM_FLAG_C   "-isystem ")
    set(CMAKE_INCLUDE_SYSTEM_FLAG_CXX "-isystem ")
    
    execute_process(COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION)
    if (GCC_VERSION VERSION_GREATER 4.6.9 )
        message(STATUS "CXX_COMPILER Version > 4.6.9 -- OK")
    endif()
else(CMAKE_COMPILER_IS_GNUCXX)
    message(STATUS "Compiler is not GCC -- MAYBE OK")
endif(CMAKE_COMPILER_IS_GNUCXX)