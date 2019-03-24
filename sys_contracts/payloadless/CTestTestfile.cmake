# CMake generated Testfile for 
# Source directory: /eos/contracts/payloadless
# Build directory: /tmp/build/contracts/payloadless
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_payloadless_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/payloadless/payloadless.abi")
