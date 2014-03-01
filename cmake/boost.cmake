### BOOST
set(Boost_USE_MULTITHREADED OFF)
set(Boost_DEBUG             OFF)
set(CMAKE_INCLUDE_PATH "/opt/local/include" "/usr/include64" "/usr/local/include" "/usr/include" ${CMAKE_INCLUDE_PATH})
set(CMAKE_LIBRARY_PATH "/opt/local/lib"     "/usr/lib64"     "/usr/local/lib"     "/usr/lib"     ${CMAKE_LIBRARY_PATH})

find_package(Boost 1.44.0 COMPONENTS unit_test_framework filesystem system serialization program_options REQUIRED)

IF (Boost_FOUND)
    INCLUDE_DIRECTORIES(SYSTEM ${Boost_INCLUDE_DIRS})
    LINK_DIRECTORIES(${LINK_DIRECTORIES} ${Boost_LIBRARY_DIRS})
    ADD_DEFINITIONS( "-DHAS_BOOST" )
    message(STATUS "Boost Found -- OK" )
ELSE(Boost_FOUND)
    message(STATUS "Boost not found -- MAYBE NOT OK" )
ENDIF(Boost_FOUND)