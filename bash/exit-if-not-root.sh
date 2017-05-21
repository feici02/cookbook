function sanity_check {
	if [ "$(id -u)" != "0" ]; then
		echo "Script must be run as root."
		exit 1
	fi
}

sanity_check
