sensors | grep junction | awk '{gsub(/\+/, "", $2); print $2}'
