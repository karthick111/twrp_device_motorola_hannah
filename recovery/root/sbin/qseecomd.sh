#!/sbin/sh

chmod 0660 /dev/qseecom
chown system drmrpc /dev/qseecom
chmod 0664 /dev/ion
chown system system /dev/ion

/sbin/qseecomd
