read -p "Enter name: " name
adduser --disabled-password $name

mkdir /home/$name/.ssh
chmod 700 /home/$name/.ssh
chown $name:$name /home/$name/.ssh

cd /home/$name/.ssh
touch authorized_keys
chmod 400 authorized_keys
chown $name:$name authorized_keys

read -p "Enter public key: " pubkey
echo $pubkey > authorized_keys

echo 'Done!'