name="$1"
extension=".txt"
name=${name%$extension}
hour=$(date +%H)
lower=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
upper=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
name=$(echo $name | tr "${lower:0:26}" "${lower:$hour:26}" | tr "${upper:0:26}" "${upper:$hour:26}")
name="$name$extension"
mv $1 $name
