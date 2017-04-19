#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:13448426:5b266333a0fafc9ee0f1778b8213afe54cff3bf2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12494054:bb4894c6649e22e5f4b99ca4b865eb595428953d EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery 5b266333a0fafc9ee0f1778b8213afe54cff3bf2 13448426 bb4894c6649e22e5f4b99ca4b865eb595428953d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
