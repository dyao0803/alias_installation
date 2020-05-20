touch .alias
rm .alias
cp alias.txt .alias
mv .alias $HOME
cd $HOME
grep -qxF 'source "$HOME/.alias"' .profile || echo 'source "$HOME/.alias"' >> .profile

echo "Done. Restart terminal"
