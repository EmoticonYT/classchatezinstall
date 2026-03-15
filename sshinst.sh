echo "Installing SSH and hosting... note this may take a while!"
sudo apt update
sudo apt install openssh-server
chmod -R 777 /home/$USER
sudo useradd -m -s /bin/bash ssh
echo "ssh:Beluga" | sudo chpasswd
zrok reserve public --unique-name matthewsshfordorian1234 --backend-mode tcp localhost:22
sudo systemctl start ssh &
zrok share reserved matthewsshfordorian1234 &
echo "SSH is installed!"
