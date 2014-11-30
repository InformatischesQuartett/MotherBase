cd blender

# update repository
git checkout master
git pull

# update blender
git remote add upstream git://git.blender.org/blender.git
git fetch upstream
git merge upstream/master

cd ..