add_definitions("-std=c++11 -Wall -Wextra -pedantic")

include_directories(${CMAKE_SOURCE_DIR}/src/)
include_directories(SYSTEM
    ${CMAKE_SOURCE_DIR}/vendor/
    ${CMAKE_SOURCE_DIR}/vendor/cautomata
    ${CMAKE_SOURCE_DIR}/vendor/make_unique
    ${CMAKE_SOURCE_DIR}/vendor/serialization/include
)

add_library(foo SHARED
    Foo.cpp
)
target_link_libraries(foo)

add_executable       ({{project_name}} main.cpp)
target_link_libraries({{project_name}} foo ${Boost_LIBRARIES})