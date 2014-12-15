# update svn win64_vc12
svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/win64_vc12  lib/win64_vc12

# update blender
cd blender

# update repository
git checkout master
git pull

# update blender
git remote add upstream git://git.blender.org/blender.git
git fetch upstream
git merge upstream/master

cd ..