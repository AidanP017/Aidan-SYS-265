#secure-ssh.sh
#author AidanP017
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
sudo useradd -m -d /home/testuser -s /bin/bash testuser
sudo mkdir /home/testuser/.ssh
sudo cp /home/aidan/Aidan-SYS-265/SYS265/linux/public-keys/id_rsa.pub /home/testuser/.ssh/authorized_keys
sudo chmod 700 /home/testuser/.ssh
sudo chmod 600 /home/testuser/.ssh/authorized_keys
sudo chown -R testuser:testuser /home/testuser/.ssh
