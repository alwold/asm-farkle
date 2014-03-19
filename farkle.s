.data

message:
  .ascii "Hello World\n\0"

.globl _start
_start:
# print shit
  movl $4, %eax # write syscall
  movl $1, %ebx # stdout?
  movl $message, %ecx
  movl $13, %edx
  int $0x80

# call exit syscall
  mov $1, %eax
  int $0x80
