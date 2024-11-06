#!/bin/bash

branch_name=$(git rev-parse --abbrev-ref HEAD)

valid_prefixes=("feature" "fix" "hotfix" "release" "prerelease")

for prefix in "${valid_prefixes[@]}"; do
    if [[ $branch_name == $prefix* ]]; then
        exit 0
    fi
done

# 使用 ANSI escape codes 來設置紅色文本
echo "Warning: Branch name must start with one of the following prefixes: ${valid_prefixes[*]}"
echo "Descriptions:"
echo "feature: is for adding, refactoring or removing a feature"
echo "fix: is for fixing a bug"
echo "hotfix: is for changing code with a temporary solution and/or without following the usual process (usually because of an emergency)"
echo "prerelease: is for releasing a prerelease version"
echo "release: is for releasing a new version"
exit 1
