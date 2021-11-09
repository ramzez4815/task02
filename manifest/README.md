Kubernetes Manifest Files

# Usage

- `kubectl apply -f XXXX.yaml`  to create/update resource.
- `kubectl delete all --all`  to delete all resources.

### Deploy order

- kubectl apply -f ghost.yaml
- kubectl apply -f ghost-svc.yaml
- kubectl apply -f nginx.yaml
- kubectl apply -f nginx-svc.yaml
- kubectl apply -f ingress.yaml