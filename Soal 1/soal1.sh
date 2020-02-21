awk -F '\t' 'NR == 2 { west=0; east=0; south=0; central=0} 
                $13 ~ /Central/ {central +=$21}; 
                $13 ~ /West/ {west +=$21}; 
                $13 ~ /South/ {south +=$21}; 
                $13 ~ /East/ {east +=$21} 
                END { 
                min = 10000000;
                if( west < min){ min = west; word="West"};
                if( east < min){ min = east; word="East"};
                if( south < min){ min = south; word="South"}
                if( central < min){ min = central; word="Central"}
                print "1.a"; print word; printf("\n")}' Sample-Superstore.tsv
awk -F '\t' 'NR == 2 { texas=0; wisconsin=0; nebraska=0; illinois=0; minnesota=0; michigan=0; indiana=0; iowa=0; missouri=0; oklahoma=0; s_dakota=0; kansas=0; n_dakota=0;}
                 $11 ~ /Texas/ {texas +=$21};
                 $11 ~ /Wisconsin/ {wisconsin +=$21};
                 $11 ~ /Nebraska/ {nebraska +=$21};
                 $11 ~ /Illinois/ {illinois +=$21};
                 $11 ~ /Minnesota/ {minnesota +=$21};
                 $11 ~ /Michigan/ {michigan +=$21};
                 $11 ~ /Indiana/ {indiana +=$21};
                 $11 ~ /Iowa/ {iowa +=$21};
                 $11 ~ /Missouri/ {missouri +=$21};
                 $11 ~ /Oklahoma/ {oklahoma +=$21};
                 $11 ~ /South Dakota/ {s_dakota +=$21};
                 $11 ~ /Kansas/ {kansas +=$21};
                 $11 ~ /North Dakota/ {n_dakota +=$21};
		 END {
                 i=1;
                 min1 = 10000000;
                 min2 = 0;
                 if( nebraska < min1){ min2 = min1; min1 = nebraska; arr[i]="Nebraska"; i +=1};
                 if( wisconsin < min1){ min2 = min1; min1 = wisconsin; arr[i]="Winconsin"; arr[i-1]="Nebraska"}; 
                 if( illinois < min1){ min2 = min1; min1= illinois ;arr[i]="Illinois"; arr[i-1]= "Winconsin"};
                 if( texas < min1){ min2 = min1; min1= texas; arr[i]="Texas"; arr[i-1]= "Illinois"};
                 if( minnesota < min1){ min2 = min1; min1 = minnesota; min2 = min1; arr[i]="Minnesota"; arr[i-1]="Texas"};
                 if( michigan < min1){ min2 = min1; min1 = michigan; min2 = min1; arr[i]="Michigan"; arr[i-1]="Minnesota"};
                 if( indiana < min1){ min2 = min1; min1 = indiana; min2 = min1; arr[i]="Indiana"; arr[i-1]="Michigan"};
                 if( iowa < min1){ min2 = min1; min1 = iowa; min2 = min1; arr[i]"Iowa"; arr[i-1]= "Indiana"};
                 if( missouri < min1){ min2 = min1; min1 = missouri; min2 = min1; arr[i]="Missouri"; arr[i-1]="Iowa"};
                 if( oklahoma < min1){ min2 = min1; min1 = oklahoma; min2 = min1; arr[i]="Oklahoma"; arr[i-1]="Missouri"};
                 if( s_dakota < min1){ min2 = min1; min1 = s_dakota; min2 = min1; arr[i]="South Dakota"; arr[i-1]="Oklahoma"};
                 if( kansas < min1){ min2 = min1; min1 = kansas; min2 = min1; arr[i]="Kansas"; arr[i-1]="South Dakota"};
                 if( n_dakota < min1){ min2 = min1; min1 = n_dakota; min2 = min1; arr[i]="North Dakota"; arr[i-1]="Kansas"};
                 print "1.b."; print arr[i];print arr[i-1]; printf("\n")}' Sample-Superstore.tsv


