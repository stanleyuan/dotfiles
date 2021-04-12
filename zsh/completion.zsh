
# ln -sf ${HOME}/dotfiles/zsh/completion ${HOME}/.zsh/completion
# fpath=($fpath ${HOME}/.zsh/completion)
fpath=($fpath ${HOME}/dotfiles/zsh/completion)
autoload -U compinit
compinit


complete -o default -F __start_kubectl kubecolor
complete -o default -F __start_kubectl k


# sudo ln -s /home/shihtiy/Tools/kubectx/kubectx /usr/local/bin/kubectx
# sudo ln -s /home/shihtiy/Tools/kubens /usr/local/bin/kubens
# sudo ln -sf /home/shihtiy/Tools/kubectx/completion/kubens.zsh /home/shihtiy/.oh-my-zsh/completions/_kubens.zsh
# sudo ln -sf /home/shihtiy/Tools/kubectx/completion/kubectx.zsh /home/shihtiy/.oh-my-zsh/completions/_kubectx.zsh

# awless
if [ -f "$(which awless)" ]; then source <(awless completion zsh); fi

# kubectl
#if [ -f "$(which kubectl)" ]; then source <(kubectl completion zsh); fi

# minikube
#if [ -f "$(which minikube)" ]; then source <(minikube completion zsh); fi

# helm
#if [ -f "$(which helm)" ]; then source <(helm completion zsh); fi

# copilot
#if [ -f "$(which copilot)" ]; then source <(copilot completion zsh); fi

# eksctl
#if [ -f "$(which eksctl)" ]; then source <(eksctl completion zsh); fi
#

#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# https://github.com/zsh-users/antigen/issues/603
# source /usr/local/share/zsh/site-functions/_awless
