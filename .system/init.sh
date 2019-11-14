##################################################################
#                            Update
##################################################################

sudo dnf update -y
reboot

##################################################################
#              Get Steam and Nvidia Drivers working
##################################################################

sudo su -
dnf install -y fedora-workstation-repositories
dnf config-manager --set-enabled rpmfusion-nonfree-steam rpmfusion-nonfree-nvidia-driver
dnf install -y steam nvidia-driver
reboot

##################################################################
#                      Install Main Apps
##################################################################

# Various repositories

sudo su -
dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
dnf copr enable dani/qgis
rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm https://download.postgresql.org/pub/repos/yum/reporpms/F-31-x86_64/pgdg-fedora-repo-latest.noarch.rpm
dnf check-update

# Install dependencies used to compile/interact with user apps
dnf install -y bzip2  xz xz-devel openssl-devel readline-devel bzip2-devel sqlite sqlite-devel libffi-devel zlib-devel gcc gcc-c++ fuse-exfat git libcurl

# Install user apps
dnf install -y chromium krita micro chromium docker-ce qgis python3-qgis qgis-grass flash-plugin alsa-plugins-pulseaudio vlc  postgresql12 postgresql12-server postgis30_12

# Postgres
/usr/pgsql-12/bin/postgresql-12-setup initdb
# micro /var/lib/pgsql/12/data/postgresql.conf
# micro /var/lib/pgsql/12/data/pg_hba.conf
systemctl start postgresql-12.service
systemctl enable postgresql-12.service
psql -U postgres -d postgres

# Docker and Docker-Compose
systemctl enable docker
systemctl start docker
groupadd docker
usermod -aG docker $USER
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


# SSH
ssh-keygen -t rsa -b 4096 -C "dylan@neatmaps.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Track dotfiles
git init --bare $HOME/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no

reboot
