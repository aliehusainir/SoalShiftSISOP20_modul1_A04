nums=($(awk -f dupes.awk location.log))
size=${#nums[@]}
for ((i=0; i<$size; i=i+1))
do
  mv -f Downloads/pdkt_kusuma_${nums[i]} $HOME/duplicate/duplicate_$i
done
k=1
for i in Downloads/pdkt_kusuma_*
do
  mv $i $HOME/kenangan/kenangan_$k
  ((k=k+1))
done
