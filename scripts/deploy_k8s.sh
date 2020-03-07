K8S_DEPLOYMENT_FOLDER=./udacity-c3-deployment/k8s

kubectl apply -f $K8S_DEPLOYMENT_FOLDER/aws-secret.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/env-configmap.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/env-secret.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/image-filter/backend-image-filter-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/restapi-feed/backend-feed-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/restapi-user/backend-user-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/reverseproxy/reverseproxy-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/frontend/frontend-deployment.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/image-filter/backend-image-filter-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/restapi-feed/backend-feed-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/restapi-user/backend-user-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/reverseproxy/reverseproxy-service.yaml
kubectl apply -f $K8S_DEPLOYMENT_FOLDER/frontend/frontend-service.yaml