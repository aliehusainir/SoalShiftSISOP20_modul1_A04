( a=({a..z} {A..Z} {0..9})
for ((k=0; k<28; k=k+1))
do
  b=$(( RANDOM % 62 ))
  printf "%s" ${a[b]}
done
) > $1.txt
