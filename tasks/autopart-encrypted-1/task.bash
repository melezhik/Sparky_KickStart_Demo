lsblk

blkid --match-token TYPE="crypto_LUKS" --output device && echo "LUKS device found"

crypted="$(blkid --match-token TYPE="crypto_LUKS" --output device)"

echo -n "test1 "

lsblk ${crypted} --output mountpoint

echo "passphrase" | cryptsetup luksOpen --test-passphrase "${crypted}" && \
echo "can open crypted with the passphrase"

:

