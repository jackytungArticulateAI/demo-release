#!/bin/bash

# 獲取當前分支名稱
branch_name=$(git rev-parse --abbrev-ref HEAD)

# 定義允許的前綴
valid_prefixes=("feature/" "bugfix/" "hotfix/" "release/")

# 檢查分支名稱是否符合規範
for prefix in "${valid_prefixes[@]}"; do
    if [[ $branch_name == $prefix* ]]; then
        exit 0
    fi
done

echo "Warning: Branch name must start with one of the following prefixes: ${valid_prefixes[*]}"
exit 0
