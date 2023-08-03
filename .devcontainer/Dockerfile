FROM mcr.microsoft.com/devcontainers/go:0-1.20-bullseye

ARG TARGETOS
ARG TARGETARCH

# Install Kind
RUN curl -L -o kind "https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-${TARGETARCH}" && install -c -m 0755 kind /usr/local/bin

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/${TARGETARCH}/kubectl && chmod +x ./kubectl && mv ./kubectl /usr/local/bin

# Install helm
RUN bash -c "curl -s https://get.helm.sh/helm-v3.12.2-linux-${TARGETARCH}.tar.gz > helm3.tar.gz" && tar -zxvf helm3.tar.gz linux-${TARGETARCH}/helm && chmod +x linux-${TARGETARCH}/helm && mv linux-${TARGETARCH}/helm /usr/local/bin && rm helm3.tar.gz && rm -R linux-${TARGETARCH}

# Install kubebuilder
RUN curl -L -o kubebuilder "https://go.kubebuilder.io/dl/latest/$(go env GOOS)/$(go env GOARCH)" && chmod +x kubebuilder && mv kubebuilder /usr/local/bin/

# Install bash-complete to make kubectl autocomplete work
RUN apt-get update && apt-get install bash-completion -y && rm -rf /var/lib/apt/lists/*
