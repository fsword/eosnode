# CMake generated Testfile for 
# Source directory: /eos/contracts/noop
# Build directory: /tmp/build/contracts/noop
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_noop_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/noop/noop.abi")
