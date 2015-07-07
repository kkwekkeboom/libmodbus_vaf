test=`cat /etc/ld.so.conf | grep /usr/local/lib`; 
if [ "$test" == "" ]; 
then 
	echo /usr/local/lib >> /etc/ld.so.conf; 
fi; 
mkdir m4 &&
./autogen.sh && 
./configure && 
make && 
make install &&
ldconfig
