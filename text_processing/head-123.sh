#commands processing text file

#print first 20 lines
head -n20 <input-txt>
sed -n '1,20 p'
awk 'NR < 20 ' OR awk 'NR==1,NR==20'

#print first 20 characters 
head -c20 <input-txt>

#print 'n-20' lines from beginning
head -n-20 <input-txt>

#range of lines
sed -n '12,20 p' <input-txt>
awk 'NR==12,NR==20' <input-txt>

