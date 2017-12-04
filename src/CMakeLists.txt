cmake_minimum_required(VERSION 3.0)
project(hello CXX)

# add the executable
add_executable(test_packed test_packed.cpp)
add_executable(test_pragma test_pragma.cpp)
add_executable(test_builtin_ctzll test_builtin_ctzll.cpp)

add_executable(test_auto_bug test_auto_bug.cpp)
add_executable(bug_default_initializer bug_default_initializer.cpp)
# require c++14
if (CMAKE_VERSION GREATER 3.1.0)
  set_property(TARGET test_auto_bug PROPERTY CXX_STANDARD 14)
  set_property(TARGET test_auto_bug PROPERTY CXX_STANDARD_REQUIRED ON)
else ()
  add_definitions(-std=c++14)
endif ()
