

FZF_CTRL_R_COMMAND=source <(fzf --zsh)
eval "$(devbox global shellenv)"
typeset -A DESCRIPTION
(){
  ary=();
    function reset-exe-execservice(){
      if [ -z "`cat /usr/lib/binfmt.d/WSLInterop.conf|grep ':WSLInterop:M::MZ::/init:PF'`" ]; then
        echo ":WSLInterop:M::MZ::/init:PF" | sudo tee /usr/lib/binfmt.d/WSLInterop.conf
      fi
      sudo systemctl restart systemd-binfmt;
      if [ $? -ne 0 ]; then
        sudo systemctl unmask systemd-binfmt.service
        sudo systemctl reset systemd-binfmt
        sudo systemctl mask systemd-binfmt.service
      fi
    }
  ary+="reset-exe-execservice"
  DESCRIPTION[misc-function]+=$ary
  unset ary
}
for key in ${(k)DESCRIPTION}; do
  echo $key
  for f in `echo $DESCRIPTION[$key]|sed 's/ /\n/g'`; do
    echo "\t$f";
  done
done
unset DESCRIPTION

alias ii="explorer.exe"

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

export EDITOR=/usr/local/bin/nvim
