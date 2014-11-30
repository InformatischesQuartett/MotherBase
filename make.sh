# update branch
git pull

# update blender and its submodules
git submodule update --init --recursive

# update svn win64_vc12
svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/win64_vc12  lib/win64_vc12

# update blender
./update1.sh
./update2.sh

# run cmake
cd cbuild
../cmake/bin/cmake.exe ../blender -G "Visual Studio 12 Win64" -DWITH_CYCLES_OSL=False -DWITH_PYTHON_INSTALL_NUMPY=False
cd ..