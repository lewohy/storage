sudo apt update -y
sudo apt install -y openssh-server
sudo sed -in -e 's/^.*PasswordAuthentication.\+$/PasswordAuthentication yes/g' /etc/ssh/sshd_config
