kernel:
    .version: db 1, '0.0.7', 2
    .boot_drive_id: db 0				; boot drive id
    .drive_id: db 0
    .str_boot_lookup_info: db 'Looking for "bootfile.do" on volume: ', 0
    .boot_file_name: db 'BOOTFILE.BIN', 0
    .boot_file_found: db 'Found kernel file at sector: ', 0
    .boot_file_not_found: db 'Kernel file not found.', 0
    .loading_terminal: db 'Loading cli...', 0
