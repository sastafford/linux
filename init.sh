cp /etc/inittab /etc/inittab.bak
sed -i 's/id:5:initdefault:/id:3:initdefault:/' /etc/inittab 


