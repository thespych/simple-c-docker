@echo off
set image=thespych/simple-c

docker image inspect "$image" > nul 2>&1 || docker pull %image%
if "%1"=="--pull" docker pull %image%

docker run -it --rm --mount "type=bind,src=%cd%,dst=/home/user/workspace" %image%

rem Alternatively, if the image is already installed locally, you can just run:
rem docker run -it --rm --mount "type=bind,src=%cd%,dst=/home/user/workspace" thespych/simple-c
