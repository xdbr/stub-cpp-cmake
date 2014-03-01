project({{project_name}})
cmake_minimum_required(VERSION {{cmake_minimum}})
set({{project_name}}AUTHORS "\"{{author_name}} <{{author_email}}>\"")

set({{project_name}}_NAME     "\"{{project_name}}\"")
set({{project_name}}_SUBNAME  "\"{{project_subname}}\"")
set({{project_name}}_FULLNAME "\"{{project_fullname}}\"")

# version numbers
set({{project_name}}_VERSION_MAJOR {{version_major}})
set({{project_name}}_VERSION_MINOR {{version_minor}})
set({{project_name}}_VERSION_PATCH {{version_patch}})

set(CMAKE_INSTALL_PREFIX            /usr/local)
set(FIND_LIBRARY_USE_LIB64_PATHS)

set({{project_name}}_BUILD_TESTS                  ON)
set({{project_name}}_TEST_STATIC_ASSERTIONS        0) # 0 == 'OFF' / 0 == 'ON'
set(GIT_SUBMODULES_CHECKOUT_QUIET    ON)

set(CONF_DIR ${PROJECT_SOURCE_DIR}/cmake)

include(${CONF_DIR}/config.cmake)
include(${CONF_DIR}/compilerdetect.cmake)
include(${CONF_DIR}/processorcount.cmake)
include(${CONF_DIR}/buildflags.cmake)
include(${CONF_DIR}/doxygen.cmake)
include(${CONF_DIR}/boost.cmake)
include(${CONF_DIR}/ctest.cmake)
include(${CONF_DIR}/cpack.cmake)
include(${CONF_DIR}/host.cmake)
include(${CONF_DIR}/checklocale.cmake)
include(${CONF_DIR}/submodules.cmake)
# include(${CONF_DIR}/githooks.cmake)

add_subdirectory(src/)
add_subdirectory(src/features)
add_subdirectory(vendor/)
