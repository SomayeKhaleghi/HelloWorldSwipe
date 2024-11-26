# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appHelloWorldSwipe_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appHelloWorldSwipe_autogen.dir/ParseCache.txt"
  "appHelloWorldSwipe_autogen"
  )
endif()
