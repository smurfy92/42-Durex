make 1>&- 2>&-
gcc srcs/durex.c -o /bin/Durex libft/libft.a
gcc srcs/shell.c -o /bin/shell
cp service/Durex.service /etc/systemd/system/Durex.service
# ln -sf ../init.d/Durex /etc/rcS.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc6.d/K01Durex
# ln -sf ../init.d/Durex /etc/rc5.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc4.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc3.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc2.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc1.d/K01Durex
# ln -sf ../init.l/Durex /etc/rc0.d/K01Durex
systemctl daemon-reload
systemctl enable Durex.service
systemctl start Durex.service
