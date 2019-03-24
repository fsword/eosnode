# Install script for directory: /eos/contracts

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/tmp/build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/tmp/build/contracts/eosiolib/cmake_install.cmake")
  include("/tmp/build/contracts/musl/cmake_install.cmake")
  include("/tmp/build/contracts/libc++/cmake_install.cmake")
  include("/tmp/build/contracts/eosio.token/cmake_install.cmake")
  include("/tmp/build/contracts/eosio.msig/cmake_install.cmake")
  include("/tmp/build/contracts/eosio.sudo/cmake_install.cmake")
  include("/tmp/build/contracts/multi_index_test/cmake_install.cmake")
  include("/tmp/build/contracts/snapshot_test/cmake_install.cmake")
  include("/tmp/build/contracts/eosio.system/cmake_install.cmake")
  include("/tmp/build/contracts/identity/cmake_install.cmake")
  include("/tmp/build/contracts/stltest/cmake_install.cmake")
  include("/tmp/build/contracts/test.inline/cmake_install.cmake")
  include("/tmp/build/contracts/hello/cmake_install.cmake")
  include("/tmp/build/contracts/asserter/cmake_install.cmake")
  include("/tmp/build/contracts/proxy/cmake_install.cmake")
  include("/tmp/build/contracts/test_api/cmake_install.cmake")
  include("/tmp/build/contracts/test_api_mem/cmake_install.cmake")
  include("/tmp/build/contracts/test_api_db/cmake_install.cmake")
  include("/tmp/build/contracts/test_api_multi_index/cmake_install.cmake")
  include("/tmp/build/contracts/test_ram_limit/cmake_install.cmake")
  include("/tmp/build/contracts/eosio.bios/cmake_install.cmake")
  include("/tmp/build/contracts/noop/cmake_install.cmake")
  include("/tmp/build/contracts/tic_tac_toe/cmake_install.cmake")
  include("/tmp/build/contracts/payloadless/cmake_install.cmake")
  include("/tmp/build/contracts/integration_test/cmake_install.cmake")

endif()

