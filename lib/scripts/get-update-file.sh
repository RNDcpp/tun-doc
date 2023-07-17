update_target=$( lib/scripts/get-update-target.sh $1 )
echo $update_target | awk -F',' '{ print $1 }'
