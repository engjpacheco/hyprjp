#!/usr/bin/sh

doas qemu-system-x86_64 \
	 -m 1G \
	 -smp 2 \
	 -bios /usr/share/qemu/edk2.git/ovmf-x64/OVMF-pure-efi.fd \
	 --enable-kvm \
     -net nic -net user,hostfwd=tcp::2222-:22 \
	 -name 'FreeBSD' \
	 -boot d \
	 -hda ~/hddvm.qcow2 \
	 -cdrom ~/dwls/FreeBSD-14.0-RELEASE-amd64-disc1.iso 
