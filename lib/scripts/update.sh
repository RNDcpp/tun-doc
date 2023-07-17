update_target=$( lib/scripts/get-update-target.sh $1 )
update_target_file=$( lib/scripts/get-update-file.sh $1 )
update_target_actual=$( echo $update_target | sed -r 's/^[^,]+,//g' )
updated=$( echo $update_target_actual | sed -r 's/^F/T/' )
sed -r "s|${update_target_actual}|${updated}|" $update_target_file > ${update_target_file}.new
rm $update_target_file
mv ${update_target_file}.new $update_target_file
