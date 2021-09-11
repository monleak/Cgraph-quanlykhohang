# Install script for directory: /home/monleak/testCK-C-Advanced/cgraph/ctc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bkc/ctc" TYPE FILE FILES
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/array.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/common.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/deque.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/hashset.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/hashtable.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/list.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/pqueue.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/queue.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/ring_buffer.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/slist.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/stack.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/treeset.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/treetable.h"
    "/home/monleak/testCK-C-Advanced/cgraph/ctc/tsttable.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bkc/ctc/my" TYPE FILE FILES "/home/monleak/testCK-C-Advanced/cgraph/ctc/my/hsi.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/monleak/testCK-C-Advanced/b/cgraph/ctc/libcollectc.a")
endif()

