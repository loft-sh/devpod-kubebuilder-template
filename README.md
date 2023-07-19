# DevPod KubeBuilder Template

[![Open in DevPod!](https://devpod.sh/assets/open-in-devpod.svg)](https://devpod.sh/open#https://github.com/loft-sh/devpod-kubebuilder-template)

## Quickstart 

Either click on the 'Open in DevPod' link above or start via `devpod up github.com/loft-sh/devpod-kubebuilder-template`. This will start a small devcontainer that has all the needed tools to start working on a custom Kubernetes controller. It will also start a small KinD cluster within the devcontainer that can be used for development.

After successfully starting the devcontainer, you can create a new KubeBuilder project:
```
kubebuilder init --domain my.domain --repo my.domain/guestbook
```

Afterwards, you can follow the [KubeBuilder Quickstart](https://book.kubebuilder.io/quick-start.html#create-an-api) to create a new api. 
