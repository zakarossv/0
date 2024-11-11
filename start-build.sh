#!/bin/bash

# Install tmux
apt install tmux -y 

# Start a new tmux session named "1"
tmux new -s 1 -d

# Execute commands in the new tmux session
tmux send-keys -t 1 "cd /root && mkdir -p lineage && cd lineage && yes | repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-17.1 && repo sync -j28" C-m
tmux send-keys -t 1 "cd /root/lineage && git clone https://github.com/sudozetaxbyte/device_realme_r5xQ.git device/realme/r5xQ" C-m
tmux send-keys -t 1 "cd /root/lineage && git clone https://github.com/sudozetaxbyte/vendor_realme_r5xQ.git vendor/realme/r5xQ" C-m
tmux send-keys -t 1 "cd /root/lineage && git clone https://github.com/sudozetaxbyte/kernel_realme_r5x.git kernel/realme/r5x" C-m
tmux send-keys -t 1 ". build/envsetup.sh && lunch lineage_r5xQ-userdebug && m bacon" C-m

# Attach to the tmux session
tmux attach-session -t 1
