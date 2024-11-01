#!/bin/bash

# Install tmux
apt install tmux -y 

# Start a new tmux session named "build"
tmux new -s build -d

# Execute commands in the new tmux session
tmux send-keys -t build "cd /root && mkdir -p lineage && cd lineage && yes | repo init -u --depth=1 https://github.com/LineageOS/android.git -b lineage-17.1 && repo sync -j28" C-m
tmux send-keys -t build "cd /root/lineage && git clone https://github.com/sudozetaxbyte/device_realme_r5xQ.git device/realme/r5xQ" C-m
tmux send-keys -t build "cd /root/lineage && git clone https://github.com/sudozetaxbyte/vendor_realme_r5xQ.git vendor/realme/r5xQ" C-m
tmux send-keys -t build "cd /root/lineage && git clone https://github.com/sudozetaxbyte/kernel_realme_r5x.git kernel/realme/r5x" C-m

# Attach to the tmux session
tmux attach-session -t build
