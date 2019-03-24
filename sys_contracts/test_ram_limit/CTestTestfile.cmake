# CMake generated Testfile for 
# Source directory: /eos/contracts/test_ram_limit
# Build directory: /tmp/build/contracts/test_ram_limit
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_test_ram_limit_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/test_ram_limit/test_ram_limit.abi")
