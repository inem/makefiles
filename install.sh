#!/bin/bash

# Показывает последнюю упавшую команду
# Использование: curl -sSL <URL>/install.sh | bash

last_cmd=$(history | tail -2 | head -1 | sed 's/^[ ]*[0-9]*[ ]*//')
echo "🔍 Упавшая команда: $last_cmd"
