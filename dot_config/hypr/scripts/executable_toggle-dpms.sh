#!/bin/bash

# 获取当前 DPMS 状态（假设只有一个显示器）
STATE=$(hyprctl monitors -j | jq -r '.[0].dpmsStatus')

if [ "$STATE" = "true" ]; then
    hyprctl dispatch dpms off
else
    hyprctl dispatch dpms on
fi
