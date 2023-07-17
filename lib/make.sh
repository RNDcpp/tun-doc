row=$( lib/token/read-files.sh | lib/token/get-row-number.sh )
title=$( lib/scripts/get-update-title.sh $row )
lib/scripts/update.sh $row
cat .github/TEMPLATE.md | sed -r "s|update-title|${title}|g"
