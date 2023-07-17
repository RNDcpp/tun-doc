for file in $( ls .tun-doc/*.csv ); do
  awk '{ print FILENAME "," $0 }' $file
done
