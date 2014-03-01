message(STATUS "[LOCALE]")
message(STATUS "  checking locale settings...")

# Check if locale is set to some kind of named UTF-8 layer.
execute_process(
  COMMAND env
  COMMAND grep LANG
  COMMAND grep -ci utf-8                                                                                                            
  OUTPUT_VARIABLE LOCALE_SET_TO_SOME_UTF8
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

if(${LOCALE_SET_TO_SOME_UTF8})
    message(STATUS "    Locale settings seem ok")
else()
    message(WARNING "    Locale seems to not be set to some UTF-8")
    message(WARNING "    Please set your locale using export LANG=de_DE.UTF-8 or something similar")
endif()