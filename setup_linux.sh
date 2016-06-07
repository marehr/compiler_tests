# add clang 
mkdir build_clang

cd build_clang
cmake ../src -DCMAKE_CXX_COMPILER=$(which clang++)
cd ..

# add icc
mkdir build_icc

cd build_icc
cmake ../src -DCMAKE_CXX_COMPILER=$(which icpc)
cd ..


# add gcc
mkdir build_gcc

cd build_gcc
cmake ../src -DCMAKE_CXX_COMPILER=$(which g++)
cd ..

