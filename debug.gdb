# add-symbol-file rc/kernel.bin 0x7c00
# add-symbol-file disc_data/bootfile.do
# add-symbol-file disc_data/explorer.do
# add-symbol-file disc_data/file.txt
# add-symbol-file disc_data/reboot.do

# break *0x7c00
# break *0x10000
target remote | qemu-system-i386 -S -gdb stdio -cdrom rc/preOS.iso
