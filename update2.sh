cd blender

# update blender's submodules
git submodule foreach --recursive git pull --rebase origin master

git add --all
git commit -m "Automatic Blender Update ($(date +"%d.%m.%Y"))"
git push

# update repo
cd ..

git add --all
git commit -m "Automatic Blender Update ($(date +"%d.%m.%Y"))"
git push