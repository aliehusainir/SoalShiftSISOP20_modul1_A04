name="$1"
extension=".txt"
name=${name%$extension}
hour=$(date +%H)
lower=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
upper=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
name=$(echo $name | tr "${lower:$hour:26}" "${lower:0:26}" | tr "${upper:$hour:26}" "${upper:0:26}")
name="$name$extension"
mv $1 $name
