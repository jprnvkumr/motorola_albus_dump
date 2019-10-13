#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21073920:f0cdfb3aa89f072bce819276c23090b319430985; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16777216:c4cff2272efb12b2378c06d2b189d0f07f9dbe23 EMMC:/dev/block/bootdevice/by-name/recovery f0cdfb3aa89f072bce819276c23090b319430985 21073920 c4cff2272efb12b2378c06d2b189d0f07f9dbe23:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
