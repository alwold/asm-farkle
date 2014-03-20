.extern printf
.data

message:
	.asciz "Hello World\n"

.text
.global main
main:
	# print
	movl $message, %edi # argument
	movl $0, %eax # number of args?
	call printf

	# call exit syscall
	mov $1, %eax
	int $0x80
