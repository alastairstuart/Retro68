#as: -J
#objdump: -drw
#name: x86-64 32-bit addressing

.*: +file format .*

Disassembly of section .text:

0+000 <.text>:
[	 ]*0:[	 ]+67 48 8d 80 00 00 00 00[	 ]+(addr32[	 ]+)?lea[ 	]+0x0\(%eax\),%rax.*
[	 ]*8:[	 ]+67 49 8d 80 00 00 00 00[	 ]+(addr32[	 ]+)?lea[ 	]+0x0\(%r8d\),%rax.*
[	 ]*10:[	 ]+67 48 8d 05 00 00 00 00[	 ]+(addr32[	 ]+)?lea[ 	]+0x0\(%eip\),%rax.*
[	 ]*18:[	 ]+67 48 8d 04 25 00 00 00 00[	 ]+addr32[	 ]+lea[ 	]+0x0,%rax.*
[	 ]*21:[	 ]+67 a0 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+0x600898,%al
[	 ]*27:[	 ]+67 66 a1 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+0x600898,%ax
[	 ]*2e:[	 ]+67 a1 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+0x600898,%eax
[	 ]*34:[	 ]+67 48 a1 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+0x600898,%rax
[	 ]*3b:[	 ]+67 a2 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+%al,0x600898
[	 ]*41:[	 ]+67 66 a3 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+%ax,0x600898
[	 ]*48:[	 ]+67 a3 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+%eax,0x600898
[	 ]*4e:[	 ]+67 48 a3 98 08 60 00[	 ]+addr32[	 ]+mov[ 	]+%rax,0x600898
#pass
