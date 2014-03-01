add_definitions(-Wno-pointer-arith)

include_directories(SYSTEM
    ${CMAKE_CURRENT_SOURCE_DIR}/make_unique
    ${CMAKE_CURRENT_SOURCE_DIR}/serialization/include/cereal
)