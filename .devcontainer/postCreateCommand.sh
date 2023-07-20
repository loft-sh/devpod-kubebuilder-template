mkdir -p $HOME/.kube
kubectl completion bash > /home/vscode/.kube/completion.bash.inc
printf "
source $HOME/.kube/completion.bash.inc
alias k=kubectl
complete -F __start_kubectl k
" >> $HOME/.bashrc

printf "
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k
" >> $HOME/.zshrc

kind create cluster || true
