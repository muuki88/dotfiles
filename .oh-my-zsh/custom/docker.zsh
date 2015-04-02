alias docker-rm-containers="docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs --no-run-if-empty docker rm"
alias docker-rm-images="docker images --no-trunc | grep none | awk '{print $3}' | xargs docker rmi"
