
#Agregar usuario sebastian al grupo sudo

sudo usermod -aG sudo sebastian

#Crear archivo custom de sudoers, para agregar permisos a los comandos que se ejecutarán al inicio mediante sudo

sudo visudo -f /etc/sudoers.d/customizations

# Y agregar las siguientes lineas

%sudo   ALL=(ALL)       NOPASSWD:/bin/systemctl restart nvargus-daemon
%sudo   ALL=(ALL)       NOPASSWD:/usr/sbin/nvpmodel -m 0
%sudo   ALL=(ALL)       NOPASSWD:/usr/bin/jetson_clocks

#sebastian       ALL=(ALL)       NOPASSWD:/bin/systemctl restart nvargus-daemon,/usr/sbin/nvpmodel -m 0,/usr/bin/jets$


