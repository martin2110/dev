#! /bin/zsh -i

sh -c "cd ${HOME}/mycode/dotfiles && git pull"
sh -c "cd ${HOME}/mycode/oh-my-zsh-custom && git pull"

cd ${HOME}

tmux new -s ${HOSTNAME} -n 'emacs' -d emacs
tmux new-window -d
tmux new-window -d
exec tmux attach -t ${HOSTNAME}