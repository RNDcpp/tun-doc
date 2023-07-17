count=$( grep -cE '^[^,]+,F' $1 )
echo "$(( RANDOM % $count + 1 ))p"
