set(GIT_PRE_RELEASE_HOOK_FILE "${PROJECT_SOURCE_DIR}/.git/hooks/pre-release.sh")
set(GIT_PRE_RELEASE_HOOK_FILE_CONTENT 
"#!/bin/sh

perl -i -pe ' BEGIN{ $_= shift @ARGV; @F=split/\\./; @ARGV=@ARGV[$#ARGV]} \\
s{(VERSION_MAJOR)\\s+\\d?}{$1 $F[0]}; \\
s{(VERSION_MINOR)\\s+\\d?}{$1 $F[1]}; \\
s{(VERSION_PATCH)\\s+\\d?}{$1 $F[2]}' \"$@\" CMakeLists.txt
")

if(EXISTS ${GIT_PRE_RELEASE_HOOK_FILE})
    message(STATUS "git pre-release hook exists")
else()
    file(WRITE
        ${GIT_PRE_RELEASE_HOOK_FILE}
        ${GIT_PRE_RELEASE_HOOK_FILE_CONTENT}
    )
endif()

if(EXISTS ${GIT_PRE_RELEASE_HOOK_FILE})
    message(STATUS "git pre-release hook created.")
else()
    message(WARNING "creating git hook failed.")
endif()

## Warning: this is not portable!
execute_process(
    COMMAND             chmod a+x ${GIT_PRE_RELEASE_HOOK_FILE}
    WORKING_DIRECTORY   ${PROJECT_SOURCE_DIR}/.git/hooks/
    OUTPUT_QUIET
    ERROR_QUIET
)