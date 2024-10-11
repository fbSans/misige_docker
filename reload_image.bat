@echo off
setlocal

set NAME=misige

echo %NAME%
docker stop %NAME% 
docker rm %NAME%
docker build -t="%NAME%" .  && docker run -t -i -h %NAME% -p 2024:80 --name="%NAME%" %NAME%
endlocal
@echo on