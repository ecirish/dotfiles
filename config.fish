alias vi="vim"
alias ls="ls -laX --color"
alias dev="cd ~/Development"

setenv JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
setenv SSH_ENV $HOME/.ssh/environment
set PATH (yarn global bin) $JAVA_HOME/bin ~/.local/bin /usr/local/go/bin $PATH

if test -e ~/.config/fish/env.fish
  . ~/.config/fish/env.fish
end
