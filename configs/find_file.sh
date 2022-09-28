for i in $(find . -type f | rev | cut -d '/' -f 1 | rev); do
  echo "==> Check $i"
  find_out=$(find /data/LineageOS/rootfs_61.1.A.11.36/vendor -name $i)
  if [[ ! -n $find_out ]];  then
    echo "!! $i Not found"
  else
    echo "<== $i exists: $find_out"
  fi
done
