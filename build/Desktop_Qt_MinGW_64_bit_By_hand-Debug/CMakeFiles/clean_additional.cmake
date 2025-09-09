# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appitem_swtich_001_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appitem_swtich_001_autogen.dir\\ParseCache.txt"
  "appitem_swtich_001_autogen"
  )
endif()
