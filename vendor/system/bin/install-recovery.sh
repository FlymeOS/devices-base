#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9863168:d160527ad248bcba9ed566ddb20692aaf485da0e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9129984:de0969a49553afdbfd2d50a67f7b8e0dcb04219a EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d160527ad248bcba9ed566ddb20692aaf485da0e 9863168 de0969a49553afdbfd2d50a67f7b8e0dcb04219a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
