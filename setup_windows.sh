
# https://github.com/boostorg/hana/wiki/Setting-up-Clang-on-Windows

mkdir build_msvc

cd build_msvc
cmake ../src -G"Visual Studio 14 2015 Win64"
cd ..

# add clang (http://article.gmane.org/gmane.comp.programming.tools.cmake.devel/15902)
mkdir build_clang

cd build_clang
cmake ../src  -T"v140_clang_3_7" -G"Visual Studio 14 2015 Win64"
cd ..

# add llvm
mkdir build_llvm

cd build_llvm
cmake ../src -TLLVM-vs2014 -G"Visual Studio 14 2015 Win64"
cd ..

# add icc
mkdir build_icc

cd build_icc
cmake ../src -T"Intel C++ Compiler 16.0" -G"Visual Studio 14 2015 Win64"  -DCMAKE_CXX_FLAGS="/Qwd3373,2102 /D__is_assignable=__is_trivially_assignable"
cd ..
