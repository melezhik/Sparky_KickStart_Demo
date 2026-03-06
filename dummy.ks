# Use text mode
text
poweroff
# Use network installation
url --mirrorlist=https://mirrors.rockylinux.org/mirrorlist?arch=$basearch&repo=BaseOS-$releasever
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8
# Network information
network --bootproto=dhcp --device=link --activate
# Root password (use a stronger, hashed password in production)
rootpw --plaintext password123 --allow-ssh
# Run the Setup Agent on first boot
firstboot --disable
firewall --enabled --ssh
# Do not configure the X Window System
skipx
# System timezone
timezone America/New_York --utc
# Partition clearing information
clearpart --all --initlabel
# Disk partitioning information
autopart --type=plain
# Reboot after installation
#reboot

%packages
@^minimal-environment
%end
