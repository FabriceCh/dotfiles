sensors | grep Tctl | awk '{gsub(/\+/, "", $2); print " "$2}'
