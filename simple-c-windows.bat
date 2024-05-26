@echo off
set workdir=%cd%
set image=thespych/simple-c

if not exist %workdir% md %workdir%

docker image inspect "$image" > nul 2>&1 || docker pull %image%
if "%1"=="--pull" docker pull %image%

docker run -it --rm --mount "type=bind,src=%workdir%,dst=/home/student/workdir" %image%