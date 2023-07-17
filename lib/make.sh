row=$( lib/token/read-files.sh | lib/token/get-row-number.sh )
lib/scripts/get-update-file.sh $row
lib/scripts/get-update-title.sh $row
lib/scripts/update.sh $row
