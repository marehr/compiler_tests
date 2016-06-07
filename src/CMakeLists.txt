cmake_minimum_required(VERSION 3.0)
project(hello CXX)

# add the executable
add_executable(test_packed test_packed.cpp)
add_executable(test_pragma test_pragma.cpp)
add_executable(test_builtin_ctzll test_builtin_ctzll.cpp)
