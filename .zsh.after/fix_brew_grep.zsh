if [ -d "$(brew --prefix)/opt/grep/libexec/gnubin" ]; then
      PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
fi
