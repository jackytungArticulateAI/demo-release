#!/bin/bash

branch_name=$(git rev-parse --abbrev-ref HEAD)

valid_prefixes=("feature/" "bugfix/" "hotfix/" "release/")

for prefix in "${valid_prefixes[@]}"; do
    if [[ $branch_name == $prefix* ]]; then
        exit 0
    fi
done

# 使用 ANSI escape codes 來設置紅色文本
echo -e "\033[31mWarning: Branch name must start with one of the following prefixes:\033[0m ${valid_prefixes[*]}"
exit 0