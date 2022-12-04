export PATH HOME TERM
PS1=$'\E[35m[\E[36m`date +%T`\E[35m] \E[32m$(logname)@\E[0m\E[31m$(hostname -s)\E[0m: $(pwd) $ \E[0m'
