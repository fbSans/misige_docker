@echo off
setlocal
rem Docker file ainda esta na fase inicial

rem No caso de usar linux, basta copiar os comandos docker abaixo no bash script
NAME=misige
docker stop %NAME% 
docker rm %NAME%
docker build -t="%$NAME%" .  && docker run -t -i -h %NAME% -p 2024:80 --name="%NAME% %NAME%


endlocal
@echo on