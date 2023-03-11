if hash brew 2>/dev/null; then
  if [ -d "$(brew --prefix)/opt/grep/libexec/gnubin" ]; then
    PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
  fi
else
  exit 0
fi
