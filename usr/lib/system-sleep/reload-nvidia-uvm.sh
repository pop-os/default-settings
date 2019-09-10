#!/bin/sh

# CUDA fails to initialize after resuming from suspend with `UNKNOWN_ERROR(99)`
# until we reload the `nvidia_uvm` module.

if test "${1}" = "post" && grep nvidia_uvm /proc/modules >/dev/null; then
	echo "Reloading nvidia_uvm kernel module"
	rmmod nvidia_uvm
	modprobe nvidia_uvm
fi

