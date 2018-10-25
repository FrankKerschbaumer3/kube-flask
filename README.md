** Steps for Deploying the App
1. Start minikube using `minikube start`.
2. After minkube has started use `eval $(minkube docker-env)` to use the docker environment in minikube.
3. Then to create the seperate docker images for the seperate environments use the commands 
  *`docker build -t dev .`
  *`docker build -t qa .`
  *`docker build -t prod .`
4. Then to create the corresponding kubernetes deployments and services use
  *`kubectl apply -f devdeploy.yml`
  *`kubectl apply -f qadeploy.yml`
  *`kubectl apply -f proddeploy.yml`

If done correctly you can use `minkube service dev-app`, `minkube service qa-app` and `minkube service prod-app` to go directly to each corresponding environment.

When done you can use `minikube delete` to remove the minikube environment from you computer.