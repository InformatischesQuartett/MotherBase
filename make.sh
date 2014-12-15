# update branch
git pull

# update blender and its submodules
git submodule update --init --recursive

# update blender and svn
./update1.sh
./update2.sh

# run cmake
cd cbuild
../cmake/bin/cmake.exe ../blender -G "Visual Studio 12 2013 Win64"
cd ..