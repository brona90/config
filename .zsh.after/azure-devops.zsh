function pullRepos() {
  cd ~/scratch/ORGS/BLIS
  ( for repo in $(curl -s -u fosterg:$imttappdev_token \
   https://dev.azure.com/IMTTAPPDEV/BLIS/_apis/git/repositories\?api-version\=5.0 \
   | jq -r '.value[] | .sshUrl')
  do
    name=$(echo $repo | sed 's:.*/::')
    if [ -d "$name" ]; then
      cd $name
      git pull &
      cd ..
    else
      git clone $repo &
    fi
  done )
}
