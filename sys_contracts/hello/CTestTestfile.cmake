# CMake generated Testfile for 
# Source directory: /eos/contracts/hello
# Build directory: /tmp/build/contracts/hello
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_hello_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/hello/hello.abi")
