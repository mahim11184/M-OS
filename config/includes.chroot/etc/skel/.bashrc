# Show Mighty Linux system details in interactive terminals
if [ -n "$PS1" ] && command -v neofetch >/dev/null 2>&1; then
    neofetch
fi
