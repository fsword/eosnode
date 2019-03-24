# CMake generated Testfile for 
# Source directory: /eos/contracts/asserter
# Build directory: /tmp/build/contracts/asserter
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_asserter_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/asserter/asserter.abi")
