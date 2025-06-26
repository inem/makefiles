#!/bin/bash

# Показывает переданную команду или достает из истории
# Использование: curl -sSL <URL>/install.sh | sh -s "make deploy"

if [[ -n "$1" ]]; then
    echo "🔍 Упавшая команда: $1"
else
    last_cmd=$(history | tail -2 | head -1 | sed 's/^[ ]*[0-9]*[ ]*//')
    echo "🔍 Упавшая команда: $last_cmd"
fi
