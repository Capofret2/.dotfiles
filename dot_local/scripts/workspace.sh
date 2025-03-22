#!/usr/bin/env bash

# 获取当前工作目录
target_dir="$PWD"

# 自定义窗口规则（临时生效）
set_rules() {
    # 右上角大窗口 (60%宽度 70%高度)
    hyprctl keyword windowrule "move 40% 0%,title=term-main"
    hyprctl keyword windowrule "size 60% 70%,title=term-main"
    # 左下角小窗口 (40%宽度 30%高度)
    hyprctl keyword windowrule "move 0% 70%,title=term-small1"
    hyprctl keyword windowrule "size 40% 30%,title=term-small1"
    # 右下角小窗口 (60%宽度 30%高度)
    hyprctl keyword windowrule "move 40% 70%,title=term-small2"
    hyprctl keyword windowrule "size 60% 30%,title=term-small2"
}

# 重置窗口规则（避免影响其他窗口）
reset_rules() {
    hyprctl keyword windowrule "reset,title=term-main"
    hyprctl keyword windowrule "reset,title=term-small1"
    hyprctl keyword windowrule "reset,title=term-small2"
}

# 设置临时规则
set_rules

# 启动三个带标题的终端（使用foot终端，可替换为其他终端）
foot --title term-main --working-directory "$target_dir" &
foot --title term-small1 --working-directory "$target_dir" &
foot --title term-small2 --working-directory "$target_dir" &

# 稍后重置规则（根据实际情况调整等待时间）
sleep 3
reset_rules
