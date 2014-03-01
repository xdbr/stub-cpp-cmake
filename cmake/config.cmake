set(EXECUTABLE_OUTPUT_PATH  ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH     ${PROJECT_BINARY_DIR}/lib)

set({{project_name}}_TEST_DATA_DIR       "\"${CMAKE_SOURCE_DIR}/src/features/data/\"")

message(STATUS "Test data directory: ${sis_TEST_DATA_DIR}")

configure_file(
  "${PROJECT_SOURCE_DIR}/src/config.hpp.in"
  "${PROJECT_SOURCE_DIR}/src/config.hpp"
  @ONLY
)

configure_file(
  "${PROJECT_SOURCE_DIR}/Doxyfile.in"
  "${PROJECT_SOURCE_DIR}/Doxyfile"
  @ONLY
)
