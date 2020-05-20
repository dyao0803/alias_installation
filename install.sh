touch .alias
rm .alias
cp alias.txt .alias
mv .alias $HOME
grep -qxF 'source "$HOME/.alias"' .profile || echo 'source "$HOME/.alias"' >> .profile
source .profile
