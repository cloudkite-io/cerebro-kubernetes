# cerebro docker and kubernetes helm chart

See [Cerebro](https://github.com/lmenezes/cerebro), a replacement for kopf, for Elasticsearch.

Public Docker repo: gcr.io/cloudkite-public/cerebro

### Environment variables

  * *PORT* - Port to listen on. Defaults to 9000.
  * *BIND_HOST* - IP to bind. Defaults to 0.0.0.0 (bind to all interfaces inside container)
  * *CONFIG_PATH* - If you choose to mount another configuration file to predefine ES clusters, auth, etc.


### Helm Deployment
See the `helm` dir for k8s deployment using helm.


### Help
[cloudkite.io](https://cloudkite.io) is here to help. Reach out at any time: gofast@cloudkite.io.
