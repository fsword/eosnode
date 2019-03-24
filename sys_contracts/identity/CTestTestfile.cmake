# CMake generated Testfile for 
# Source directory: /eos/contracts/identity
# Build directory: /tmp/build/contracts/identity
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_identity_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/identity/identity.abi")
subdirs("test")
