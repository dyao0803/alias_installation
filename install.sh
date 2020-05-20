touch .alias
rm .alias
cp alias.txt .alias
mv .alias $HOME
cd $HOME
grep -qxF 'source "$HOME/.alias"' .bash_profile || echo 'source "$HOME/.alias"' >> .bash_profile

echo "Done. Restart terminal"
