# Create new user
echo -n "Enter the username: "
read username

echo -n "Enter the password: "
read -s password

useradd -m "$username" -p "$password" > /dev/null 2>&1

# Add ssh key
cd "/home/$username"
mkdir -p .ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB5ZogY6VJ3Xm2WUijyFjaZISxojsOFxKFTg4OpkaIdi me@" >> ".ssh/authorized_keys"
chmod 644 ".ssh/authorized_keys"
chown "$username" ".ssh/authorized_keys"

# Update sources
apt update

# Configure shell
apt install fish -y
usermod --shell "$(command -v fish)"  "$username"

# Install software 
apt install openjdk-17-jdk -y
apt install apache2 -y
apt install jetty9 -y
apt install maven -y

# Enable Jetty
systemctl start jetty9
systemctl enable jetty9

cd "/home/$username"
mkdir -p "src/"
