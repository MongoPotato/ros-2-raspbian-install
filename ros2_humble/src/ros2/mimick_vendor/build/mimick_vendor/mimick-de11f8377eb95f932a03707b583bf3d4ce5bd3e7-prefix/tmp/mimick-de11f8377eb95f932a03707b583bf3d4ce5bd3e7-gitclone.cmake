# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitclone-lastrun.txt" AND EXISTS "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitinfo.txt" AND
  "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitclone-lastrun.txt" IS_NEWER_THAN "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" 
            clone --no-checkout --config "advice.detachedHead=false" --config "advice.detachedHead=false" "https://github.com/ros2/Mimick.git" "mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7"
    WORKING_DIRECTORY "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/ros2/Mimick.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git" 
          checkout "de11f8377eb95f932a03707b583bf3d4ce5bd3e7" --
  WORKING_DIRECTORY "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'de11f8377eb95f932a03707b583bf3d4ce5bd3e7'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitinfo.txt" "/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-stamp/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-gitclone-lastrun.txt'")
endif()
