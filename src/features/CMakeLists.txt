add_definitions("-std=c++11 -Wall -Wextra")

include_directories(${CMAKE_SOURCE_DIR}/src/)
include_directories(SYSTEM
    ${CMAKE_SOURCE_DIR}/vendor/
    ${CMAKE_SOURCE_DIR}/vendor/testing
    ${CMAKE_SOURCE_DIR}/vendor/make_unique
)

add_executable       (FooFeature FooFeature.cpp)
target_link_libraries(FooFeature foo)
add_test             (FooFeature ${EXECUTABLE_OUTPUT_PATH}/FooFeature)