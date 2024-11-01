mkdir lineage && cd lineage && yes | repo init -u https://github.com/LineageOS/android.git -b lineage-17.1 && repo sync -j28 &&
git clone https://github.com/sudozetaxbyte/device_realme_r5xQ.git device/realme/r5xQ && git clone https://github.com/sudozetaxbyte/vendor_realme_r5xQ.git vendor/realme/r5xQ && git clone https://github.com/sudozetaxbyte/kernel_realme_r5x.git kernel/realme/r5x
