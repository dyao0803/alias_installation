#!/bin/bash

# add array value based on alias/<filename>.txt
to_installs=(capistrano rails git system)
> alias.txt
for i in ${to_installs[*]}
do
  echo """
================
$i
================
  """ >> alias.txt
  cat alias/"$i".txt >> alias.txt
done

cp alias.txt .alias

mv .alias $HOME
cd $HOME
grep -qxF 'source "$HOME/.alias"' .profile || echo 'source "$HOME/.alias"' >> .profile

echo "Done. Restart terminal"
