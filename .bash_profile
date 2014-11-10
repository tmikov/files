PATH="/usr/local/bin:$PATH"
[ -x /usr/bin/git ] && PATH=$PATH:`git --exec-path`

. $HOME/.bashrc

