# https://docs.gitlab.com/runner/install/docker.html

# update configuration:
# docker restart gitlab-runner

# upgrade version:
# docker pull gitlab/gitlab-runner:latest

# reading logs:
# docker logs gitlab-runner

# stop and remove the existing container:
# docker stop gitlab-runner && docker rm gitlab-runner

# start the container:
# docker run -d --name gitlab-runner --restart always \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   -v /Users/Shared/gitlab-runner/config:/etc/gitlab-runner \
#   gitlab/gitlab-runner:latest

alias glr='docker run --rm -it gitlab/gitlab-runner'

