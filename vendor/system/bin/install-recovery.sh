#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9781248:a7b64ab28fbd30d464b80ea4398f5f7e0ce5bdd4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9064448:98295c341828085ec8722608a27a112ea9057ece EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery a7b64ab28fbd30d464b80ea4398f5f7e0ce5bdd4 9781248 98295c341828085ec8722608a27a112ea9057ece:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
