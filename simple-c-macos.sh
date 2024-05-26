set -e
workdir=$(pwd)
image=thespych/simple-c

mkdir -p "$workdir"

if [[ $1 = --pull ]] || ! docker image inspect "$image" &>/dev/null; then
    docker pull "$image"
fi

exec docker run -it --rm -v "$workdir:/home/student/workdir" "$image"