#!/bin/bash
workspace_for() {
    case "$1" in
        *"— request-wf ["*) echo 1 ;;
        *worktree1*)        echo 2 ;;
        *worktree2*)        echo 3 ;;
        *dotfiles*)         echo 4 ;;
        *claude-plugins*)   echo 4 ;;
    esac
}

while IFS='|' read -r wid current_ws _ title; do
    ws=$(workspace_for "$title")
    [ -n "$ws" ] && [ "$ws" != "$current_ws" ] && aerospace move-node-to-workspace --window-id "$wid" "$ws"
done < <(aerospace list-windows --monitor all \
    --format '%{window-id}|%{workspace}|%{app-bundle-id}|%{window-title}' \
  | grep 'com.microsoft.VSCode')
