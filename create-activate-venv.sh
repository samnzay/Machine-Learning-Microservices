python3 -m venv ~/.devops
source ~/.devops/bin/activate
. ~/.devops/bin/activate

make install
make lint

docker --version
minikube version -o yaml
