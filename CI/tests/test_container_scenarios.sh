set -xo pipefail

source CI/tests/common.sh

command="docker"
#command=$(command_to_run)
#echo "final $command"
#if [ "$command" == "" ]
#then
#  echo "please install podman or docker before continuing"
#  exit 1
#fi

function functional_test_container_scenarios {
  export WAIT_DURATION=5
  export RETRY_WAIT=5
  container_name="container_scenario_test"
  . ./get_docker_params.sh
  $command-compose build container-scenarios
  image_id=$($command images --all --format "{{.ID}}" | head -n 1)
  $command run --name=$container_name --net=host $PARAMS -v $KUBECONFIG:/root/.kube/config:Z -d $image_id
  $command logs -f $container_name
  get_exit_code $command $container_name
  final_get_exit_code=$?
  echo "exit code: $final_get_exit_code"
  $command rm -f $container_name
  $command rmi -f $image_id
  exit $final_get_exit_code
}

functional_test_container_scenarios