:: ENTER PATH WHERE THE script.py IS LOCATED.

cd C:\Users\nabil\Documents\workspace\ProjectCreationAutomation

::THIS IS WHERE MY PYTHON IS LOCATED
::C:\Users\nabil\AppData\Local\Programs\Python\Python37-32\Scripts\

python script.py %1 %2

:: ENTER PATH WHERE YOUR PROJECTS ARE SAVED
:: e.g. C:\Users\<USERNAME>\Documents\Projects
cd C:\Users\nabil\Documents\workspace\%1


git init

::ENTER YOUR GIT USERNAME
git remote rm origin
git remote add origin https://github.com/nabiloo19/%1.git

echo # %1 > README.md
git add .
git commit -m "initial commit"
git push -u origin master

:: OPENS VISUAL STUDIO CODE
code .