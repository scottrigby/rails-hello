# Rails Hello demo

## Ruby version
2.3.8 (as a project-specific test, for no other good reason in 2019)

## System dependencies
- Docker
- [kind](https://kind.sigs.k8s.io/)

## Configuration
Currently no config. This runs through step 4 in [Getting Started With Rails](https://guides.rubyonrails.org/getting_started.html).

## Database creation
Currently no database, uses sqlite.

## Database initialization
N/A

## How to run the test suite
docker run -it --rm r6by/rails-hello:0.1.0 bundle exec rake test

## Services (job queues, cache servers, search engines, etc.)
N/A

## Deployment instructions

### Docker
- `docker run -itP r6by/rails-hello:0.1.0`
- `curl localhost:3000`

### K8S
- Create kind cluster
- `kubectl run rails-hello --image=r6by/rails-hello:0.1.0 --port 3000`
- `kubectl port-forward deployment/rails-hello 3000:3000`
- `curl localhost:3000`
- Helm chart forthcoming

## ...
