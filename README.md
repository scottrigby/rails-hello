# Rails Hello demo

## Ruby version
2.3.8 (as a project-specific test, for no other good reason in 2019)

## System dependencies
- Docker
- [kind](https://kind.sigs.k8s.io/)

## Configuration
Currently no config. This runs through step 4 in [Getting Started With Rails](https://guides.rubyonrails.org/getting_started.html).

## Database creation
Currently includes sqlite, but no schema defined yet.

## Database initialization
N/A

## How to run the test suite
```console
$ docker run -it --rm r6by/rails-hello:0.1.0 bundle exec rake test
```

## Services (job queues, cache servers, search engines, etc.)
N/A

## Deployment instructions

### Docker
- `docker run -itP r6by/rails-hello:0.1.0`
- `curl localhost:3000`

### K8S
- Create kind cluster
- Initialize Helm (and wait for Tiller to be running in your kind cluster)
- `helm install --name=my-release helm/rails-hello/ --wait`
- Follow the terminal instructions
    For example, if your `service.type` is `ClusterIP`, you will see a pot-forward command to run. Running will display the dynamically allocated port being forwarded to, like:
    ```console
    $ kubectl port-forward svc/my-release-rails-hello 0:80
    Forwarding from 127.0.0.1:56652 -> 3000
    Forwarding from [::1]:56652 -> 3000
    ```
- Test your localhost, for example:
    ```console
    $ curl -s 127.0.0.1:56746 | grep Rails!
    <h1>Hello, Rails!</h1>
    ```
