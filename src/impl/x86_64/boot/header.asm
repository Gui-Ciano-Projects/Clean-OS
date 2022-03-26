section .multiboot_header
header_start:
    ; magic number for initialization
    dd 0xe85250d6 ; multiboot 2

    ;architecture
    dd 0 ; protected mode 1386
    dd header_end - header_start ; size of header
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) ; checksum

    dw 0
    dw 0
    dd 8
header_end: