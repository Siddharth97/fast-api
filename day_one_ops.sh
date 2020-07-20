
#Day1 scripts for 1 backend deployment
kubectl scale deployment/backend --replicas=2
kubectl rollout status deployment/backend   #have to deploy the scaled replica
kubectl autoscale deployment/backend --min=2 --max=10 --cpu-percent=80

#expose services in cluster
kubectl expose deployment/backend --port=80 --target-port=8000
kubectl expose deployment/pgadmin --port=5050 --target-port=5050
kubectl expose deployment/queue --port=8888 --target-port=8888
kubectl expose deployment/db --port=8888 --target-port=8888
kubectl expose deployment/celeryworker --port=8888 --target-port=8888
kubectl expose deployment/proxy --port=8090 --target-port=8080
kubectl expose deployment/flower --port=5555 --target-port=5555
