echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Common Tree [1/6]'
# Samsung Exynos9611-Common Tree
rm -rf device/samsung/universal9611-common
git clone --depth=1 https://github.com/Exynos9611-Development/device_samsung_universal9611-common device/samsung/universal9611-common

echo 'Cloning M21 Vendor tree [2/6]'
# Device Vendor Tree
rm -rf vendor/samsung
git clone --depth=1 https://github.com/Exynos9611-Development/vendor_samsung_m21 vendor/samsung/m21

echo 'Cloning Common Vendor tree [3/6]'
# Common Vendor Tree
git clone --depth=1 https://github.com/Exynos9611-Development/vendor_samsung_universal9611-common vendor/samsung/universal9611-common

echo 'Cloning Kernel tree [4/6]'
# Kernel Tree
rm -rf kernel/samsung
git clone --depth=1 https://github.com/Exynos9611-Development/kernel_samsung_universal9611 kernel/samsung/universal9611

echo 'Cloning Hardware Samsung [5/6]'
# Hardware Samsung
rm -rf hardware/samsung
git clone --depth=1 https://github.com/ProjectElixir-Devices/hardware_samsung hardware/samsung

echo 'Cloning Misc S.LSI repo [6/6]'
# Sepolicy
rm -rf device/samsung_slsi
git clone --depth=1 https://github.com/LineageOS/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy

# Components
rm -rf hardware/samsung_slsi
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal hardware/samsung_slsi/scsc_wifibt/wifi_hal
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib

echo 'Completed, Now proceeding to lunch'
