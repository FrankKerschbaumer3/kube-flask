**Steps for Deploying the App**
1. Start minikube using `minikube start`.
2. After minkube has started use `eval $(minikube docker-env)` to use the docker environment in minikube.
3. Make sure you are in the main git directory and then to create the seperate docker images for the seperate      environments use the commands 
  *`docker build -t dev .`
  *`docker build -t qa .`
  *`docker build -t prod .`
4. Then to create the corresponding kubernetes deployments and services navigate to the `/kubernetes-yml` directory and then use
  *`kubectl apply -f devdeploy.yml`
  *`kubectl apply -f qadeploy.yml`
  *`kubectl apply -f proddeploy.yml`

If done correctly you can use *`minkube service dev-app`, *`minkube service qa-app` and *`minkube service prod-app` to go directly to each corresponding environment.

If you would like to test using nginx as an ingress and test the application using artillery.

1. Navigate to the `/kubernetes-yml` and run the hosts.sh using *`sudo sh hosts.sh add` which will add *`192.168.99.100    dev.kube` to your hosts file which will allow local domain resolution to the IP of Minikube.
2. Next head to the `/kubernetes-yml` directory and run *`kubectl apply -f ingress.yml` which will create the nginx ingress.
3. Use *`kubectl get ingresses.extensions --watch` and when the ip address shows up you will be able to reach the app at `dev.kube/` using the nginx ingress.

If wanting to test the dev environment with artillery.

1. Navigate to the `/artillery` folder.
2. Run *`eval "$(docker-machine env -u)"` to switch the docker-env back your local machine.
3. Run *`docker build -t artillery .` and then *`docker run --rm artillery:latest`

When done you can use *`minikube delete` to remove the minikube environment from you computer and run *`sudo hosts.sh remove` to remove the 