#commands 

#last 20 lines
tail -n20 <input.txt> 
#using sed
n=`wc -l /etc/passwd | cut -d' ' -f1`
u=`expr $n - 20`
sed -n "$u,$n p" /etc/passwd == sed -n "$u,$ p" /etc/passwd
awk 'NR=="$u",NR=="$n"' /etc/passwd

#last 20 characters [its reads from right-left]
tail -c 20 
tail -n1 | head -c20 #[to read characters from right to left]

