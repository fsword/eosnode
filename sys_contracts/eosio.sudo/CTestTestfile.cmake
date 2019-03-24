# CMake generated Testfile for 
# Source directory: /eos/contracts/eosio.sudo
# Build directory: /tmp/build/contracts/eosio.sudo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_eosio.sudo_abi "/tmp/build/scripts/abi_is_json.py" "/eos/contracts/eosio.sudo/eosio.sudo.abi")
