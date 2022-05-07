do_init () {
  touch ~/.only_for_init_run
  cd ~
}

if ! [ -f ~/.only_for_init_run ]; then
  echo "First time running."
  do_init
fi
