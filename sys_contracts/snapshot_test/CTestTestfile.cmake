# CMake generated Testfile for 
# Source directory: /eos/contracts/snapshot_test
# Build directory: /tmp/build/contracts/snapshot_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_snapshot_test_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/snapshot_test/snapshot_test.abi")
