echo "TEST"
eval $(s6 --plg-run --inline redhat-version)
echo $rh_version
echo $rh_version_major
echo $rh_version_minor
