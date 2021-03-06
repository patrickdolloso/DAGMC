# Try to find MOAB
#
# Once done this will define
#
#  MOAB_FOUND - system has MOAB
#  MOAB_INCLUDE_DIRS - the MOAB include directory
#  MOAB_LIBRARIES - Link these to use MOAB
#  MOAB_DEFINITIONS - Compiler switches required for using MOAB

find_path( MOAB_CMAKE_CONFIG NAMES MOABConfig.cmake
  HINTS ${MOAB_ROOT}
  PATHS ENV LD_LIBRARY_PATH
  PATH_SUFFIXES lib Lib
  NO_DEFAULT_PATH
  )

MESSAGE ( STATUS "Found MOAB in ${MOAB_CMAKE_CONFIG}" )

INCLUDE ( ${MOAB_CMAKE_CONFIG}/MOABConfig.cmake )


