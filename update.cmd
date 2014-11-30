:: check and change branch
@for /f %%i in ('git rev-parse --abbrev-ref HEAD') do @set CURBR=%%i
@if "%CURBR%" == "OuterHeaven" GOTO UPDATE

@git checkout OuterHeaven

@for /f %%i in ('git rev-parse --abbrev-ref HEAD') do @set CURBR=%%i
@if NOT "%CURBR%" == "OuterHeaven" GOTO END

:UPDATE
:: update OuterHeaven branch
::@git pull --rebase origin OuterHeaven

:: update blender and its submodules
::@git submodule foreach git pull --rebase origin master
::@git submodule foreach git submodule foreach git pull --rebase origin master

:: update svn win64_vc12
::@svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/win64_vc12  lib/win64_vc12

:: update svn windows
::@svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/windows  lib/windows

@git add --all
@git commit -m "Automatic Blender Update (%DATE%)"
:: @git push

@git checkout master
@git merge OuterHeaven

@echo ">>> Blender is now up to date. Fix possible merge conflicts, then run make.cmd"
@goto:eof 

:END
@echo ">>> Couldn't update master branch."