# Docker Notes

## Docker Commands

### List Images

Command: docker ps -a

### List Containers

Command: docker container ls [options]
--all , -a Show all containers (default shows just running)
--filter , -f Filter output based on conditions provided
--format Pretty-print containers using a Go template
--last , -n -1 Show n last created containers (includes all states)
--latest , -l Show the latest created container (includes all states)
--no-trunc Don't truncate output
--quiet , -q Only display container IDs
--size , -s Display total file sizes

### Remove Image

docker rmi <image name>

### Remove Container

docker rm <container number>

### Stop

### Run

docker run -v $(pwd):/app:ro -v /app/node_modules --env PORT=5000 -p 3000:5000 -d --name node-app node-app-image
