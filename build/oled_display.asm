
build/oled_display.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000225c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000009a4  0800231c  0800231c  0001231c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08002cc0  08002cc0  00012cc0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08002cc8  08002cc8  00012cc8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             000004f4  20000000  08002ccc  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000458  200004f4  080031c0  000204f4  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000094c  080031c0  0002094c  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  000204f4  2**0  CONTENTS, READONLY
  9 .debug_info       000038ef  00000000  00000000  0002051c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000b95  00000000  00000000  00023e0b  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        000013de  00000000  00000000  000249a0  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000398  00000000  00000000  00025d7e  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000328  00000000  00000000  00026116  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00002352  00000000  00000000  0002643e  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000011b3  00000000  00000000  00028790  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          00000075  00000000  00000000  00029943  2**0  CONTENTS, READONLY
 17 .debug_frame      00000e38  00000000  00000000  000299b8  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	200004f4 	.word	0x200004f4
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08002304 	.word	0x08002304

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	200004f8 	.word	0x200004f8
 8000104:	08002304 	.word	0x08002304

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f8f0 	bl	80003f0 <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__divsi3>:
 800021c:	4603      	mov	r3, r0
 800021e:	430b      	orrs	r3, r1
 8000220:	d47f      	bmi.n	8000322 <__divsi3+0x106>
 8000222:	2200      	movs	r2, #0
 8000224:	0843      	lsrs	r3, r0, #1
 8000226:	428b      	cmp	r3, r1
 8000228:	d374      	bcc.n	8000314 <__divsi3+0xf8>
 800022a:	0903      	lsrs	r3, r0, #4
 800022c:	428b      	cmp	r3, r1
 800022e:	d35f      	bcc.n	80002f0 <__divsi3+0xd4>
 8000230:	0a03      	lsrs	r3, r0, #8
 8000232:	428b      	cmp	r3, r1
 8000234:	d344      	bcc.n	80002c0 <__divsi3+0xa4>
 8000236:	0b03      	lsrs	r3, r0, #12
 8000238:	428b      	cmp	r3, r1
 800023a:	d328      	bcc.n	800028e <__divsi3+0x72>
 800023c:	0c03      	lsrs	r3, r0, #16
 800023e:	428b      	cmp	r3, r1
 8000240:	d30d      	bcc.n	800025e <__divsi3+0x42>
 8000242:	22ff      	movs	r2, #255	; 0xff
 8000244:	0209      	lsls	r1, r1, #8
 8000246:	ba12      	rev	r2, r2
 8000248:	0c03      	lsrs	r3, r0, #16
 800024a:	428b      	cmp	r3, r1
 800024c:	d302      	bcc.n	8000254 <__divsi3+0x38>
 800024e:	1212      	asrs	r2, r2, #8
 8000250:	0209      	lsls	r1, r1, #8
 8000252:	d065      	beq.n	8000320 <__divsi3+0x104>
 8000254:	0b03      	lsrs	r3, r0, #12
 8000256:	428b      	cmp	r3, r1
 8000258:	d319      	bcc.n	800028e <__divsi3+0x72>
 800025a:	e000      	b.n	800025e <__divsi3+0x42>
 800025c:	0a09      	lsrs	r1, r1, #8
 800025e:	0bc3      	lsrs	r3, r0, #15
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x4c>
 8000264:	03cb      	lsls	r3, r1, #15
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0b83      	lsrs	r3, r0, #14
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x58>
 8000270:	038b      	lsls	r3, r1, #14
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0b43      	lsrs	r3, r0, #13
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x64>
 800027c:	034b      	lsls	r3, r1, #13
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	0b03      	lsrs	r3, r0, #12
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x70>
 8000288:	030b      	lsls	r3, r1, #12
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0ac3      	lsrs	r3, r0, #11
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x7c>
 8000294:	02cb      	lsls	r3, r1, #11
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	0a83      	lsrs	r3, r0, #10
 800029c:	428b      	cmp	r3, r1
 800029e:	d301      	bcc.n	80002a4 <__divsi3+0x88>
 80002a0:	028b      	lsls	r3, r1, #10
 80002a2:	1ac0      	subs	r0, r0, r3
 80002a4:	4152      	adcs	r2, r2
 80002a6:	0a43      	lsrs	r3, r0, #9
 80002a8:	428b      	cmp	r3, r1
 80002aa:	d301      	bcc.n	80002b0 <__divsi3+0x94>
 80002ac:	024b      	lsls	r3, r1, #9
 80002ae:	1ac0      	subs	r0, r0, r3
 80002b0:	4152      	adcs	r2, r2
 80002b2:	0a03      	lsrs	r3, r0, #8
 80002b4:	428b      	cmp	r3, r1
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0xa0>
 80002b8:	020b      	lsls	r3, r1, #8
 80002ba:	1ac0      	subs	r0, r0, r3
 80002bc:	4152      	adcs	r2, r2
 80002be:	d2cd      	bcs.n	800025c <__divsi3+0x40>
 80002c0:	09c3      	lsrs	r3, r0, #7
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d301      	bcc.n	80002ca <__divsi3+0xae>
 80002c6:	01cb      	lsls	r3, r1, #7
 80002c8:	1ac0      	subs	r0, r0, r3
 80002ca:	4152      	adcs	r2, r2
 80002cc:	0983      	lsrs	r3, r0, #6
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d301      	bcc.n	80002d6 <__divsi3+0xba>
 80002d2:	018b      	lsls	r3, r1, #6
 80002d4:	1ac0      	subs	r0, r0, r3
 80002d6:	4152      	adcs	r2, r2
 80002d8:	0943      	lsrs	r3, r0, #5
 80002da:	428b      	cmp	r3, r1
 80002dc:	d301      	bcc.n	80002e2 <__divsi3+0xc6>
 80002de:	014b      	lsls	r3, r1, #5
 80002e0:	1ac0      	subs	r0, r0, r3
 80002e2:	4152      	adcs	r2, r2
 80002e4:	0903      	lsrs	r3, r0, #4
 80002e6:	428b      	cmp	r3, r1
 80002e8:	d301      	bcc.n	80002ee <__divsi3+0xd2>
 80002ea:	010b      	lsls	r3, r1, #4
 80002ec:	1ac0      	subs	r0, r0, r3
 80002ee:	4152      	adcs	r2, r2
 80002f0:	08c3      	lsrs	r3, r0, #3
 80002f2:	428b      	cmp	r3, r1
 80002f4:	d301      	bcc.n	80002fa <__divsi3+0xde>
 80002f6:	00cb      	lsls	r3, r1, #3
 80002f8:	1ac0      	subs	r0, r0, r3
 80002fa:	4152      	adcs	r2, r2
 80002fc:	0883      	lsrs	r3, r0, #2
 80002fe:	428b      	cmp	r3, r1
 8000300:	d301      	bcc.n	8000306 <__divsi3+0xea>
 8000302:	008b      	lsls	r3, r1, #2
 8000304:	1ac0      	subs	r0, r0, r3
 8000306:	4152      	adcs	r2, r2
 8000308:	0843      	lsrs	r3, r0, #1
 800030a:	428b      	cmp	r3, r1
 800030c:	d301      	bcc.n	8000312 <__divsi3+0xf6>
 800030e:	004b      	lsls	r3, r1, #1
 8000310:	1ac0      	subs	r0, r0, r3
 8000312:	4152      	adcs	r2, r2
 8000314:	1a41      	subs	r1, r0, r1
 8000316:	d200      	bcs.n	800031a <__divsi3+0xfe>
 8000318:	4601      	mov	r1, r0
 800031a:	4152      	adcs	r2, r2
 800031c:	4610      	mov	r0, r2
 800031e:	4770      	bx	lr
 8000320:	e05d      	b.n	80003de <__divsi3+0x1c2>
 8000322:	0fca      	lsrs	r2, r1, #31
 8000324:	d000      	beq.n	8000328 <__divsi3+0x10c>
 8000326:	4249      	negs	r1, r1
 8000328:	1003      	asrs	r3, r0, #32
 800032a:	d300      	bcc.n	800032e <__divsi3+0x112>
 800032c:	4240      	negs	r0, r0
 800032e:	4053      	eors	r3, r2
 8000330:	2200      	movs	r2, #0
 8000332:	469c      	mov	ip, r3
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d32d      	bcc.n	8000396 <__divsi3+0x17a>
 800033a:	0a03      	lsrs	r3, r0, #8
 800033c:	428b      	cmp	r3, r1
 800033e:	d312      	bcc.n	8000366 <__divsi3+0x14a>
 8000340:	22fc      	movs	r2, #252	; 0xfc
 8000342:	0189      	lsls	r1, r1, #6
 8000344:	ba12      	rev	r2, r2
 8000346:	0a03      	lsrs	r3, r0, #8
 8000348:	428b      	cmp	r3, r1
 800034a:	d30c      	bcc.n	8000366 <__divsi3+0x14a>
 800034c:	0189      	lsls	r1, r1, #6
 800034e:	1192      	asrs	r2, r2, #6
 8000350:	428b      	cmp	r3, r1
 8000352:	d308      	bcc.n	8000366 <__divsi3+0x14a>
 8000354:	0189      	lsls	r1, r1, #6
 8000356:	1192      	asrs	r2, r2, #6
 8000358:	428b      	cmp	r3, r1
 800035a:	d304      	bcc.n	8000366 <__divsi3+0x14a>
 800035c:	0189      	lsls	r1, r1, #6
 800035e:	d03a      	beq.n	80003d6 <__divsi3+0x1ba>
 8000360:	1192      	asrs	r2, r2, #6
 8000362:	e000      	b.n	8000366 <__divsi3+0x14a>
 8000364:	0989      	lsrs	r1, r1, #6
 8000366:	09c3      	lsrs	r3, r0, #7
 8000368:	428b      	cmp	r3, r1
 800036a:	d301      	bcc.n	8000370 <__divsi3+0x154>
 800036c:	01cb      	lsls	r3, r1, #7
 800036e:	1ac0      	subs	r0, r0, r3
 8000370:	4152      	adcs	r2, r2
 8000372:	0983      	lsrs	r3, r0, #6
 8000374:	428b      	cmp	r3, r1
 8000376:	d301      	bcc.n	800037c <__divsi3+0x160>
 8000378:	018b      	lsls	r3, r1, #6
 800037a:	1ac0      	subs	r0, r0, r3
 800037c:	4152      	adcs	r2, r2
 800037e:	0943      	lsrs	r3, r0, #5
 8000380:	428b      	cmp	r3, r1
 8000382:	d301      	bcc.n	8000388 <__divsi3+0x16c>
 8000384:	014b      	lsls	r3, r1, #5
 8000386:	1ac0      	subs	r0, r0, r3
 8000388:	4152      	adcs	r2, r2
 800038a:	0903      	lsrs	r3, r0, #4
 800038c:	428b      	cmp	r3, r1
 800038e:	d301      	bcc.n	8000394 <__divsi3+0x178>
 8000390:	010b      	lsls	r3, r1, #4
 8000392:	1ac0      	subs	r0, r0, r3
 8000394:	4152      	adcs	r2, r2
 8000396:	08c3      	lsrs	r3, r0, #3
 8000398:	428b      	cmp	r3, r1
 800039a:	d301      	bcc.n	80003a0 <__divsi3+0x184>
 800039c:	00cb      	lsls	r3, r1, #3
 800039e:	1ac0      	subs	r0, r0, r3
 80003a0:	4152      	adcs	r2, r2
 80003a2:	0883      	lsrs	r3, r0, #2
 80003a4:	428b      	cmp	r3, r1
 80003a6:	d301      	bcc.n	80003ac <__divsi3+0x190>
 80003a8:	008b      	lsls	r3, r1, #2
 80003aa:	1ac0      	subs	r0, r0, r3
 80003ac:	4152      	adcs	r2, r2
 80003ae:	d2d9      	bcs.n	8000364 <__divsi3+0x148>
 80003b0:	0843      	lsrs	r3, r0, #1
 80003b2:	428b      	cmp	r3, r1
 80003b4:	d301      	bcc.n	80003ba <__divsi3+0x19e>
 80003b6:	004b      	lsls	r3, r1, #1
 80003b8:	1ac0      	subs	r0, r0, r3
 80003ba:	4152      	adcs	r2, r2
 80003bc:	1a41      	subs	r1, r0, r1
 80003be:	d200      	bcs.n	80003c2 <__divsi3+0x1a6>
 80003c0:	4601      	mov	r1, r0
 80003c2:	4663      	mov	r3, ip
 80003c4:	4152      	adcs	r2, r2
 80003c6:	105b      	asrs	r3, r3, #1
 80003c8:	4610      	mov	r0, r2
 80003ca:	d301      	bcc.n	80003d0 <__divsi3+0x1b4>
 80003cc:	4240      	negs	r0, r0
 80003ce:	2b00      	cmp	r3, #0
 80003d0:	d500      	bpl.n	80003d4 <__divsi3+0x1b8>
 80003d2:	4249      	negs	r1, r1
 80003d4:	4770      	bx	lr
 80003d6:	4663      	mov	r3, ip
 80003d8:	105b      	asrs	r3, r3, #1
 80003da:	d300      	bcc.n	80003de <__divsi3+0x1c2>
 80003dc:	4240      	negs	r0, r0
 80003de:	b501      	push	{r0, lr}
 80003e0:	2000      	movs	r0, #0
 80003e2:	f000 f805 	bl	80003f0 <__aeabi_idiv0>
 80003e6:	bd02      	pop	{r1, pc}

080003e8 <__aeabi_idivmod>:
 80003e8:	2900      	cmp	r1, #0
 80003ea:	d0f8      	beq.n	80003de <__divsi3+0x1c2>
 80003ec:	e716      	b.n	800021c <__divsi3>
 80003ee:	4770      	bx	lr

080003f0 <__aeabi_idiv0>:
 80003f0:	4770      	bx	lr
 80003f2:	46c0      	nop			; (mov r8, r8)

080003f4 <Reset_Handler>:
 80003f4:	480d      	ldr	r0, [pc, #52]	; (800042c <LoopForever+0x2>)
 80003f6:	4685      	mov	sp, r0
 80003f8:	480d      	ldr	r0, [pc, #52]	; (8000430 <LoopForever+0x6>)
 80003fa:	490e      	ldr	r1, [pc, #56]	; (8000434 <LoopForever+0xa>)
 80003fc:	4a0e      	ldr	r2, [pc, #56]	; (8000438 <LoopForever+0xe>)
 80003fe:	2300      	movs	r3, #0
 8000400:	e002      	b.n	8000408 <LoopCopyDataInit>

08000402 <CopyDataInit>:
 8000402:	58d4      	ldr	r4, [r2, r3]
 8000404:	50c4      	str	r4, [r0, r3]
 8000406:	3304      	adds	r3, #4

08000408 <LoopCopyDataInit>:
 8000408:	18c4      	adds	r4, r0, r3
 800040a:	428c      	cmp	r4, r1
 800040c:	d3f9      	bcc.n	8000402 <CopyDataInit>
 800040e:	4a0b      	ldr	r2, [pc, #44]	; (800043c <LoopForever+0x12>)
 8000410:	4c0b      	ldr	r4, [pc, #44]	; (8000440 <LoopForever+0x16>)
 8000412:	2300      	movs	r3, #0
 8000414:	e001      	b.n	800041a <LoopFillZerobss>

08000416 <FillZerobss>:
 8000416:	6013      	str	r3, [r2, #0]
 8000418:	3204      	adds	r2, #4

0800041a <LoopFillZerobss>:
 800041a:	42a2      	cmp	r2, r4
 800041c:	d3fb      	bcc.n	8000416 <FillZerobss>
 800041e:	f000 f86b 	bl	80004f8 <SystemInit>
 8000422:	f001 fe6d 	bl	8002100 <__libc_init_array>
 8000426:	f000 f80f 	bl	8000448 <main>

0800042a <LoopForever>:
 800042a:	e7fe      	b.n	800042a <LoopForever>
 800042c:	20002000 	.word	0x20002000
 8000430:	20000000 	.word	0x20000000
 8000434:	200004f4 	.word	0x200004f4
 8000438:	08002ccc 	.word	0x08002ccc
 800043c:	200004f4 	.word	0x200004f4
 8000440:	2000094c 	.word	0x2000094c

08000444 <ADC1_COMP_IRQHandler>:
 8000444:	e7fe      	b.n	8000444 <ADC1_COMP_IRQHandler>
	...

08000448 <main>:
 8000448:	b580      	push	{r7, lr}
 800044a:	b082      	sub	sp, #8
 800044c:	af02      	add	r7, sp, #8
 800044e:	f000 fc5d 	bl	8000d0c <rcc_config>
 8000452:	f000 fc8f 	bl	8000d74 <gpio_config>
 8000456:	f001 fa9f 	bl	8001998 <oled_config>
 800045a:	f000 fcb9 	bl	8000dd0 <printf_config>
 800045e:	f000 fd6d 	bl	8000f3c <timers_config>
 8000462:	f000 fcc1 	bl	8000de8 <exti_config>
 8000466:	f001 f93b 	bl	80016e0 <oledFrame2>
 800046a:	4b1c      	ldr	r3, [pc, #112]	; (80004dc <main+0x94>)
 800046c:	2200      	movs	r2, #0
 800046e:	5e9b      	ldrsh	r3, [r3, r2]
 8000470:	2b8b      	cmp	r3, #139	; 0x8b
 8000472:	dc0b      	bgt.n	800048c <main+0x44>
 8000474:	4b1a      	ldr	r3, [pc, #104]	; (80004e0 <main+0x98>)
 8000476:	781b      	ldrb	r3, [r3, #0]
 8000478:	b29a      	uxth	r2, r3
 800047a:	4b18      	ldr	r3, [pc, #96]	; (80004dc <main+0x94>)
 800047c:	2100      	movs	r1, #0
 800047e:	5e5b      	ldrsh	r3, [r3, r1]
 8000480:	b29b      	uxth	r3, r3
 8000482:	18d3      	adds	r3, r2, r3
 8000484:	b29b      	uxth	r3, r3
 8000486:	b21a      	sxth	r2, r3
 8000488:	4b14      	ldr	r3, [pc, #80]	; (80004dc <main+0x94>)
 800048a:	801a      	strh	r2, [r3, #0]
 800048c:	4b13      	ldr	r3, [pc, #76]	; (80004dc <main+0x94>)
 800048e:	2000      	movs	r0, #0
 8000490:	5e18      	ldrsh	r0, [r3, r0]
 8000492:	4b12      	ldr	r3, [pc, #72]	; (80004dc <main+0x94>)
 8000494:	2200      	movs	r2, #0
 8000496:	5e9b      	ldrsh	r3, [r3, r2]
 8000498:	b29b      	uxth	r3, r3
 800049a:	3314      	adds	r3, #20
 800049c:	b29b      	uxth	r3, r3
 800049e:	b21a      	sxth	r2, r3
 80004a0:	23ff      	movs	r3, #255	; 0xff
 80004a2:	9300      	str	r3, [sp, #0]
 80004a4:	2318      	movs	r3, #24
 80004a6:	210a      	movs	r1, #10
 80004a8:	f000 ff6b 	bl	8001382 <drawEmptyRec>
 80004ac:	4b0d      	ldr	r3, [pc, #52]	; (80004e4 <main+0x9c>)
 80004ae:	0018      	movs	r0, r3
 80004b0:	f000 fb66 	bl	8000b80 <moveForward>
 80004b4:	4b0c      	ldr	r3, [pc, #48]	; (80004e8 <main+0xa0>)
 80004b6:	0018      	movs	r0, r3
 80004b8:	f000 fb62 	bl	8000b80 <moveForward>
 80004bc:	4b0b      	ldr	r3, [pc, #44]	; (80004ec <main+0xa4>)
 80004be:	0018      	movs	r0, r3
 80004c0:	f000 fb5e 	bl	8000b80 <moveForward>
 80004c4:	4b0a      	ldr	r3, [pc, #40]	; (80004f0 <main+0xa8>)
 80004c6:	0018      	movs	r0, r3
 80004c8:	f000 fb5a 	bl	8000b80 <moveForward>
 80004cc:	4b09      	ldr	r3, [pc, #36]	; (80004f4 <main+0xac>)
 80004ce:	0018      	movs	r0, r3
 80004d0:	f000 fbc0 	bl	8000c54 <drawModel>
 80004d4:	f001 fa34 	bl	8001940 <oledUpdate>
 80004d8:	e7c5      	b.n	8000466 <main+0x1e>
 80004da:	46c0      	nop			; (mov r8, r8)
 80004dc:	20000510 	.word	0x20000510
 80004e0:	200000c4 	.word	0x200000c4
 80004e4:	20000010 	.word	0x20000010
 80004e8:	2000001c 	.word	0x2000001c
 80004ec:	20000028 	.word	0x20000028
 80004f0:	20000034 	.word	0x20000034
 80004f4:	20000040 	.word	0x20000040

080004f8 <SystemInit>:
 80004f8:	b580      	push	{r7, lr}
 80004fa:	af00      	add	r7, sp, #0
 80004fc:	4b1a      	ldr	r3, [pc, #104]	; (8000568 <SystemInit+0x70>)
 80004fe:	681a      	ldr	r2, [r3, #0]
 8000500:	4b19      	ldr	r3, [pc, #100]	; (8000568 <SystemInit+0x70>)
 8000502:	2101      	movs	r1, #1
 8000504:	430a      	orrs	r2, r1
 8000506:	601a      	str	r2, [r3, #0]
 8000508:	4b17      	ldr	r3, [pc, #92]	; (8000568 <SystemInit+0x70>)
 800050a:	685a      	ldr	r2, [r3, #4]
 800050c:	4b16      	ldr	r3, [pc, #88]	; (8000568 <SystemInit+0x70>)
 800050e:	4917      	ldr	r1, [pc, #92]	; (800056c <SystemInit+0x74>)
 8000510:	400a      	ands	r2, r1
 8000512:	605a      	str	r2, [r3, #4]
 8000514:	4b14      	ldr	r3, [pc, #80]	; (8000568 <SystemInit+0x70>)
 8000516:	681a      	ldr	r2, [r3, #0]
 8000518:	4b13      	ldr	r3, [pc, #76]	; (8000568 <SystemInit+0x70>)
 800051a:	4915      	ldr	r1, [pc, #84]	; (8000570 <SystemInit+0x78>)
 800051c:	400a      	ands	r2, r1
 800051e:	601a      	str	r2, [r3, #0]
 8000520:	4b11      	ldr	r3, [pc, #68]	; (8000568 <SystemInit+0x70>)
 8000522:	681a      	ldr	r2, [r3, #0]
 8000524:	4b10      	ldr	r3, [pc, #64]	; (8000568 <SystemInit+0x70>)
 8000526:	4913      	ldr	r1, [pc, #76]	; (8000574 <SystemInit+0x7c>)
 8000528:	400a      	ands	r2, r1
 800052a:	601a      	str	r2, [r3, #0]
 800052c:	4b0e      	ldr	r3, [pc, #56]	; (8000568 <SystemInit+0x70>)
 800052e:	685a      	ldr	r2, [r3, #4]
 8000530:	4b0d      	ldr	r3, [pc, #52]	; (8000568 <SystemInit+0x70>)
 8000532:	4911      	ldr	r1, [pc, #68]	; (8000578 <SystemInit+0x80>)
 8000534:	400a      	ands	r2, r1
 8000536:	605a      	str	r2, [r3, #4]
 8000538:	4b0b      	ldr	r3, [pc, #44]	; (8000568 <SystemInit+0x70>)
 800053a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800053c:	4b0a      	ldr	r3, [pc, #40]	; (8000568 <SystemInit+0x70>)
 800053e:	210f      	movs	r1, #15
 8000540:	438a      	bics	r2, r1
 8000542:	62da      	str	r2, [r3, #44]	; 0x2c
 8000544:	4b08      	ldr	r3, [pc, #32]	; (8000568 <SystemInit+0x70>)
 8000546:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000548:	4b07      	ldr	r3, [pc, #28]	; (8000568 <SystemInit+0x70>)
 800054a:	490c      	ldr	r1, [pc, #48]	; (800057c <SystemInit+0x84>)
 800054c:	400a      	ands	r2, r1
 800054e:	631a      	str	r2, [r3, #48]	; 0x30
 8000550:	4b05      	ldr	r3, [pc, #20]	; (8000568 <SystemInit+0x70>)
 8000552:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000554:	4b04      	ldr	r3, [pc, #16]	; (8000568 <SystemInit+0x70>)
 8000556:	2101      	movs	r1, #1
 8000558:	438a      	bics	r2, r1
 800055a:	635a      	str	r2, [r3, #52]	; 0x34
 800055c:	4b02      	ldr	r3, [pc, #8]	; (8000568 <SystemInit+0x70>)
 800055e:	2200      	movs	r2, #0
 8000560:	609a      	str	r2, [r3, #8]
 8000562:	46c0      	nop			; (mov r8, r8)
 8000564:	46bd      	mov	sp, r7
 8000566:	bd80      	pop	{r7, pc}
 8000568:	40021000 	.word	0x40021000
 800056c:	f8ffb80c 	.word	0xf8ffb80c
 8000570:	fef6ffff 	.word	0xfef6ffff
 8000574:	fffbffff 	.word	0xfffbffff
 8000578:	ffc0ffff 	.word	0xffc0ffff
 800057c:	fffffeac 	.word	0xfffffeac

08000580 <get_pix>:
 8000580:	b590      	push	{r4, r7, lr}
 8000582:	b083      	sub	sp, #12
 8000584:	af00      	add	r7, sp, #0
 8000586:	0004      	movs	r4, r0
 8000588:	0008      	movs	r0, r1
 800058a:	0011      	movs	r1, r2
 800058c:	1dfb      	adds	r3, r7, #7
 800058e:	1c22      	adds	r2, r4, #0
 8000590:	701a      	strb	r2, [r3, #0]
 8000592:	1dbb      	adds	r3, r7, #6
 8000594:	1c02      	adds	r2, r0, #0
 8000596:	701a      	strb	r2, [r3, #0]
 8000598:	1d7b      	adds	r3, r7, #5
 800059a:	1c0a      	adds	r2, r1, #0
 800059c:	701a      	strb	r2, [r3, #0]
 800059e:	1dfb      	adds	r3, r7, #7
 80005a0:	781a      	ldrb	r2, [r3, #0]
 80005a2:	0013      	movs	r3, r2
 80005a4:	009b      	lsls	r3, r3, #2
 80005a6:	189a      	adds	r2, r3, r2
 80005a8:	1dbb      	adds	r3, r7, #6
 80005aa:	781b      	ldrb	r3, [r3, #0]
 80005ac:	18d3      	adds	r3, r2, r3
 80005ae:	4a08      	ldr	r2, [pc, #32]	; (80005d0 <get_pix+0x50>)
 80005b0:	5cd3      	ldrb	r3, [r2, r3]
 80005b2:	001a      	movs	r2, r3
 80005b4:	1d7b      	adds	r3, r7, #5
 80005b6:	781b      	ldrb	r3, [r3, #0]
 80005b8:	411a      	asrs	r2, r3
 80005ba:	0013      	movs	r3, r2
 80005bc:	2201      	movs	r2, #1
 80005be:	4013      	ands	r3, r2
 80005c0:	1e5a      	subs	r2, r3, #1
 80005c2:	4193      	sbcs	r3, r2
 80005c4:	b2db      	uxtb	r3, r3
 80005c6:	0018      	movs	r0, r3
 80005c8:	46bd      	mov	sp, r7
 80005ca:	b003      	add	sp, #12
 80005cc:	bd90      	pop	{r4, r7, pc}
 80005ce:	46c0      	nop			; (mov r8, r8)
 80005d0:	08002324 	.word	0x08002324

080005d4 <NVIC_EnableIRQ>:
 80005d4:	b580      	push	{r7, lr}
 80005d6:	b082      	sub	sp, #8
 80005d8:	af00      	add	r7, sp, #0
 80005da:	0002      	movs	r2, r0
 80005dc:	1dfb      	adds	r3, r7, #7
 80005de:	701a      	strb	r2, [r3, #0]
 80005e0:	1dfb      	adds	r3, r7, #7
 80005e2:	781b      	ldrb	r3, [r3, #0]
 80005e4:	001a      	movs	r2, r3
 80005e6:	231f      	movs	r3, #31
 80005e8:	401a      	ands	r2, r3
 80005ea:	4b04      	ldr	r3, [pc, #16]	; (80005fc <NVIC_EnableIRQ+0x28>)
 80005ec:	2101      	movs	r1, #1
 80005ee:	4091      	lsls	r1, r2
 80005f0:	000a      	movs	r2, r1
 80005f2:	601a      	str	r2, [r3, #0]
 80005f4:	46c0      	nop			; (mov r8, r8)
 80005f6:	46bd      	mov	sp, r7
 80005f8:	b002      	add	sp, #8
 80005fa:	bd80      	pop	{r7, pc}
 80005fc:	e000e100 	.word	0xe000e100

08000600 <NVIC_SetPriority>:
 8000600:	b590      	push	{r4, r7, lr}
 8000602:	b083      	sub	sp, #12
 8000604:	af00      	add	r7, sp, #0
 8000606:	0002      	movs	r2, r0
 8000608:	6039      	str	r1, [r7, #0]
 800060a:	1dfb      	adds	r3, r7, #7
 800060c:	701a      	strb	r2, [r3, #0]
 800060e:	1dfb      	adds	r3, r7, #7
 8000610:	781b      	ldrb	r3, [r3, #0]
 8000612:	2b7f      	cmp	r3, #127	; 0x7f
 8000614:	d932      	bls.n	800067c <NVIC_SetPriority+0x7c>
 8000616:	4a2f      	ldr	r2, [pc, #188]	; (80006d4 <NVIC_SetPriority+0xd4>)
 8000618:	1dfb      	adds	r3, r7, #7
 800061a:	781b      	ldrb	r3, [r3, #0]
 800061c:	0019      	movs	r1, r3
 800061e:	230f      	movs	r3, #15
 8000620:	400b      	ands	r3, r1
 8000622:	3b08      	subs	r3, #8
 8000624:	089b      	lsrs	r3, r3, #2
 8000626:	3306      	adds	r3, #6
 8000628:	009b      	lsls	r3, r3, #2
 800062a:	18d3      	adds	r3, r2, r3
 800062c:	3304      	adds	r3, #4
 800062e:	681b      	ldr	r3, [r3, #0]
 8000630:	1dfa      	adds	r2, r7, #7
 8000632:	7812      	ldrb	r2, [r2, #0]
 8000634:	0011      	movs	r1, r2
 8000636:	2203      	movs	r2, #3
 8000638:	400a      	ands	r2, r1
 800063a:	00d2      	lsls	r2, r2, #3
 800063c:	21ff      	movs	r1, #255	; 0xff
 800063e:	4091      	lsls	r1, r2
 8000640:	000a      	movs	r2, r1
 8000642:	43d2      	mvns	r2, r2
 8000644:	401a      	ands	r2, r3
 8000646:	0011      	movs	r1, r2
 8000648:	683b      	ldr	r3, [r7, #0]
 800064a:	019b      	lsls	r3, r3, #6
 800064c:	22ff      	movs	r2, #255	; 0xff
 800064e:	401a      	ands	r2, r3
 8000650:	1dfb      	adds	r3, r7, #7
 8000652:	781b      	ldrb	r3, [r3, #0]
 8000654:	0018      	movs	r0, r3
 8000656:	2303      	movs	r3, #3
 8000658:	4003      	ands	r3, r0
 800065a:	00db      	lsls	r3, r3, #3
 800065c:	409a      	lsls	r2, r3
 800065e:	481d      	ldr	r0, [pc, #116]	; (80006d4 <NVIC_SetPriority+0xd4>)
 8000660:	1dfb      	adds	r3, r7, #7
 8000662:	781b      	ldrb	r3, [r3, #0]
 8000664:	001c      	movs	r4, r3
 8000666:	230f      	movs	r3, #15
 8000668:	4023      	ands	r3, r4
 800066a:	3b08      	subs	r3, #8
 800066c:	089b      	lsrs	r3, r3, #2
 800066e:	430a      	orrs	r2, r1
 8000670:	3306      	adds	r3, #6
 8000672:	009b      	lsls	r3, r3, #2
 8000674:	18c3      	adds	r3, r0, r3
 8000676:	3304      	adds	r3, #4
 8000678:	601a      	str	r2, [r3, #0]
 800067a:	e027      	b.n	80006cc <NVIC_SetPriority+0xcc>
 800067c:	4a16      	ldr	r2, [pc, #88]	; (80006d8 <NVIC_SetPriority+0xd8>)
 800067e:	1dfb      	adds	r3, r7, #7
 8000680:	781b      	ldrb	r3, [r3, #0]
 8000682:	b25b      	sxtb	r3, r3
 8000684:	089b      	lsrs	r3, r3, #2
 8000686:	33c0      	adds	r3, #192	; 0xc0
 8000688:	009b      	lsls	r3, r3, #2
 800068a:	589b      	ldr	r3, [r3, r2]
 800068c:	1dfa      	adds	r2, r7, #7
 800068e:	7812      	ldrb	r2, [r2, #0]
 8000690:	0011      	movs	r1, r2
 8000692:	2203      	movs	r2, #3
 8000694:	400a      	ands	r2, r1
 8000696:	00d2      	lsls	r2, r2, #3
 8000698:	21ff      	movs	r1, #255	; 0xff
 800069a:	4091      	lsls	r1, r2
 800069c:	000a      	movs	r2, r1
 800069e:	43d2      	mvns	r2, r2
 80006a0:	401a      	ands	r2, r3
 80006a2:	0011      	movs	r1, r2
 80006a4:	683b      	ldr	r3, [r7, #0]
 80006a6:	019b      	lsls	r3, r3, #6
 80006a8:	22ff      	movs	r2, #255	; 0xff
 80006aa:	401a      	ands	r2, r3
 80006ac:	1dfb      	adds	r3, r7, #7
 80006ae:	781b      	ldrb	r3, [r3, #0]
 80006b0:	0018      	movs	r0, r3
 80006b2:	2303      	movs	r3, #3
 80006b4:	4003      	ands	r3, r0
 80006b6:	00db      	lsls	r3, r3, #3
 80006b8:	409a      	lsls	r2, r3
 80006ba:	4807      	ldr	r0, [pc, #28]	; (80006d8 <NVIC_SetPriority+0xd8>)
 80006bc:	1dfb      	adds	r3, r7, #7
 80006be:	781b      	ldrb	r3, [r3, #0]
 80006c0:	b25b      	sxtb	r3, r3
 80006c2:	089b      	lsrs	r3, r3, #2
 80006c4:	430a      	orrs	r2, r1
 80006c6:	33c0      	adds	r3, #192	; 0xc0
 80006c8:	009b      	lsls	r3, r3, #2
 80006ca:	501a      	str	r2, [r3, r0]
 80006cc:	46c0      	nop			; (mov r8, r8)
 80006ce:	46bd      	mov	sp, r7
 80006d0:	b003      	add	sp, #12
 80006d2:	bd90      	pop	{r4, r7, pc}
 80006d4:	e000ed00 	.word	0xe000ed00
 80006d8:	e000e100 	.word	0xe000e100

080006dc <LL_RCC_HSI_Enable>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	4b04      	ldr	r3, [pc, #16]	; (80006f4 <LL_RCC_HSI_Enable+0x18>)
 80006e2:	681a      	ldr	r2, [r3, #0]
 80006e4:	4b03      	ldr	r3, [pc, #12]	; (80006f4 <LL_RCC_HSI_Enable+0x18>)
 80006e6:	2101      	movs	r1, #1
 80006e8:	430a      	orrs	r2, r1
 80006ea:	601a      	str	r2, [r3, #0]
 80006ec:	46c0      	nop			; (mov r8, r8)
 80006ee:	46bd      	mov	sp, r7
 80006f0:	bd80      	pop	{r7, pc}
 80006f2:	46c0      	nop			; (mov r8, r8)
 80006f4:	40021000 	.word	0x40021000

080006f8 <LL_RCC_HSI_IsReady>:
 80006f8:	b580      	push	{r7, lr}
 80006fa:	af00      	add	r7, sp, #0
 80006fc:	4b05      	ldr	r3, [pc, #20]	; (8000714 <LL_RCC_HSI_IsReady+0x1c>)
 80006fe:	681b      	ldr	r3, [r3, #0]
 8000700:	2202      	movs	r2, #2
 8000702:	4013      	ands	r3, r2
 8000704:	3b02      	subs	r3, #2
 8000706:	425a      	negs	r2, r3
 8000708:	4153      	adcs	r3, r2
 800070a:	b2db      	uxtb	r3, r3
 800070c:	0018      	movs	r0, r3
 800070e:	46bd      	mov	sp, r7
 8000710:	bd80      	pop	{r7, pc}
 8000712:	46c0      	nop			; (mov r8, r8)
 8000714:	40021000 	.word	0x40021000

08000718 <LL_RCC_SetSysClkSource>:
 8000718:	b580      	push	{r7, lr}
 800071a:	b082      	sub	sp, #8
 800071c:	af00      	add	r7, sp, #0
 800071e:	6078      	str	r0, [r7, #4]
 8000720:	4b06      	ldr	r3, [pc, #24]	; (800073c <LL_RCC_SetSysClkSource+0x24>)
 8000722:	685b      	ldr	r3, [r3, #4]
 8000724:	2203      	movs	r2, #3
 8000726:	4393      	bics	r3, r2
 8000728:	0019      	movs	r1, r3
 800072a:	4b04      	ldr	r3, [pc, #16]	; (800073c <LL_RCC_SetSysClkSource+0x24>)
 800072c:	687a      	ldr	r2, [r7, #4]
 800072e:	430a      	orrs	r2, r1
 8000730:	605a      	str	r2, [r3, #4]
 8000732:	46c0      	nop			; (mov r8, r8)
 8000734:	46bd      	mov	sp, r7
 8000736:	b002      	add	sp, #8
 8000738:	bd80      	pop	{r7, pc}
 800073a:	46c0      	nop			; (mov r8, r8)
 800073c:	40021000 	.word	0x40021000

08000740 <LL_RCC_GetSysClkSource>:
 8000740:	b580      	push	{r7, lr}
 8000742:	af00      	add	r7, sp, #0
 8000744:	4b03      	ldr	r3, [pc, #12]	; (8000754 <LL_RCC_GetSysClkSource+0x14>)
 8000746:	685b      	ldr	r3, [r3, #4]
 8000748:	220c      	movs	r2, #12
 800074a:	4013      	ands	r3, r2
 800074c:	0018      	movs	r0, r3
 800074e:	46bd      	mov	sp, r7
 8000750:	bd80      	pop	{r7, pc}
 8000752:	46c0      	nop			; (mov r8, r8)
 8000754:	40021000 	.word	0x40021000

08000758 <LL_RCC_SetAHBPrescaler>:
 8000758:	b580      	push	{r7, lr}
 800075a:	b082      	sub	sp, #8
 800075c:	af00      	add	r7, sp, #0
 800075e:	6078      	str	r0, [r7, #4]
 8000760:	4b06      	ldr	r3, [pc, #24]	; (800077c <LL_RCC_SetAHBPrescaler+0x24>)
 8000762:	685b      	ldr	r3, [r3, #4]
 8000764:	22f0      	movs	r2, #240	; 0xf0
 8000766:	4393      	bics	r3, r2
 8000768:	0019      	movs	r1, r3
 800076a:	4b04      	ldr	r3, [pc, #16]	; (800077c <LL_RCC_SetAHBPrescaler+0x24>)
 800076c:	687a      	ldr	r2, [r7, #4]
 800076e:	430a      	orrs	r2, r1
 8000770:	605a      	str	r2, [r3, #4]
 8000772:	46c0      	nop			; (mov r8, r8)
 8000774:	46bd      	mov	sp, r7
 8000776:	b002      	add	sp, #8
 8000778:	bd80      	pop	{r7, pc}
 800077a:	46c0      	nop			; (mov r8, r8)
 800077c:	40021000 	.word	0x40021000

08000780 <LL_RCC_SetAPB1Prescaler>:
 8000780:	b580      	push	{r7, lr}
 8000782:	b082      	sub	sp, #8
 8000784:	af00      	add	r7, sp, #0
 8000786:	6078      	str	r0, [r7, #4]
 8000788:	4b06      	ldr	r3, [pc, #24]	; (80007a4 <LL_RCC_SetAPB1Prescaler+0x24>)
 800078a:	685b      	ldr	r3, [r3, #4]
 800078c:	4a06      	ldr	r2, [pc, #24]	; (80007a8 <LL_RCC_SetAPB1Prescaler+0x28>)
 800078e:	4013      	ands	r3, r2
 8000790:	0019      	movs	r1, r3
 8000792:	4b04      	ldr	r3, [pc, #16]	; (80007a4 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000794:	687a      	ldr	r2, [r7, #4]
 8000796:	430a      	orrs	r2, r1
 8000798:	605a      	str	r2, [r3, #4]
 800079a:	46c0      	nop			; (mov r8, r8)
 800079c:	46bd      	mov	sp, r7
 800079e:	b002      	add	sp, #8
 80007a0:	bd80      	pop	{r7, pc}
 80007a2:	46c0      	nop			; (mov r8, r8)
 80007a4:	40021000 	.word	0x40021000
 80007a8:	fffff8ff 	.word	0xfffff8ff

080007ac <LL_RCC_PLL_Enable>:
 80007ac:	b580      	push	{r7, lr}
 80007ae:	af00      	add	r7, sp, #0
 80007b0:	4b04      	ldr	r3, [pc, #16]	; (80007c4 <LL_RCC_PLL_Enable+0x18>)
 80007b2:	681a      	ldr	r2, [r3, #0]
 80007b4:	4b03      	ldr	r3, [pc, #12]	; (80007c4 <LL_RCC_PLL_Enable+0x18>)
 80007b6:	2180      	movs	r1, #128	; 0x80
 80007b8:	0449      	lsls	r1, r1, #17
 80007ba:	430a      	orrs	r2, r1
 80007bc:	601a      	str	r2, [r3, #0]
 80007be:	46c0      	nop			; (mov r8, r8)
 80007c0:	46bd      	mov	sp, r7
 80007c2:	bd80      	pop	{r7, pc}
 80007c4:	40021000 	.word	0x40021000

080007c8 <LL_RCC_PLL_IsReady>:
 80007c8:	b580      	push	{r7, lr}
 80007ca:	af00      	add	r7, sp, #0
 80007cc:	4b07      	ldr	r3, [pc, #28]	; (80007ec <LL_RCC_PLL_IsReady+0x24>)
 80007ce:	681a      	ldr	r2, [r3, #0]
 80007d0:	2380      	movs	r3, #128	; 0x80
 80007d2:	049b      	lsls	r3, r3, #18
 80007d4:	4013      	ands	r3, r2
 80007d6:	22fe      	movs	r2, #254	; 0xfe
 80007d8:	0612      	lsls	r2, r2, #24
 80007da:	4694      	mov	ip, r2
 80007dc:	4463      	add	r3, ip
 80007de:	425a      	negs	r2, r3
 80007e0:	4153      	adcs	r3, r2
 80007e2:	b2db      	uxtb	r3, r3
 80007e4:	0018      	movs	r0, r3
 80007e6:	46bd      	mov	sp, r7
 80007e8:	bd80      	pop	{r7, pc}
 80007ea:	46c0      	nop			; (mov r8, r8)
 80007ec:	40021000 	.word	0x40021000

080007f0 <LL_RCC_PLL_ConfigDomain_SYS>:
 80007f0:	b580      	push	{r7, lr}
 80007f2:	b082      	sub	sp, #8
 80007f4:	af00      	add	r7, sp, #0
 80007f6:	6078      	str	r0, [r7, #4]
 80007f8:	6039      	str	r1, [r7, #0]
 80007fa:	4b0e      	ldr	r3, [pc, #56]	; (8000834 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80007fc:	685b      	ldr	r3, [r3, #4]
 80007fe:	4a0e      	ldr	r2, [pc, #56]	; (8000838 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000800:	4013      	ands	r3, r2
 8000802:	0019      	movs	r1, r3
 8000804:	687a      	ldr	r2, [r7, #4]
 8000806:	2380      	movs	r3, #128	; 0x80
 8000808:	025b      	lsls	r3, r3, #9
 800080a:	401a      	ands	r2, r3
 800080c:	683b      	ldr	r3, [r7, #0]
 800080e:	431a      	orrs	r2, r3
 8000810:	4b08      	ldr	r3, [pc, #32]	; (8000834 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000812:	430a      	orrs	r2, r1
 8000814:	605a      	str	r2, [r3, #4]
 8000816:	4b07      	ldr	r3, [pc, #28]	; (8000834 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000818:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800081a:	220f      	movs	r2, #15
 800081c:	4393      	bics	r3, r2
 800081e:	0019      	movs	r1, r3
 8000820:	687b      	ldr	r3, [r7, #4]
 8000822:	220f      	movs	r2, #15
 8000824:	401a      	ands	r2, r3
 8000826:	4b03      	ldr	r3, [pc, #12]	; (8000834 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000828:	430a      	orrs	r2, r1
 800082a:	62da      	str	r2, [r3, #44]	; 0x2c
 800082c:	46c0      	nop			; (mov r8, r8)
 800082e:	46bd      	mov	sp, r7
 8000830:	b002      	add	sp, #8
 8000832:	bd80      	pop	{r7, pc}
 8000834:	40021000 	.word	0x40021000
 8000838:	ffc2ffff 	.word	0xffc2ffff

0800083c <LL_SYSCFG_SetEXTISource>:
 800083c:	b590      	push	{r4, r7, lr}
 800083e:	b083      	sub	sp, #12
 8000840:	af00      	add	r7, sp, #0
 8000842:	6078      	str	r0, [r7, #4]
 8000844:	6039      	str	r1, [r7, #0]
 8000846:	4a0f      	ldr	r2, [pc, #60]	; (8000884 <LL_SYSCFG_SetEXTISource+0x48>)
 8000848:	683b      	ldr	r3, [r7, #0]
 800084a:	21ff      	movs	r1, #255	; 0xff
 800084c:	400b      	ands	r3, r1
 800084e:	3302      	adds	r3, #2
 8000850:	009b      	lsls	r3, r3, #2
 8000852:	589b      	ldr	r3, [r3, r2]
 8000854:	683a      	ldr	r2, [r7, #0]
 8000856:	0c12      	lsrs	r2, r2, #16
 8000858:	210f      	movs	r1, #15
 800085a:	4091      	lsls	r1, r2
 800085c:	000a      	movs	r2, r1
 800085e:	43d2      	mvns	r2, r2
 8000860:	401a      	ands	r2, r3
 8000862:	0011      	movs	r1, r2
 8000864:	683b      	ldr	r3, [r7, #0]
 8000866:	0c1b      	lsrs	r3, r3, #16
 8000868:	687a      	ldr	r2, [r7, #4]
 800086a:	409a      	lsls	r2, r3
 800086c:	4805      	ldr	r0, [pc, #20]	; (8000884 <LL_SYSCFG_SetEXTISource+0x48>)
 800086e:	683b      	ldr	r3, [r7, #0]
 8000870:	24ff      	movs	r4, #255	; 0xff
 8000872:	4023      	ands	r3, r4
 8000874:	430a      	orrs	r2, r1
 8000876:	3302      	adds	r3, #2
 8000878:	009b      	lsls	r3, r3, #2
 800087a:	501a      	str	r2, [r3, r0]
 800087c:	46c0      	nop			; (mov r8, r8)
 800087e:	46bd      	mov	sp, r7
 8000880:	b003      	add	sp, #12
 8000882:	bd90      	pop	{r4, r7, pc}
 8000884:	40010000 	.word	0x40010000

08000888 <LL_FLASH_SetLatency>:
 8000888:	b580      	push	{r7, lr}
 800088a:	b082      	sub	sp, #8
 800088c:	af00      	add	r7, sp, #0
 800088e:	6078      	str	r0, [r7, #4]
 8000890:	4b06      	ldr	r3, [pc, #24]	; (80008ac <LL_FLASH_SetLatency+0x24>)
 8000892:	681b      	ldr	r3, [r3, #0]
 8000894:	2201      	movs	r2, #1
 8000896:	4393      	bics	r3, r2
 8000898:	0019      	movs	r1, r3
 800089a:	4b04      	ldr	r3, [pc, #16]	; (80008ac <LL_FLASH_SetLatency+0x24>)
 800089c:	687a      	ldr	r2, [r7, #4]
 800089e:	430a      	orrs	r2, r1
 80008a0:	601a      	str	r2, [r3, #0]
 80008a2:	46c0      	nop			; (mov r8, r8)
 80008a4:	46bd      	mov	sp, r7
 80008a6:	b002      	add	sp, #8
 80008a8:	bd80      	pop	{r7, pc}
 80008aa:	46c0      	nop			; (mov r8, r8)
 80008ac:	40022000 	.word	0x40022000

080008b0 <LL_AHB1_GRP1_EnableClock>:
 80008b0:	b580      	push	{r7, lr}
 80008b2:	b084      	sub	sp, #16
 80008b4:	af00      	add	r7, sp, #0
 80008b6:	6078      	str	r0, [r7, #4]
 80008b8:	4b07      	ldr	r3, [pc, #28]	; (80008d8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008ba:	6959      	ldr	r1, [r3, #20]
 80008bc:	4b06      	ldr	r3, [pc, #24]	; (80008d8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008be:	687a      	ldr	r2, [r7, #4]
 80008c0:	430a      	orrs	r2, r1
 80008c2:	615a      	str	r2, [r3, #20]
 80008c4:	4b04      	ldr	r3, [pc, #16]	; (80008d8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008c6:	695b      	ldr	r3, [r3, #20]
 80008c8:	687a      	ldr	r2, [r7, #4]
 80008ca:	4013      	ands	r3, r2
 80008cc:	60fb      	str	r3, [r7, #12]
 80008ce:	68fb      	ldr	r3, [r7, #12]
 80008d0:	46c0      	nop			; (mov r8, r8)
 80008d2:	46bd      	mov	sp, r7
 80008d4:	b004      	add	sp, #16
 80008d6:	bd80      	pop	{r7, pc}
 80008d8:	40021000 	.word	0x40021000

080008dc <LL_APB1_GRP1_EnableClock>:
 80008dc:	b580      	push	{r7, lr}
 80008de:	b084      	sub	sp, #16
 80008e0:	af00      	add	r7, sp, #0
 80008e2:	6078      	str	r0, [r7, #4]
 80008e4:	4b07      	ldr	r3, [pc, #28]	; (8000904 <LL_APB1_GRP1_EnableClock+0x28>)
 80008e6:	69d9      	ldr	r1, [r3, #28]
 80008e8:	4b06      	ldr	r3, [pc, #24]	; (8000904 <LL_APB1_GRP1_EnableClock+0x28>)
 80008ea:	687a      	ldr	r2, [r7, #4]
 80008ec:	430a      	orrs	r2, r1
 80008ee:	61da      	str	r2, [r3, #28]
 80008f0:	4b04      	ldr	r3, [pc, #16]	; (8000904 <LL_APB1_GRP1_EnableClock+0x28>)
 80008f2:	69db      	ldr	r3, [r3, #28]
 80008f4:	687a      	ldr	r2, [r7, #4]
 80008f6:	4013      	ands	r3, r2
 80008f8:	60fb      	str	r3, [r7, #12]
 80008fa:	68fb      	ldr	r3, [r7, #12]
 80008fc:	46c0      	nop			; (mov r8, r8)
 80008fe:	46bd      	mov	sp, r7
 8000900:	b004      	add	sp, #16
 8000902:	bd80      	pop	{r7, pc}
 8000904:	40021000 	.word	0x40021000

08000908 <LL_APB1_GRP2_EnableClock>:
 8000908:	b580      	push	{r7, lr}
 800090a:	b084      	sub	sp, #16
 800090c:	af00      	add	r7, sp, #0
 800090e:	6078      	str	r0, [r7, #4]
 8000910:	4b07      	ldr	r3, [pc, #28]	; (8000930 <LL_APB1_GRP2_EnableClock+0x28>)
 8000912:	6999      	ldr	r1, [r3, #24]
 8000914:	4b06      	ldr	r3, [pc, #24]	; (8000930 <LL_APB1_GRP2_EnableClock+0x28>)
 8000916:	687a      	ldr	r2, [r7, #4]
 8000918:	430a      	orrs	r2, r1
 800091a:	619a      	str	r2, [r3, #24]
 800091c:	4b04      	ldr	r3, [pc, #16]	; (8000930 <LL_APB1_GRP2_EnableClock+0x28>)
 800091e:	699b      	ldr	r3, [r3, #24]
 8000920:	687a      	ldr	r2, [r7, #4]
 8000922:	4013      	ands	r3, r2
 8000924:	60fb      	str	r3, [r7, #12]
 8000926:	68fb      	ldr	r3, [r7, #12]
 8000928:	46c0      	nop			; (mov r8, r8)
 800092a:	46bd      	mov	sp, r7
 800092c:	b004      	add	sp, #16
 800092e:	bd80      	pop	{r7, pc}
 8000930:	40021000 	.word	0x40021000

08000934 <LL_GPIO_SetPinMode>:
 8000934:	b580      	push	{r7, lr}
 8000936:	b084      	sub	sp, #16
 8000938:	af00      	add	r7, sp, #0
 800093a:	60f8      	str	r0, [r7, #12]
 800093c:	60b9      	str	r1, [r7, #8]
 800093e:	607a      	str	r2, [r7, #4]
 8000940:	68fb      	ldr	r3, [r7, #12]
 8000942:	6819      	ldr	r1, [r3, #0]
 8000944:	68bb      	ldr	r3, [r7, #8]
 8000946:	68ba      	ldr	r2, [r7, #8]
 8000948:	435a      	muls	r2, r3
 800094a:	0013      	movs	r3, r2
 800094c:	005b      	lsls	r3, r3, #1
 800094e:	189b      	adds	r3, r3, r2
 8000950:	43db      	mvns	r3, r3
 8000952:	400b      	ands	r3, r1
 8000954:	001a      	movs	r2, r3
 8000956:	68bb      	ldr	r3, [r7, #8]
 8000958:	68b9      	ldr	r1, [r7, #8]
 800095a:	434b      	muls	r3, r1
 800095c:	6879      	ldr	r1, [r7, #4]
 800095e:	434b      	muls	r3, r1
 8000960:	431a      	orrs	r2, r3
 8000962:	68fb      	ldr	r3, [r7, #12]
 8000964:	601a      	str	r2, [r3, #0]
 8000966:	46c0      	nop			; (mov r8, r8)
 8000968:	46bd      	mov	sp, r7
 800096a:	b004      	add	sp, #16
 800096c:	bd80      	pop	{r7, pc}

0800096e <LL_GPIO_SetPinPull>:
 800096e:	b580      	push	{r7, lr}
 8000970:	b084      	sub	sp, #16
 8000972:	af00      	add	r7, sp, #0
 8000974:	60f8      	str	r0, [r7, #12]
 8000976:	60b9      	str	r1, [r7, #8]
 8000978:	607a      	str	r2, [r7, #4]
 800097a:	68fb      	ldr	r3, [r7, #12]
 800097c:	68d9      	ldr	r1, [r3, #12]
 800097e:	68bb      	ldr	r3, [r7, #8]
 8000980:	68ba      	ldr	r2, [r7, #8]
 8000982:	435a      	muls	r2, r3
 8000984:	0013      	movs	r3, r2
 8000986:	005b      	lsls	r3, r3, #1
 8000988:	189b      	adds	r3, r3, r2
 800098a:	43db      	mvns	r3, r3
 800098c:	400b      	ands	r3, r1
 800098e:	001a      	movs	r2, r3
 8000990:	68bb      	ldr	r3, [r7, #8]
 8000992:	68b9      	ldr	r1, [r7, #8]
 8000994:	434b      	muls	r3, r1
 8000996:	6879      	ldr	r1, [r7, #4]
 8000998:	434b      	muls	r3, r1
 800099a:	431a      	orrs	r2, r3
 800099c:	68fb      	ldr	r3, [r7, #12]
 800099e:	60da      	str	r2, [r3, #12]
 80009a0:	46c0      	nop			; (mov r8, r8)
 80009a2:	46bd      	mov	sp, r7
 80009a4:	b004      	add	sp, #16
 80009a6:	bd80      	pop	{r7, pc}

080009a8 <LL_GPIO_ReadInputPort>:
 80009a8:	b580      	push	{r7, lr}
 80009aa:	b082      	sub	sp, #8
 80009ac:	af00      	add	r7, sp, #0
 80009ae:	6078      	str	r0, [r7, #4]
 80009b0:	687b      	ldr	r3, [r7, #4]
 80009b2:	691b      	ldr	r3, [r3, #16]
 80009b4:	0018      	movs	r0, r3
 80009b6:	46bd      	mov	sp, r7
 80009b8:	b002      	add	sp, #8
 80009ba:	bd80      	pop	{r7, pc}

080009bc <LL_EXTI_EnableIT_0_31>:
 80009bc:	b580      	push	{r7, lr}
 80009be:	b082      	sub	sp, #8
 80009c0:	af00      	add	r7, sp, #0
 80009c2:	6078      	str	r0, [r7, #4]
 80009c4:	4b04      	ldr	r3, [pc, #16]	; (80009d8 <LL_EXTI_EnableIT_0_31+0x1c>)
 80009c6:	6819      	ldr	r1, [r3, #0]
 80009c8:	4b03      	ldr	r3, [pc, #12]	; (80009d8 <LL_EXTI_EnableIT_0_31+0x1c>)
 80009ca:	687a      	ldr	r2, [r7, #4]
 80009cc:	430a      	orrs	r2, r1
 80009ce:	601a      	str	r2, [r3, #0]
 80009d0:	46c0      	nop			; (mov r8, r8)
 80009d2:	46bd      	mov	sp, r7
 80009d4:	b002      	add	sp, #8
 80009d6:	bd80      	pop	{r7, pc}
 80009d8:	40010400 	.word	0x40010400

080009dc <LL_EXTI_EnableRisingTrig_0_31>:
 80009dc:	b580      	push	{r7, lr}
 80009de:	b082      	sub	sp, #8
 80009e0:	af00      	add	r7, sp, #0
 80009e2:	6078      	str	r0, [r7, #4]
 80009e4:	4b04      	ldr	r3, [pc, #16]	; (80009f8 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80009e6:	6899      	ldr	r1, [r3, #8]
 80009e8:	4b03      	ldr	r3, [pc, #12]	; (80009f8 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80009ea:	687a      	ldr	r2, [r7, #4]
 80009ec:	430a      	orrs	r2, r1
 80009ee:	609a      	str	r2, [r3, #8]
 80009f0:	46c0      	nop			; (mov r8, r8)
 80009f2:	46bd      	mov	sp, r7
 80009f4:	b002      	add	sp, #8
 80009f6:	bd80      	pop	{r7, pc}
 80009f8:	40010400 	.word	0x40010400

080009fc <LL_EXTI_EnableFallingTrig_0_31>:
 80009fc:	b580      	push	{r7, lr}
 80009fe:	b082      	sub	sp, #8
 8000a00:	af00      	add	r7, sp, #0
 8000a02:	6078      	str	r0, [r7, #4]
 8000a04:	4b04      	ldr	r3, [pc, #16]	; (8000a18 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 8000a06:	68d9      	ldr	r1, [r3, #12]
 8000a08:	4b03      	ldr	r3, [pc, #12]	; (8000a18 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 8000a0a:	687a      	ldr	r2, [r7, #4]
 8000a0c:	430a      	orrs	r2, r1
 8000a0e:	60da      	str	r2, [r3, #12]
 8000a10:	46c0      	nop			; (mov r8, r8)
 8000a12:	46bd      	mov	sp, r7
 8000a14:	b002      	add	sp, #8
 8000a16:	bd80      	pop	{r7, pc}
 8000a18:	40010400 	.word	0x40010400

08000a1c <LL_EXTI_ClearFlag_0_31>:
 8000a1c:	b580      	push	{r7, lr}
 8000a1e:	b082      	sub	sp, #8
 8000a20:	af00      	add	r7, sp, #0
 8000a22:	6078      	str	r0, [r7, #4]
 8000a24:	4b03      	ldr	r3, [pc, #12]	; (8000a34 <LL_EXTI_ClearFlag_0_31+0x18>)
 8000a26:	687a      	ldr	r2, [r7, #4]
 8000a28:	615a      	str	r2, [r3, #20]
 8000a2a:	46c0      	nop			; (mov r8, r8)
 8000a2c:	46bd      	mov	sp, r7
 8000a2e:	b002      	add	sp, #8
 8000a30:	bd80      	pop	{r7, pc}
 8000a32:	46c0      	nop			; (mov r8, r8)
 8000a34:	40010400 	.word	0x40010400

08000a38 <LL_TIM_EnableCounter>:
 8000a38:	b580      	push	{r7, lr}
 8000a3a:	b082      	sub	sp, #8
 8000a3c:	af00      	add	r7, sp, #0
 8000a3e:	6078      	str	r0, [r7, #4]
 8000a40:	687b      	ldr	r3, [r7, #4]
 8000a42:	681b      	ldr	r3, [r3, #0]
 8000a44:	2201      	movs	r2, #1
 8000a46:	431a      	orrs	r2, r3
 8000a48:	687b      	ldr	r3, [r7, #4]
 8000a4a:	601a      	str	r2, [r3, #0]
 8000a4c:	46c0      	nop			; (mov r8, r8)
 8000a4e:	46bd      	mov	sp, r7
 8000a50:	b002      	add	sp, #8
 8000a52:	bd80      	pop	{r7, pc}

08000a54 <LL_TIM_SetCounterMode>:
 8000a54:	b580      	push	{r7, lr}
 8000a56:	b082      	sub	sp, #8
 8000a58:	af00      	add	r7, sp, #0
 8000a5a:	6078      	str	r0, [r7, #4]
 8000a5c:	6039      	str	r1, [r7, #0]
 8000a5e:	687b      	ldr	r3, [r7, #4]
 8000a60:	681b      	ldr	r3, [r3, #0]
 8000a62:	2270      	movs	r2, #112	; 0x70
 8000a64:	4393      	bics	r3, r2
 8000a66:	001a      	movs	r2, r3
 8000a68:	683b      	ldr	r3, [r7, #0]
 8000a6a:	431a      	orrs	r2, r3
 8000a6c:	687b      	ldr	r3, [r7, #4]
 8000a6e:	601a      	str	r2, [r3, #0]
 8000a70:	46c0      	nop			; (mov r8, r8)
 8000a72:	46bd      	mov	sp, r7
 8000a74:	b002      	add	sp, #8
 8000a76:	bd80      	pop	{r7, pc}

08000a78 <LL_TIM_SetPrescaler>:
 8000a78:	b580      	push	{r7, lr}
 8000a7a:	b082      	sub	sp, #8
 8000a7c:	af00      	add	r7, sp, #0
 8000a7e:	6078      	str	r0, [r7, #4]
 8000a80:	6039      	str	r1, [r7, #0]
 8000a82:	687b      	ldr	r3, [r7, #4]
 8000a84:	683a      	ldr	r2, [r7, #0]
 8000a86:	629a      	str	r2, [r3, #40]	; 0x28
 8000a88:	46c0      	nop			; (mov r8, r8)
 8000a8a:	46bd      	mov	sp, r7
 8000a8c:	b002      	add	sp, #8
 8000a8e:	bd80      	pop	{r7, pc}

08000a90 <LL_TIM_SetAutoReload>:
 8000a90:	b580      	push	{r7, lr}
 8000a92:	b082      	sub	sp, #8
 8000a94:	af00      	add	r7, sp, #0
 8000a96:	6078      	str	r0, [r7, #4]
 8000a98:	6039      	str	r1, [r7, #0]
 8000a9a:	687b      	ldr	r3, [r7, #4]
 8000a9c:	683a      	ldr	r2, [r7, #0]
 8000a9e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000aa0:	46c0      	nop			; (mov r8, r8)
 8000aa2:	46bd      	mov	sp, r7
 8000aa4:	b002      	add	sp, #8
 8000aa6:	bd80      	pop	{r7, pc}

08000aa8 <LL_TIM_ClearFlag_UPDATE>:
 8000aa8:	b580      	push	{r7, lr}
 8000aaa:	b082      	sub	sp, #8
 8000aac:	af00      	add	r7, sp, #0
 8000aae:	6078      	str	r0, [r7, #4]
 8000ab0:	687b      	ldr	r3, [r7, #4]
 8000ab2:	2202      	movs	r2, #2
 8000ab4:	4252      	negs	r2, r2
 8000ab6:	611a      	str	r2, [r3, #16]
 8000ab8:	46c0      	nop			; (mov r8, r8)
 8000aba:	46bd      	mov	sp, r7
 8000abc:	b002      	add	sp, #8
 8000abe:	bd80      	pop	{r7, pc}

08000ac0 <LL_TIM_EnableIT_UPDATE>:
 8000ac0:	b580      	push	{r7, lr}
 8000ac2:	b082      	sub	sp, #8
 8000ac4:	af00      	add	r7, sp, #0
 8000ac6:	6078      	str	r0, [r7, #4]
 8000ac8:	687b      	ldr	r3, [r7, #4]
 8000aca:	68db      	ldr	r3, [r3, #12]
 8000acc:	2201      	movs	r2, #1
 8000ace:	431a      	orrs	r2, r3
 8000ad0:	687b      	ldr	r3, [r7, #4]
 8000ad2:	60da      	str	r2, [r3, #12]
 8000ad4:	46c0      	nop			; (mov r8, r8)
 8000ad6:	46bd      	mov	sp, r7
 8000ad8:	b002      	add	sp, #8
 8000ada:	bd80      	pop	{r7, pc}

08000adc <random>:
 8000adc:	b580      	push	{r7, lr}
 8000ade:	b082      	sub	sp, #8
 8000ae0:	af00      	add	r7, sp, #0
 8000ae2:	4b25      	ldr	r3, [pc, #148]	; (8000b78 <random+0x9c>)
 8000ae4:	781b      	ldrb	r3, [r3, #0]
 8000ae6:	2b63      	cmp	r3, #99	; 0x63
 8000ae8:	d103      	bne.n	8000af2 <random+0x16>
 8000aea:	4b23      	ldr	r3, [pc, #140]	; (8000b78 <random+0x9c>)
 8000aec:	2200      	movs	r2, #0
 8000aee:	701a      	strb	r2, [r3, #0]
 8000af0:	e005      	b.n	8000afe <random+0x22>
 8000af2:	4b21      	ldr	r3, [pc, #132]	; (8000b78 <random+0x9c>)
 8000af4:	781b      	ldrb	r3, [r3, #0]
 8000af6:	3301      	adds	r3, #1
 8000af8:	b2da      	uxtb	r2, r3
 8000afa:	4b1f      	ldr	r3, [pc, #124]	; (8000b78 <random+0x9c>)
 8000afc:	701a      	strb	r2, [r3, #0]
 8000afe:	4b1e      	ldr	r3, [pc, #120]	; (8000b78 <random+0x9c>)
 8000b00:	781b      	ldrb	r3, [r3, #0]
 8000b02:	3b18      	subs	r3, #24
 8000b04:	b2da      	uxtb	r2, r3
 8000b06:	1dfb      	adds	r3, r7, #7
 8000b08:	701a      	strb	r2, [r3, #0]
 8000b0a:	4b1b      	ldr	r3, [pc, #108]	; (8000b78 <random+0x9c>)
 8000b0c:	781b      	ldrb	r3, [r3, #0]
 8000b0e:	3b37      	subs	r3, #55	; 0x37
 8000b10:	b2da      	uxtb	r2, r3
 8000b12:	1dbb      	adds	r3, r7, #6
 8000b14:	701a      	strb	r2, [r3, #0]
 8000b16:	1dfb      	adds	r3, r7, #7
 8000b18:	781b      	ldrb	r3, [r3, #0]
 8000b1a:	2b7f      	cmp	r3, #127	; 0x7f
 8000b1c:	d904      	bls.n	8000b28 <random+0x4c>
 8000b1e:	1dfb      	adds	r3, r7, #7
 8000b20:	781b      	ldrb	r3, [r3, #0]
 8000b22:	b25b      	sxtb	r3, r3
 8000b24:	3364      	adds	r3, #100	; 0x64
 8000b26:	e002      	b.n	8000b2e <random+0x52>
 8000b28:	1dfb      	adds	r3, r7, #7
 8000b2a:	781b      	ldrb	r3, [r3, #0]
 8000b2c:	b25b      	sxtb	r3, r3
 8000b2e:	4a13      	ldr	r2, [pc, #76]	; (8000b7c <random+0xa0>)
 8000b30:	5cd2      	ldrb	r2, [r2, r3]
 8000b32:	1dbb      	adds	r3, r7, #6
 8000b34:	781b      	ldrb	r3, [r3, #0]
 8000b36:	2b7f      	cmp	r3, #127	; 0x7f
 8000b38:	d904      	bls.n	8000b44 <random+0x68>
 8000b3a:	1dbb      	adds	r3, r7, #6
 8000b3c:	781b      	ldrb	r3, [r3, #0]
 8000b3e:	b25b      	sxtb	r3, r3
 8000b40:	3364      	adds	r3, #100	; 0x64
 8000b42:	e002      	b.n	8000b4a <random+0x6e>
 8000b44:	1dbb      	adds	r3, r7, #6
 8000b46:	781b      	ldrb	r3, [r3, #0]
 8000b48:	b25b      	sxtb	r3, r3
 8000b4a:	490c      	ldr	r1, [pc, #48]	; (8000b7c <random+0xa0>)
 8000b4c:	5ccb      	ldrb	r3, [r1, r3]
 8000b4e:	18d3      	adds	r3, r2, r3
 8000b50:	b2db      	uxtb	r3, r3
 8000b52:	227f      	movs	r2, #127	; 0x7f
 8000b54:	4013      	ands	r3, r2
 8000b56:	b2db      	uxtb	r3, r3
 8000b58:	4a07      	ldr	r2, [pc, #28]	; (8000b78 <random+0x9c>)
 8000b5a:	7812      	ldrb	r2, [r2, #0]
 8000b5c:	3378      	adds	r3, #120	; 0x78
 8000b5e:	b2d9      	uxtb	r1, r3
 8000b60:	4b06      	ldr	r3, [pc, #24]	; (8000b7c <random+0xa0>)
 8000b62:	5499      	strb	r1, [r3, r2]
 8000b64:	4b04      	ldr	r3, [pc, #16]	; (8000b78 <random+0x9c>)
 8000b66:	781b      	ldrb	r3, [r3, #0]
 8000b68:	001a      	movs	r2, r3
 8000b6a:	4b04      	ldr	r3, [pc, #16]	; (8000b7c <random+0xa0>)
 8000b6c:	5c9b      	ldrb	r3, [r3, r2]
 8000b6e:	0018      	movs	r0, r3
 8000b70:	46bd      	mov	sp, r7
 8000b72:	b002      	add	sp, #8
 8000b74:	bd80      	pop	{r7, pc}
 8000b76:	46c0      	nop			; (mov r8, r8)
 8000b78:	2000004c 	.word	0x2000004c
 8000b7c:	20000050 	.word	0x20000050

08000b80 <moveForward>:
 8000b80:	b5b0      	push	{r4, r5, r7, lr}
 8000b82:	b084      	sub	sp, #16
 8000b84:	af00      	add	r7, sp, #0
 8000b86:	6078      	str	r0, [r7, #4]
 8000b88:	687b      	ldr	r3, [r7, #4]
 8000b8a:	2200      	movs	r2, #0
 8000b8c:	5e9b      	ldrsh	r3, [r3, r2]
 8000b8e:	b29a      	uxth	r2, r3
 8000b90:	4b2f      	ldr	r3, [pc, #188]	; (8000c50 <moveForward+0xd0>)
 8000b92:	781b      	ldrb	r3, [r3, #0]
 8000b94:	b29b      	uxth	r3, r3
 8000b96:	18d3      	adds	r3, r2, r3
 8000b98:	b29b      	uxth	r3, r3
 8000b9a:	b21a      	sxth	r2, r3
 8000b9c:	687b      	ldr	r3, [r7, #4]
 8000b9e:	801a      	strh	r2, [r3, #0]
 8000ba0:	230e      	movs	r3, #14
 8000ba2:	18fb      	adds	r3, r7, r3
 8000ba4:	687a      	ldr	r2, [r7, #4]
 8000ba6:	8812      	ldrh	r2, [r2, #0]
 8000ba8:	801a      	strh	r2, [r3, #0]
 8000baa:	230c      	movs	r3, #12
 8000bac:	18fb      	adds	r3, r7, r3
 8000bae:	2200      	movs	r2, #0
 8000bb0:	801a      	strh	r2, [r3, #0]
 8000bb2:	e042      	b.n	8000c3a <moveForward+0xba>
 8000bb4:	240c      	movs	r4, #12
 8000bb6:	193b      	adds	r3, r7, r4
 8000bb8:	881a      	ldrh	r2, [r3, #0]
 8000bba:	687b      	ldr	r3, [r7, #4]
 8000bbc:	791b      	ldrb	r3, [r3, #4]
 8000bbe:	0019      	movs	r1, r3
 8000bc0:	0010      	movs	r0, r2
 8000bc2:	f7ff fc11 	bl	80003e8 <__aeabi_idivmod>
 8000bc6:	1e0b      	subs	r3, r1, #0
 8000bc8:	d10c      	bne.n	8000be4 <moveForward+0x64>
 8000bca:	193b      	adds	r3, r7, r4
 8000bcc:	881b      	ldrh	r3, [r3, #0]
 8000bce:	2b00      	cmp	r3, #0
 8000bd0:	d008      	beq.n	8000be4 <moveForward+0x64>
 8000bd2:	210e      	movs	r1, #14
 8000bd4:	187b      	adds	r3, r7, r1
 8000bd6:	2200      	movs	r2, #0
 8000bd8:	5e9b      	ldrsh	r3, [r3, r2]
 8000bda:	b29b      	uxth	r3, r3
 8000bdc:	3301      	adds	r3, #1
 8000bde:	b29a      	uxth	r2, r3
 8000be0:	187b      	adds	r3, r7, r1
 8000be2:	801a      	strh	r2, [r3, #0]
 8000be4:	687b      	ldr	r3, [r7, #4]
 8000be6:	2202      	movs	r2, #2
 8000be8:	5e9b      	ldrsh	r3, [r3, r2]
 8000bea:	b29c      	uxth	r4, r3
 8000bec:	250c      	movs	r5, #12
 8000bee:	197b      	adds	r3, r7, r5
 8000bf0:	881a      	ldrh	r2, [r3, #0]
 8000bf2:	687b      	ldr	r3, [r7, #4]
 8000bf4:	791b      	ldrb	r3, [r3, #4]
 8000bf6:	0019      	movs	r1, r3
 8000bf8:	0010      	movs	r0, r2
 8000bfa:	f7ff fbf5 	bl	80003e8 <__aeabi_idivmod>
 8000bfe:	000b      	movs	r3, r1
 8000c00:	b29b      	uxth	r3, r3
 8000c02:	18e3      	adds	r3, r4, r3
 8000c04:	b29b      	uxth	r3, r3
 8000c06:	b218      	sxth	r0, r3
 8000c08:	687b      	ldr	r3, [r7, #4]
 8000c0a:	689a      	ldr	r2, [r3, #8]
 8000c0c:	197b      	adds	r3, r7, r5
 8000c0e:	881b      	ldrh	r3, [r3, #0]
 8000c10:	18d3      	adds	r3, r2, r3
 8000c12:	781a      	ldrb	r2, [r3, #0]
 8000c14:	2177      	movs	r1, #119	; 0x77
 8000c16:	2300      	movs	r3, #0
 8000c18:	4291      	cmp	r1, r2
 8000c1a:	415b      	adcs	r3, r3
 8000c1c:	b2db      	uxtb	r3, r3
 8000c1e:	001a      	movs	r2, r3
 8000c20:	230e      	movs	r3, #14
 8000c22:	18fb      	adds	r3, r7, r3
 8000c24:	2100      	movs	r1, #0
 8000c26:	5e5b      	ldrsh	r3, [r3, r1]
 8000c28:	0001      	movs	r1, r0
 8000c2a:	0018      	movs	r0, r3
 8000c2c:	f000 ff0c 	bl	8001a48 <oledSetPix>
 8000c30:	197b      	adds	r3, r7, r5
 8000c32:	881a      	ldrh	r2, [r3, #0]
 8000c34:	197b      	adds	r3, r7, r5
 8000c36:	3201      	adds	r2, #1
 8000c38:	801a      	strh	r2, [r3, #0]
 8000c3a:	687b      	ldr	r3, [r7, #4]
 8000c3c:	88db      	ldrh	r3, [r3, #6]
 8000c3e:	220c      	movs	r2, #12
 8000c40:	18ba      	adds	r2, r7, r2
 8000c42:	8812      	ldrh	r2, [r2, #0]
 8000c44:	429a      	cmp	r2, r3
 8000c46:	d3b5      	bcc.n	8000bb4 <moveForward+0x34>
 8000c48:	46c0      	nop			; (mov r8, r8)
 8000c4a:	46bd      	mov	sp, r7
 8000c4c:	b004      	add	sp, #16
 8000c4e:	bdb0      	pop	{r4, r5, r7, pc}
 8000c50:	200000c4 	.word	0x200000c4

08000c54 <drawModel>:
 8000c54:	b5b0      	push	{r4, r5, r7, lr}
 8000c56:	b084      	sub	sp, #16
 8000c58:	af00      	add	r7, sp, #0
 8000c5a:	6078      	str	r0, [r7, #4]
 8000c5c:	230e      	movs	r3, #14
 8000c5e:	18fb      	adds	r3, r7, r3
 8000c60:	687a      	ldr	r2, [r7, #4]
 8000c62:	8812      	ldrh	r2, [r2, #0]
 8000c64:	801a      	strh	r2, [r3, #0]
 8000c66:	230c      	movs	r3, #12
 8000c68:	18fb      	adds	r3, r7, r3
 8000c6a:	2200      	movs	r2, #0
 8000c6c:	801a      	strh	r2, [r3, #0]
 8000c6e:	e042      	b.n	8000cf6 <drawModel+0xa2>
 8000c70:	240c      	movs	r4, #12
 8000c72:	193b      	adds	r3, r7, r4
 8000c74:	881a      	ldrh	r2, [r3, #0]
 8000c76:	687b      	ldr	r3, [r7, #4]
 8000c78:	791b      	ldrb	r3, [r3, #4]
 8000c7a:	0019      	movs	r1, r3
 8000c7c:	0010      	movs	r0, r2
 8000c7e:	f7ff fbb3 	bl	80003e8 <__aeabi_idivmod>
 8000c82:	1e0b      	subs	r3, r1, #0
 8000c84:	d10c      	bne.n	8000ca0 <drawModel+0x4c>
 8000c86:	193b      	adds	r3, r7, r4
 8000c88:	881b      	ldrh	r3, [r3, #0]
 8000c8a:	2b00      	cmp	r3, #0
 8000c8c:	d008      	beq.n	8000ca0 <drawModel+0x4c>
 8000c8e:	210e      	movs	r1, #14
 8000c90:	187b      	adds	r3, r7, r1
 8000c92:	2200      	movs	r2, #0
 8000c94:	5e9b      	ldrsh	r3, [r3, r2]
 8000c96:	b29b      	uxth	r3, r3
 8000c98:	3301      	adds	r3, #1
 8000c9a:	b29a      	uxth	r2, r3
 8000c9c:	187b      	adds	r3, r7, r1
 8000c9e:	801a      	strh	r2, [r3, #0]
 8000ca0:	687b      	ldr	r3, [r7, #4]
 8000ca2:	2202      	movs	r2, #2
 8000ca4:	5e9b      	ldrsh	r3, [r3, r2]
 8000ca6:	b29c      	uxth	r4, r3
 8000ca8:	250c      	movs	r5, #12
 8000caa:	197b      	adds	r3, r7, r5
 8000cac:	881a      	ldrh	r2, [r3, #0]
 8000cae:	687b      	ldr	r3, [r7, #4]
 8000cb0:	791b      	ldrb	r3, [r3, #4]
 8000cb2:	0019      	movs	r1, r3
 8000cb4:	0010      	movs	r0, r2
 8000cb6:	f7ff fb97 	bl	80003e8 <__aeabi_idivmod>
 8000cba:	000b      	movs	r3, r1
 8000cbc:	b29b      	uxth	r3, r3
 8000cbe:	18e3      	adds	r3, r4, r3
 8000cc0:	b29b      	uxth	r3, r3
 8000cc2:	b218      	sxth	r0, r3
 8000cc4:	687b      	ldr	r3, [r7, #4]
 8000cc6:	689a      	ldr	r2, [r3, #8]
 8000cc8:	197b      	adds	r3, r7, r5
 8000cca:	881b      	ldrh	r3, [r3, #0]
 8000ccc:	18d3      	adds	r3, r2, r3
 8000cce:	781a      	ldrb	r2, [r3, #0]
 8000cd0:	2177      	movs	r1, #119	; 0x77
 8000cd2:	2300      	movs	r3, #0
 8000cd4:	4291      	cmp	r1, r2
 8000cd6:	415b      	adcs	r3, r3
 8000cd8:	b2db      	uxtb	r3, r3
 8000cda:	001a      	movs	r2, r3
 8000cdc:	230e      	movs	r3, #14
 8000cde:	18fb      	adds	r3, r7, r3
 8000ce0:	2100      	movs	r1, #0
 8000ce2:	5e5b      	ldrsh	r3, [r3, r1]
 8000ce4:	0001      	movs	r1, r0
 8000ce6:	0018      	movs	r0, r3
 8000ce8:	f000 feae 	bl	8001a48 <oledSetPix>
 8000cec:	197b      	adds	r3, r7, r5
 8000cee:	881a      	ldrh	r2, [r3, #0]
 8000cf0:	197b      	adds	r3, r7, r5
 8000cf2:	3201      	adds	r2, #1
 8000cf4:	801a      	strh	r2, [r3, #0]
 8000cf6:	687b      	ldr	r3, [r7, #4]
 8000cf8:	88db      	ldrh	r3, [r3, #6]
 8000cfa:	220c      	movs	r2, #12
 8000cfc:	18ba      	adds	r2, r7, r2
 8000cfe:	8812      	ldrh	r2, [r2, #0]
 8000d00:	429a      	cmp	r2, r3
 8000d02:	d3b5      	bcc.n	8000c70 <drawModel+0x1c>
 8000d04:	46c0      	nop			; (mov r8, r8)
 8000d06:	46bd      	mov	sp, r7
 8000d08:	b004      	add	sp, #16
 8000d0a:	bdb0      	pop	{r4, r5, r7, pc}

08000d0c <rcc_config>:
 8000d0c:	b580      	push	{r7, lr}
 8000d0e:	af00      	add	r7, sp, #0
 8000d10:	2001      	movs	r0, #1
 8000d12:	f7ff fdb9 	bl	8000888 <LL_FLASH_SetLatency>
 8000d16:	f7ff fce1 	bl	80006dc <LL_RCC_HSI_Enable>
 8000d1a:	46c0      	nop			; (mov r8, r8)
 8000d1c:	f7ff fcec 	bl	80006f8 <LL_RCC_HSI_IsReady>
 8000d20:	0003      	movs	r3, r0
 8000d22:	2b01      	cmp	r3, #1
 8000d24:	d1fa      	bne.n	8000d1c <rcc_config+0x10>
 8000d26:	23a0      	movs	r3, #160	; 0xa0
 8000d28:	039b      	lsls	r3, r3, #14
 8000d2a:	0019      	movs	r1, r3
 8000d2c:	2000      	movs	r0, #0
 8000d2e:	f7ff fd5f 	bl	80007f0 <LL_RCC_PLL_ConfigDomain_SYS>
 8000d32:	f7ff fd3b 	bl	80007ac <LL_RCC_PLL_Enable>
 8000d36:	46c0      	nop			; (mov r8, r8)
 8000d38:	f7ff fd46 	bl	80007c8 <LL_RCC_PLL_IsReady>
 8000d3c:	0003      	movs	r3, r0
 8000d3e:	2b01      	cmp	r3, #1
 8000d40:	d1fa      	bne.n	8000d38 <rcc_config+0x2c>
 8000d42:	2000      	movs	r0, #0
 8000d44:	f7ff fd08 	bl	8000758 <LL_RCC_SetAHBPrescaler>
 8000d48:	2002      	movs	r0, #2
 8000d4a:	f7ff fce5 	bl	8000718 <LL_RCC_SetSysClkSource>
 8000d4e:	46c0      	nop			; (mov r8, r8)
 8000d50:	f7ff fcf6 	bl	8000740 <LL_RCC_GetSysClkSource>
 8000d54:	0003      	movs	r3, r0
 8000d56:	2b08      	cmp	r3, #8
 8000d58:	d1fa      	bne.n	8000d50 <rcc_config+0x44>
 8000d5a:	2000      	movs	r0, #0
 8000d5c:	f7ff fd10 	bl	8000780 <LL_RCC_SetAPB1Prescaler>
 8000d60:	4b02      	ldr	r3, [pc, #8]	; (8000d6c <rcc_config+0x60>)
 8000d62:	4a03      	ldr	r2, [pc, #12]	; (8000d70 <rcc_config+0x64>)
 8000d64:	601a      	str	r2, [r3, #0]
 8000d66:	46c0      	nop			; (mov r8, r8)
 8000d68:	46bd      	mov	sp, r7
 8000d6a:	bd80      	pop	{r7, pc}
 8000d6c:	20000000 	.word	0x20000000
 8000d70:	02dc6c00 	.word	0x02dc6c00

08000d74 <gpio_config>:
 8000d74:	b580      	push	{r7, lr}
 8000d76:	af00      	add	r7, sp, #0
 8000d78:	2380      	movs	r3, #128	; 0x80
 8000d7a:	029b      	lsls	r3, r3, #10
 8000d7c:	0018      	movs	r0, r3
 8000d7e:	f7ff fd97 	bl	80008b0 <LL_AHB1_GRP1_EnableClock>
 8000d82:	2390      	movs	r3, #144	; 0x90
 8000d84:	05db      	lsls	r3, r3, #23
 8000d86:	2202      	movs	r2, #2
 8000d88:	2102      	movs	r1, #2
 8000d8a:	0018      	movs	r0, r3
 8000d8c:	f7ff fdef 	bl	800096e <LL_GPIO_SetPinPull>
 8000d90:	2390      	movs	r3, #144	; 0x90
 8000d92:	05db      	lsls	r3, r3, #23
 8000d94:	2202      	movs	r2, #2
 8000d96:	2101      	movs	r1, #1
 8000d98:	0018      	movs	r0, r3
 8000d9a:	f7ff fde8 	bl	800096e <LL_GPIO_SetPinPull>
 8000d9e:	2380      	movs	r3, #128	; 0x80
 8000da0:	031b      	lsls	r3, r3, #12
 8000da2:	0018      	movs	r0, r3
 8000da4:	f7ff fd84 	bl	80008b0 <LL_AHB1_GRP1_EnableClock>
 8000da8:	2380      	movs	r3, #128	; 0x80
 8000daa:	005b      	lsls	r3, r3, #1
 8000dac:	4807      	ldr	r0, [pc, #28]	; (8000dcc <gpio_config+0x58>)
 8000dae:	2201      	movs	r2, #1
 8000db0:	0019      	movs	r1, r3
 8000db2:	f7ff fdbf 	bl	8000934 <LL_GPIO_SetPinMode>
 8000db6:	2380      	movs	r3, #128	; 0x80
 8000db8:	009b      	lsls	r3, r3, #2
 8000dba:	4804      	ldr	r0, [pc, #16]	; (8000dcc <gpio_config+0x58>)
 8000dbc:	2201      	movs	r2, #1
 8000dbe:	0019      	movs	r1, r3
 8000dc0:	f7ff fdb8 	bl	8000934 <LL_GPIO_SetPinMode>
 8000dc4:	46c0      	nop			; (mov r8, r8)
 8000dc6:	46bd      	mov	sp, r7
 8000dc8:	bd80      	pop	{r7, pc}
 8000dca:	46c0      	nop			; (mov r8, r8)
 8000dcc:	48000800 	.word	0x48000800

08000dd0 <printf_config>:
 8000dd0:	b580      	push	{r7, lr}
 8000dd2:	af00      	add	r7, sp, #0
 8000dd4:	4b02      	ldr	r3, [pc, #8]	; (8000de0 <printf_config+0x10>)
 8000dd6:	4a03      	ldr	r2, [pc, #12]	; (8000de4 <printf_config+0x14>)
 8000dd8:	601a      	str	r2, [r3, #0]
 8000dda:	46c0      	nop			; (mov r8, r8)
 8000ddc:	46bd      	mov	sp, r7
 8000dde:	bd80      	pop	{r7, pc}
 8000de0:	20000924 	.word	0x20000924
 8000de4:	08001b4d 	.word	0x08001b4d

08000de8 <exti_config>:
 8000de8:	b580      	push	{r7, lr}
 8000dea:	af00      	add	r7, sp, #0
 8000dec:	2001      	movs	r0, #1
 8000dee:	f7ff fd8b 	bl	8000908 <LL_APB1_GRP2_EnableClock>
 8000df2:	2380      	movs	r3, #128	; 0x80
 8000df4:	02db      	lsls	r3, r3, #11
 8000df6:	0019      	movs	r1, r3
 8000df8:	2000      	movs	r0, #0
 8000dfa:	f7ff fd1f 	bl	800083c <LL_SYSCFG_SetEXTISource>
 8000dfe:	2100      	movs	r1, #0
 8000e00:	2000      	movs	r0, #0
 8000e02:	f7ff fd1b 	bl	800083c <LL_SYSCFG_SetEXTISource>
 8000e06:	2002      	movs	r0, #2
 8000e08:	f7ff fdd8 	bl	80009bc <LL_EXTI_EnableIT_0_31>
 8000e0c:	2001      	movs	r0, #1
 8000e0e:	f7ff fdd5 	bl	80009bc <LL_EXTI_EnableIT_0_31>
 8000e12:	2002      	movs	r0, #2
 8000e14:	f7ff fdf2 	bl	80009fc <LL_EXTI_EnableFallingTrig_0_31>
 8000e18:	2002      	movs	r0, #2
 8000e1a:	f7ff fddf 	bl	80009dc <LL_EXTI_EnableRisingTrig_0_31>
 8000e1e:	2001      	movs	r0, #1
 8000e20:	f7ff fdec 	bl	80009fc <LL_EXTI_EnableFallingTrig_0_31>
 8000e24:	2001      	movs	r0, #1
 8000e26:	f7ff fdd9 	bl	80009dc <LL_EXTI_EnableRisingTrig_0_31>
 8000e2a:	2005      	movs	r0, #5
 8000e2c:	f7ff fbd2 	bl	80005d4 <NVIC_EnableIRQ>
 8000e30:	2100      	movs	r1, #0
 8000e32:	2005      	movs	r0, #5
 8000e34:	f7ff fbe4 	bl	8000600 <NVIC_SetPriority>
 8000e38:	46c0      	nop			; (mov r8, r8)
 8000e3a:	46bd      	mov	sp, r7
 8000e3c:	bd80      	pop	{r7, pc}
	...

08000e40 <EXTI0_1_IRQHandler>:
 8000e40:	b580      	push	{r7, lr}
 8000e42:	b082      	sub	sp, #8
 8000e44:	af00      	add	r7, sp, #0
 8000e46:	1dfb      	adds	r3, r7, #7
 8000e48:	2200      	movs	r2, #0
 8000e4a:	701a      	strb	r2, [r3, #0]
 8000e4c:	2390      	movs	r3, #144	; 0x90
 8000e4e:	05db      	lsls	r3, r3, #23
 8000e50:	0018      	movs	r0, r3
 8000e52:	f7ff fda9 	bl	80009a8 <LL_GPIO_ReadInputPort>
 8000e56:	0003      	movs	r3, r0
 8000e58:	b2da      	uxtb	r2, r3
 8000e5a:	1dfb      	adds	r3, r7, #7
 8000e5c:	2103      	movs	r1, #3
 8000e5e:	400a      	ands	r2, r1
 8000e60:	701a      	strb	r2, [r3, #0]
 8000e62:	4b31      	ldr	r3, [pc, #196]	; (8000f28 <EXTI0_1_IRQHandler+0xe8>)
 8000e64:	781b      	ldrb	r3, [r3, #0]
 8000e66:	009b      	lsls	r3, r3, #2
 8000e68:	b25b      	sxtb	r3, r3
 8000e6a:	220c      	movs	r2, #12
 8000e6c:	4013      	ands	r3, r2
 8000e6e:	b25a      	sxtb	r2, r3
 8000e70:	1dfb      	adds	r3, r7, #7
 8000e72:	781b      	ldrb	r3, [r3, #0]
 8000e74:	b25b      	sxtb	r3, r3
 8000e76:	4313      	orrs	r3, r2
 8000e78:	b25b      	sxtb	r3, r3
 8000e7a:	b2da      	uxtb	r2, r3
 8000e7c:	4b2a      	ldr	r3, [pc, #168]	; (8000f28 <EXTI0_1_IRQHandler+0xe8>)
 8000e7e:	701a      	strb	r2, [r3, #0]
 8000e80:	4b29      	ldr	r3, [pc, #164]	; (8000f28 <EXTI0_1_IRQHandler+0xe8>)
 8000e82:	781b      	ldrb	r3, [r3, #0]
 8000e84:	001a      	movs	r2, r3
 8000e86:	4b29      	ldr	r3, [pc, #164]	; (8000f2c <EXTI0_1_IRQHandler+0xec>)
 8000e88:	569b      	ldrsb	r3, [r3, r2]
 8000e8a:	b2da      	uxtb	r2, r3
 8000e8c:	4b28      	ldr	r3, [pc, #160]	; (8000f30 <EXTI0_1_IRQHandler+0xf0>)
 8000e8e:	781b      	ldrb	r3, [r3, #0]
 8000e90:	b25b      	sxtb	r3, r3
 8000e92:	b2db      	uxtb	r3, r3
 8000e94:	18d3      	adds	r3, r2, r3
 8000e96:	b2db      	uxtb	r3, r3
 8000e98:	b25a      	sxtb	r2, r3
 8000e9a:	4b25      	ldr	r3, [pc, #148]	; (8000f30 <EXTI0_1_IRQHandler+0xf0>)
 8000e9c:	701a      	strb	r2, [r3, #0]
 8000e9e:	4b25      	ldr	r3, [pc, #148]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000ea0:	2202      	movs	r2, #2
 8000ea2:	5e9b      	ldrsh	r3, [r3, r2]
 8000ea4:	001a      	movs	r2, r3
 8000ea6:	4b24      	ldr	r3, [pc, #144]	; (8000f38 <EXTI0_1_IRQHandler+0xf8>)
 8000ea8:	0011      	movs	r1, r2
 8000eaa:	0018      	movs	r0, r3
 8000eac:	f001 f914 	bl	80020d8 <xprintf>
 8000eb0:	4b1f      	ldr	r3, [pc, #124]	; (8000f30 <EXTI0_1_IRQHandler+0xf0>)
 8000eb2:	781b      	ldrb	r3, [r3, #0]
 8000eb4:	b25b      	sxtb	r3, r3
 8000eb6:	2b03      	cmp	r3, #3
 8000eb8:	d115      	bne.n	8000ee6 <EXTI0_1_IRQHandler+0xa6>
 8000eba:	4b1e      	ldr	r3, [pc, #120]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000ebc:	2202      	movs	r2, #2
 8000ebe:	5e9b      	ldrsh	r3, [r3, r2]
 8000ec0:	001a      	movs	r2, r3
 8000ec2:	4b1c      	ldr	r3, [pc, #112]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000ec4:	791b      	ldrb	r3, [r3, #4]
 8000ec6:	18d3      	adds	r3, r2, r3
 8000ec8:	2b3d      	cmp	r3, #61	; 0x3d
 8000eca:	dc08      	bgt.n	8000ede <EXTI0_1_IRQHandler+0x9e>
 8000ecc:	4b19      	ldr	r3, [pc, #100]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000ece:	2202      	movs	r2, #2
 8000ed0:	5e9b      	ldrsh	r3, [r3, r2]
 8000ed2:	b29b      	uxth	r3, r3
 8000ed4:	3301      	adds	r3, #1
 8000ed6:	b29b      	uxth	r3, r3
 8000ed8:	b21a      	sxth	r2, r3
 8000eda:	4b16      	ldr	r3, [pc, #88]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000edc:	805a      	strh	r2, [r3, #2]
 8000ede:	4b14      	ldr	r3, [pc, #80]	; (8000f30 <EXTI0_1_IRQHandler+0xf0>)
 8000ee0:	2200      	movs	r2, #0
 8000ee2:	701a      	strb	r2, [r3, #0]
 8000ee4:	e015      	b.n	8000f12 <EXTI0_1_IRQHandler+0xd2>
 8000ee6:	4b12      	ldr	r3, [pc, #72]	; (8000f30 <EXTI0_1_IRQHandler+0xf0>)
 8000ee8:	781b      	ldrb	r3, [r3, #0]
 8000eea:	b25b      	sxtb	r3, r3
 8000eec:	3303      	adds	r3, #3
 8000eee:	d110      	bne.n	8000f12 <EXTI0_1_IRQHandler+0xd2>
 8000ef0:	4b10      	ldr	r3, [pc, #64]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000ef2:	2202      	movs	r2, #2
 8000ef4:	5e9b      	ldrsh	r3, [r3, r2]
 8000ef6:	2b02      	cmp	r3, #2
 8000ef8:	dd08      	ble.n	8000f0c <EXTI0_1_IRQHandler+0xcc>
 8000efa:	4b0e      	ldr	r3, [pc, #56]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000efc:	2202      	movs	r2, #2
 8000efe:	5e9b      	ldrsh	r3, [r3, r2]
 8000f00:	b29b      	uxth	r3, r3
 8000f02:	3b01      	subs	r3, #1
 8000f04:	b29b      	uxth	r3, r3
 8000f06:	b21a      	sxth	r2, r3
 8000f08:	4b0a      	ldr	r3, [pc, #40]	; (8000f34 <EXTI0_1_IRQHandler+0xf4>)
 8000f0a:	805a      	strh	r2, [r3, #2]
 8000f0c:	4b08      	ldr	r3, [pc, #32]	; (8000f30 <EXTI0_1_IRQHandler+0xf0>)
 8000f0e:	2200      	movs	r2, #0
 8000f10:	701a      	strb	r2, [r3, #0]
 8000f12:	2002      	movs	r0, #2
 8000f14:	f7ff fd82 	bl	8000a1c <LL_EXTI_ClearFlag_0_31>
 8000f18:	2001      	movs	r0, #1
 8000f1a:	f7ff fd7f 	bl	8000a1c <LL_EXTI_ClearFlag_0_31>
 8000f1e:	46c0      	nop			; (mov r8, r8)
 8000f20:	46bd      	mov	sp, r7
 8000f22:	b002      	add	sp, #8
 8000f24:	bd80      	pop	{r7, pc}
 8000f26:	46c0      	nop			; (mov r8, r8)
 8000f28:	20000512 	.word	0x20000512
 8000f2c:	200000b4 	.word	0x200000b4
 8000f30:	20000513 	.word	0x20000513
 8000f34:	20000040 	.word	0x20000040
 8000f38:	0800231c 	.word	0x0800231c

08000f3c <timers_config>:
 8000f3c:	b580      	push	{r7, lr}
 8000f3e:	af00      	add	r7, sp, #0
 8000f40:	2001      	movs	r0, #1
 8000f42:	f7ff fccb 	bl	80008dc <LL_APB1_GRP1_EnableClock>
 8000f46:	4a16      	ldr	r2, [pc, #88]	; (8000fa0 <timers_config+0x64>)
 8000f48:	2380      	movs	r3, #128	; 0x80
 8000f4a:	05db      	lsls	r3, r3, #23
 8000f4c:	0011      	movs	r1, r2
 8000f4e:	0018      	movs	r0, r3
 8000f50:	f7ff fd92 	bl	8000a78 <LL_TIM_SetPrescaler>
 8000f54:	f7ff fdc2 	bl	8000adc <random>
 8000f58:	0003      	movs	r3, r0
 8000f5a:	00db      	lsls	r3, r3, #3
 8000f5c:	001a      	movs	r2, r3
 8000f5e:	2380      	movs	r3, #128	; 0x80
 8000f60:	05db      	lsls	r3, r3, #23
 8000f62:	0011      	movs	r1, r2
 8000f64:	0018      	movs	r0, r3
 8000f66:	f7ff fd93 	bl	8000a90 <LL_TIM_SetAutoReload>
 8000f6a:	2380      	movs	r3, #128	; 0x80
 8000f6c:	05db      	lsls	r3, r3, #23
 8000f6e:	2100      	movs	r1, #0
 8000f70:	0018      	movs	r0, r3
 8000f72:	f7ff fd6f 	bl	8000a54 <LL_TIM_SetCounterMode>
 8000f76:	2380      	movs	r3, #128	; 0x80
 8000f78:	05db      	lsls	r3, r3, #23
 8000f7a:	0018      	movs	r0, r3
 8000f7c:	f7ff fda0 	bl	8000ac0 <LL_TIM_EnableIT_UPDATE>
 8000f80:	2380      	movs	r3, #128	; 0x80
 8000f82:	05db      	lsls	r3, r3, #23
 8000f84:	0018      	movs	r0, r3
 8000f86:	f7ff fd57 	bl	8000a38 <LL_TIM_EnableCounter>
 8000f8a:	200f      	movs	r0, #15
 8000f8c:	f7ff fb22 	bl	80005d4 <NVIC_EnableIRQ>
 8000f90:	2100      	movs	r1, #0
 8000f92:	200f      	movs	r0, #15
 8000f94:	f7ff fb34 	bl	8000600 <NVIC_SetPriority>
 8000f98:	46c0      	nop			; (mov r8, r8)
 8000f9a:	46bd      	mov	sp, r7
 8000f9c:	bd80      	pop	{r7, pc}
 8000f9e:	46c0      	nop			; (mov r8, r8)
 8000fa0:	0000bb7f 	.word	0x0000bb7f

08000fa4 <TIM2_IRQHandler>:
 8000fa4:	b580      	push	{r7, lr}
 8000fa6:	b082      	sub	sp, #8
 8000fa8:	af00      	add	r7, sp, #0
 8000faa:	f7ff fd97 	bl	8000adc <random>
 8000fae:	0003      	movs	r3, r0
 8000fb0:	0019      	movs	r1, r3
 8000fb2:	1dfb      	adds	r3, r7, #7
 8000fb4:	2201      	movs	r2, #1
 8000fb6:	400a      	ands	r2, r1
 8000fb8:	701a      	strb	r2, [r3, #0]
 8000fba:	1dfb      	adds	r3, r7, #7
 8000fbc:	781b      	ldrb	r3, [r3, #0]
 8000fbe:	2b00      	cmp	r3, #0
 8000fc0:	d125      	bne.n	800100e <TIM2_IRQHandler+0x6a>
 8000fc2:	4b28      	ldr	r3, [pc, #160]	; (8001064 <TIM2_IRQHandler+0xc0>)
 8000fc4:	2200      	movs	r2, #0
 8000fc6:	5e9b      	ldrsh	r3, [r3, r2]
 8000fc8:	2b80      	cmp	r3, #128	; 0x80
 8000fca:	dd20      	ble.n	800100e <TIM2_IRQHandler+0x6a>
 8000fcc:	4b25      	ldr	r3, [pc, #148]	; (8001064 <TIM2_IRQHandler+0xc0>)
 8000fce:	795b      	ldrb	r3, [r3, #5]
 8000fd0:	b29b      	uxth	r3, r3
 8000fd2:	425b      	negs	r3, r3
 8000fd4:	b29b      	uxth	r3, r3
 8000fd6:	b21a      	sxth	r2, r3
 8000fd8:	4b22      	ldr	r3, [pc, #136]	; (8001064 <TIM2_IRQHandler+0xc0>)
 8000fda:	801a      	strh	r2, [r3, #0]
 8000fdc:	4b21      	ldr	r3, [pc, #132]	; (8001064 <TIM2_IRQHandler+0xc0>)
 8000fde:	795b      	ldrb	r3, [r3, #5]
 8000fe0:	b29b      	uxth	r3, r3
 8000fe2:	425b      	negs	r3, r3
 8000fe4:	b29b      	uxth	r3, r3
 8000fe6:	b21a      	sxth	r2, r3
 8000fe8:	4b1f      	ldr	r3, [pc, #124]	; (8001068 <TIM2_IRQHandler+0xc4>)
 8000fea:	801a      	strh	r2, [r3, #0]
 8000fec:	4b1d      	ldr	r3, [pc, #116]	; (8001064 <TIM2_IRQHandler+0xc0>)
 8000fee:	795b      	ldrb	r3, [r3, #5]
 8000ff0:	b29b      	uxth	r3, r3
 8000ff2:	425b      	negs	r3, r3
 8000ff4:	b29b      	uxth	r3, r3
 8000ff6:	b21a      	sxth	r2, r3
 8000ff8:	4b1c      	ldr	r3, [pc, #112]	; (800106c <TIM2_IRQHandler+0xc8>)
 8000ffa:	801a      	strh	r2, [r3, #0]
 8000ffc:	4b19      	ldr	r3, [pc, #100]	; (8001064 <TIM2_IRQHandler+0xc0>)
 8000ffe:	795b      	ldrb	r3, [r3, #5]
 8001000:	b29b      	uxth	r3, r3
 8001002:	425b      	negs	r3, r3
 8001004:	b29b      	uxth	r3, r3
 8001006:	b21a      	sxth	r2, r3
 8001008:	4b19      	ldr	r3, [pc, #100]	; (8001070 <TIM2_IRQHandler+0xcc>)
 800100a:	801a      	strh	r2, [r3, #0]
 800100c:	e015      	b.n	800103a <TIM2_IRQHandler+0x96>
 800100e:	1dfb      	adds	r3, r7, #7
 8001010:	781b      	ldrb	r3, [r3, #0]
 8001012:	2b01      	cmp	r3, #1
 8001014:	d109      	bne.n	800102a <TIM2_IRQHandler+0x86>
 8001016:	4b17      	ldr	r3, [pc, #92]	; (8001074 <TIM2_IRQHandler+0xd0>)
 8001018:	2200      	movs	r2, #0
 800101a:	5e9b      	ldrsh	r3, [r3, r2]
 800101c:	2b80      	cmp	r3, #128	; 0x80
 800101e:	dd04      	ble.n	800102a <TIM2_IRQHandler+0x86>
 8001020:	4b14      	ldr	r3, [pc, #80]	; (8001074 <TIM2_IRQHandler+0xd0>)
 8001022:	2214      	movs	r2, #20
 8001024:	4252      	negs	r2, r2
 8001026:	801a      	strh	r2, [r3, #0]
 8001028:	e007      	b.n	800103a <TIM2_IRQHandler+0x96>
 800102a:	23fa      	movs	r3, #250	; 0xfa
 800102c:	009a      	lsls	r2, r3, #2
 800102e:	2380      	movs	r3, #128	; 0x80
 8001030:	05db      	lsls	r3, r3, #23
 8001032:	0011      	movs	r1, r2
 8001034:	0018      	movs	r0, r3
 8001036:	f7ff fd2b 	bl	8000a90 <LL_TIM_SetAutoReload>
 800103a:	f7ff fd4f 	bl	8000adc <random>
 800103e:	0003      	movs	r3, r0
 8001040:	00db      	lsls	r3, r3, #3
 8001042:	001a      	movs	r2, r3
 8001044:	2380      	movs	r3, #128	; 0x80
 8001046:	05db      	lsls	r3, r3, #23
 8001048:	0011      	movs	r1, r2
 800104a:	0018      	movs	r0, r3
 800104c:	f7ff fd20 	bl	8000a90 <LL_TIM_SetAutoReload>
 8001050:	2380      	movs	r3, #128	; 0x80
 8001052:	05db      	lsls	r3, r3, #23
 8001054:	0018      	movs	r0, r3
 8001056:	f7ff fd27 	bl	8000aa8 <LL_TIM_ClearFlag_UPDATE>
 800105a:	46c0      	nop			; (mov r8, r8)
 800105c:	46bd      	mov	sp, r7
 800105e:	b002      	add	sp, #8
 8001060:	bd80      	pop	{r7, pc}
 8001062:	46c0      	nop			; (mov r8, r8)
 8001064:	20000010 	.word	0x20000010
 8001068:	2000001c 	.word	0x2000001c
 800106c:	20000028 	.word	0x20000028
 8001070:	20000034 	.word	0x20000034
 8001074:	20000510 	.word	0x20000510

08001078 <LL_AHB1_GRP1_EnableClock>:
 8001078:	b580      	push	{r7, lr}
 800107a:	b084      	sub	sp, #16
 800107c:	af00      	add	r7, sp, #0
 800107e:	6078      	str	r0, [r7, #4]
 8001080:	4b07      	ldr	r3, [pc, #28]	; (80010a0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001082:	6959      	ldr	r1, [r3, #20]
 8001084:	4b06      	ldr	r3, [pc, #24]	; (80010a0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001086:	687a      	ldr	r2, [r7, #4]
 8001088:	430a      	orrs	r2, r1
 800108a:	615a      	str	r2, [r3, #20]
 800108c:	4b04      	ldr	r3, [pc, #16]	; (80010a0 <LL_AHB1_GRP1_EnableClock+0x28>)
 800108e:	695b      	ldr	r3, [r3, #20]
 8001090:	687a      	ldr	r2, [r7, #4]
 8001092:	4013      	ands	r3, r2
 8001094:	60fb      	str	r3, [r7, #12]
 8001096:	68fb      	ldr	r3, [r7, #12]
 8001098:	46c0      	nop			; (mov r8, r8)
 800109a:	46bd      	mov	sp, r7
 800109c:	b004      	add	sp, #16
 800109e:	bd80      	pop	{r7, pc}
 80010a0:	40021000 	.word	0x40021000

080010a4 <LL_APB1_GRP1_EnableClock>:
 80010a4:	b580      	push	{r7, lr}
 80010a6:	b084      	sub	sp, #16
 80010a8:	af00      	add	r7, sp, #0
 80010aa:	6078      	str	r0, [r7, #4]
 80010ac:	4b07      	ldr	r3, [pc, #28]	; (80010cc <LL_APB1_GRP1_EnableClock+0x28>)
 80010ae:	69d9      	ldr	r1, [r3, #28]
 80010b0:	4b06      	ldr	r3, [pc, #24]	; (80010cc <LL_APB1_GRP1_EnableClock+0x28>)
 80010b2:	687a      	ldr	r2, [r7, #4]
 80010b4:	430a      	orrs	r2, r1
 80010b6:	61da      	str	r2, [r3, #28]
 80010b8:	4b04      	ldr	r3, [pc, #16]	; (80010cc <LL_APB1_GRP1_EnableClock+0x28>)
 80010ba:	69db      	ldr	r3, [r3, #28]
 80010bc:	687a      	ldr	r2, [r7, #4]
 80010be:	4013      	ands	r3, r2
 80010c0:	60fb      	str	r3, [r7, #12]
 80010c2:	68fb      	ldr	r3, [r7, #12]
 80010c4:	46c0      	nop			; (mov r8, r8)
 80010c6:	46bd      	mov	sp, r7
 80010c8:	b004      	add	sp, #16
 80010ca:	bd80      	pop	{r7, pc}
 80010cc:	40021000 	.word	0x40021000

080010d0 <LL_GPIO_SetPinMode>:
 80010d0:	b580      	push	{r7, lr}
 80010d2:	b084      	sub	sp, #16
 80010d4:	af00      	add	r7, sp, #0
 80010d6:	60f8      	str	r0, [r7, #12]
 80010d8:	60b9      	str	r1, [r7, #8]
 80010da:	607a      	str	r2, [r7, #4]
 80010dc:	68fb      	ldr	r3, [r7, #12]
 80010de:	6819      	ldr	r1, [r3, #0]
 80010e0:	68bb      	ldr	r3, [r7, #8]
 80010e2:	68ba      	ldr	r2, [r7, #8]
 80010e4:	435a      	muls	r2, r3
 80010e6:	0013      	movs	r3, r2
 80010e8:	005b      	lsls	r3, r3, #1
 80010ea:	189b      	adds	r3, r3, r2
 80010ec:	43db      	mvns	r3, r3
 80010ee:	400b      	ands	r3, r1
 80010f0:	001a      	movs	r2, r3
 80010f2:	68bb      	ldr	r3, [r7, #8]
 80010f4:	68b9      	ldr	r1, [r7, #8]
 80010f6:	434b      	muls	r3, r1
 80010f8:	6879      	ldr	r1, [r7, #4]
 80010fa:	434b      	muls	r3, r1
 80010fc:	431a      	orrs	r2, r3
 80010fe:	68fb      	ldr	r3, [r7, #12]
 8001100:	601a      	str	r2, [r3, #0]
 8001102:	46c0      	nop			; (mov r8, r8)
 8001104:	46bd      	mov	sp, r7
 8001106:	b004      	add	sp, #16
 8001108:	bd80      	pop	{r7, pc}

0800110a <LL_GPIO_SetPinOutputType>:
 800110a:	b580      	push	{r7, lr}
 800110c:	b084      	sub	sp, #16
 800110e:	af00      	add	r7, sp, #0
 8001110:	60f8      	str	r0, [r7, #12]
 8001112:	60b9      	str	r1, [r7, #8]
 8001114:	607a      	str	r2, [r7, #4]
 8001116:	68fb      	ldr	r3, [r7, #12]
 8001118:	685b      	ldr	r3, [r3, #4]
 800111a:	68ba      	ldr	r2, [r7, #8]
 800111c:	43d2      	mvns	r2, r2
 800111e:	401a      	ands	r2, r3
 8001120:	68bb      	ldr	r3, [r7, #8]
 8001122:	6879      	ldr	r1, [r7, #4]
 8001124:	434b      	muls	r3, r1
 8001126:	431a      	orrs	r2, r3
 8001128:	68fb      	ldr	r3, [r7, #12]
 800112a:	605a      	str	r2, [r3, #4]
 800112c:	46c0      	nop			; (mov r8, r8)
 800112e:	46bd      	mov	sp, r7
 8001130:	b004      	add	sp, #16
 8001132:	bd80      	pop	{r7, pc}

08001134 <LL_GPIO_SetPinSpeed>:
 8001134:	b580      	push	{r7, lr}
 8001136:	b084      	sub	sp, #16
 8001138:	af00      	add	r7, sp, #0
 800113a:	60f8      	str	r0, [r7, #12]
 800113c:	60b9      	str	r1, [r7, #8]
 800113e:	607a      	str	r2, [r7, #4]
 8001140:	68fb      	ldr	r3, [r7, #12]
 8001142:	6899      	ldr	r1, [r3, #8]
 8001144:	68bb      	ldr	r3, [r7, #8]
 8001146:	68ba      	ldr	r2, [r7, #8]
 8001148:	435a      	muls	r2, r3
 800114a:	0013      	movs	r3, r2
 800114c:	005b      	lsls	r3, r3, #1
 800114e:	189b      	adds	r3, r3, r2
 8001150:	43db      	mvns	r3, r3
 8001152:	400b      	ands	r3, r1
 8001154:	001a      	movs	r2, r3
 8001156:	68bb      	ldr	r3, [r7, #8]
 8001158:	68b9      	ldr	r1, [r7, #8]
 800115a:	434b      	muls	r3, r1
 800115c:	6879      	ldr	r1, [r7, #4]
 800115e:	434b      	muls	r3, r1
 8001160:	431a      	orrs	r2, r3
 8001162:	68fb      	ldr	r3, [r7, #12]
 8001164:	609a      	str	r2, [r3, #8]
 8001166:	46c0      	nop			; (mov r8, r8)
 8001168:	46bd      	mov	sp, r7
 800116a:	b004      	add	sp, #16
 800116c:	bd80      	pop	{r7, pc}

0800116e <LL_GPIO_SetAFPin_0_7>:
 800116e:	b580      	push	{r7, lr}
 8001170:	b084      	sub	sp, #16
 8001172:	af00      	add	r7, sp, #0
 8001174:	60f8      	str	r0, [r7, #12]
 8001176:	60b9      	str	r1, [r7, #8]
 8001178:	607a      	str	r2, [r7, #4]
 800117a:	68fb      	ldr	r3, [r7, #12]
 800117c:	6a19      	ldr	r1, [r3, #32]
 800117e:	68bb      	ldr	r3, [r7, #8]
 8001180:	68ba      	ldr	r2, [r7, #8]
 8001182:	4353      	muls	r3, r2
 8001184:	68ba      	ldr	r2, [r7, #8]
 8001186:	4353      	muls	r3, r2
 8001188:	68ba      	ldr	r2, [r7, #8]
 800118a:	435a      	muls	r2, r3
 800118c:	0013      	movs	r3, r2
 800118e:	011b      	lsls	r3, r3, #4
 8001190:	1a9b      	subs	r3, r3, r2
 8001192:	43db      	mvns	r3, r3
 8001194:	400b      	ands	r3, r1
 8001196:	001a      	movs	r2, r3
 8001198:	68bb      	ldr	r3, [r7, #8]
 800119a:	68b9      	ldr	r1, [r7, #8]
 800119c:	434b      	muls	r3, r1
 800119e:	68b9      	ldr	r1, [r7, #8]
 80011a0:	434b      	muls	r3, r1
 80011a2:	68b9      	ldr	r1, [r7, #8]
 80011a4:	434b      	muls	r3, r1
 80011a6:	6879      	ldr	r1, [r7, #4]
 80011a8:	434b      	muls	r3, r1
 80011aa:	431a      	orrs	r2, r3
 80011ac:	68fb      	ldr	r3, [r7, #12]
 80011ae:	621a      	str	r2, [r3, #32]
 80011b0:	46c0      	nop			; (mov r8, r8)
 80011b2:	46bd      	mov	sp, r7
 80011b4:	b004      	add	sp, #16
 80011b6:	bd80      	pop	{r7, pc}

080011b8 <LL_RCC_SetI2CClockSource>:
 80011b8:	b580      	push	{r7, lr}
 80011ba:	b082      	sub	sp, #8
 80011bc:	af00      	add	r7, sp, #0
 80011be:	6078      	str	r0, [r7, #4]
 80011c0:	4b06      	ldr	r3, [pc, #24]	; (80011dc <LL_RCC_SetI2CClockSource+0x24>)
 80011c2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80011c4:	2210      	movs	r2, #16
 80011c6:	4393      	bics	r3, r2
 80011c8:	0019      	movs	r1, r3
 80011ca:	4b04      	ldr	r3, [pc, #16]	; (80011dc <LL_RCC_SetI2CClockSource+0x24>)
 80011cc:	687a      	ldr	r2, [r7, #4]
 80011ce:	430a      	orrs	r2, r1
 80011d0:	631a      	str	r2, [r3, #48]	; 0x30
 80011d2:	46c0      	nop			; (mov r8, r8)
 80011d4:	46bd      	mov	sp, r7
 80011d6:	b002      	add	sp, #8
 80011d8:	bd80      	pop	{r7, pc}
 80011da:	46c0      	nop			; (mov r8, r8)
 80011dc:	40021000 	.word	0x40021000

080011e0 <LL_I2C_Enable>:
 80011e0:	b580      	push	{r7, lr}
 80011e2:	b082      	sub	sp, #8
 80011e4:	af00      	add	r7, sp, #0
 80011e6:	6078      	str	r0, [r7, #4]
 80011e8:	687b      	ldr	r3, [r7, #4]
 80011ea:	681b      	ldr	r3, [r3, #0]
 80011ec:	2201      	movs	r2, #1
 80011ee:	431a      	orrs	r2, r3
 80011f0:	687b      	ldr	r3, [r7, #4]
 80011f2:	601a      	str	r2, [r3, #0]
 80011f4:	46c0      	nop			; (mov r8, r8)
 80011f6:	46bd      	mov	sp, r7
 80011f8:	b002      	add	sp, #8
 80011fa:	bd80      	pop	{r7, pc}

080011fc <LL_I2C_Disable>:
 80011fc:	b580      	push	{r7, lr}
 80011fe:	b082      	sub	sp, #8
 8001200:	af00      	add	r7, sp, #0
 8001202:	6078      	str	r0, [r7, #4]
 8001204:	687b      	ldr	r3, [r7, #4]
 8001206:	681b      	ldr	r3, [r3, #0]
 8001208:	2201      	movs	r2, #1
 800120a:	4393      	bics	r3, r2
 800120c:	001a      	movs	r2, r3
 800120e:	687b      	ldr	r3, [r7, #4]
 8001210:	601a      	str	r2, [r3, #0]
 8001212:	46c0      	nop			; (mov r8, r8)
 8001214:	46bd      	mov	sp, r7
 8001216:	b002      	add	sp, #8
 8001218:	bd80      	pop	{r7, pc}
	...

0800121c <LL_I2C_SetDigitalFilter>:
 800121c:	b580      	push	{r7, lr}
 800121e:	b082      	sub	sp, #8
 8001220:	af00      	add	r7, sp, #0
 8001222:	6078      	str	r0, [r7, #4]
 8001224:	6039      	str	r1, [r7, #0]
 8001226:	687b      	ldr	r3, [r7, #4]
 8001228:	681b      	ldr	r3, [r3, #0]
 800122a:	4a05      	ldr	r2, [pc, #20]	; (8001240 <LL_I2C_SetDigitalFilter+0x24>)
 800122c:	401a      	ands	r2, r3
 800122e:	683b      	ldr	r3, [r7, #0]
 8001230:	021b      	lsls	r3, r3, #8
 8001232:	431a      	orrs	r2, r3
 8001234:	687b      	ldr	r3, [r7, #4]
 8001236:	601a      	str	r2, [r3, #0]
 8001238:	46c0      	nop			; (mov r8, r8)
 800123a:	46bd      	mov	sp, r7
 800123c:	b002      	add	sp, #8
 800123e:	bd80      	pop	{r7, pc}
 8001240:	fffff0ff 	.word	0xfffff0ff

08001244 <LL_I2C_DisableAnalogFilter>:
 8001244:	b580      	push	{r7, lr}
 8001246:	b082      	sub	sp, #8
 8001248:	af00      	add	r7, sp, #0
 800124a:	6078      	str	r0, [r7, #4]
 800124c:	687b      	ldr	r3, [r7, #4]
 800124e:	681b      	ldr	r3, [r3, #0]
 8001250:	2280      	movs	r2, #128	; 0x80
 8001252:	0152      	lsls	r2, r2, #5
 8001254:	431a      	orrs	r2, r3
 8001256:	687b      	ldr	r3, [r7, #4]
 8001258:	601a      	str	r2, [r3, #0]
 800125a:	46c0      	nop			; (mov r8, r8)
 800125c:	46bd      	mov	sp, r7
 800125e:	b002      	add	sp, #8
 8001260:	bd80      	pop	{r7, pc}

08001262 <LL_I2C_DisableClockStretching>:
 8001262:	b580      	push	{r7, lr}
 8001264:	b082      	sub	sp, #8
 8001266:	af00      	add	r7, sp, #0
 8001268:	6078      	str	r0, [r7, #4]
 800126a:	687b      	ldr	r3, [r7, #4]
 800126c:	681b      	ldr	r3, [r3, #0]
 800126e:	2280      	movs	r2, #128	; 0x80
 8001270:	0292      	lsls	r2, r2, #10
 8001272:	431a      	orrs	r2, r3
 8001274:	687b      	ldr	r3, [r7, #4]
 8001276:	601a      	str	r2, [r3, #0]
 8001278:	46c0      	nop			; (mov r8, r8)
 800127a:	46bd      	mov	sp, r7
 800127c:	b002      	add	sp, #8
 800127e:	bd80      	pop	{r7, pc}

08001280 <LL_I2C_SetMasterAddressingMode>:
 8001280:	b580      	push	{r7, lr}
 8001282:	b082      	sub	sp, #8
 8001284:	af00      	add	r7, sp, #0
 8001286:	6078      	str	r0, [r7, #4]
 8001288:	6039      	str	r1, [r7, #0]
 800128a:	687b      	ldr	r3, [r7, #4]
 800128c:	685b      	ldr	r3, [r3, #4]
 800128e:	4a05      	ldr	r2, [pc, #20]	; (80012a4 <LL_I2C_SetMasterAddressingMode+0x24>)
 8001290:	401a      	ands	r2, r3
 8001292:	683b      	ldr	r3, [r7, #0]
 8001294:	431a      	orrs	r2, r3
 8001296:	687b      	ldr	r3, [r7, #4]
 8001298:	605a      	str	r2, [r3, #4]
 800129a:	46c0      	nop			; (mov r8, r8)
 800129c:	46bd      	mov	sp, r7
 800129e:	b002      	add	sp, #8
 80012a0:	bd80      	pop	{r7, pc}
 80012a2:	46c0      	nop			; (mov r8, r8)
 80012a4:	fffff7ff 	.word	0xfffff7ff

080012a8 <LL_I2C_SetTiming>:
 80012a8:	b580      	push	{r7, lr}
 80012aa:	b082      	sub	sp, #8
 80012ac:	af00      	add	r7, sp, #0
 80012ae:	6078      	str	r0, [r7, #4]
 80012b0:	6039      	str	r1, [r7, #0]
 80012b2:	687b      	ldr	r3, [r7, #4]
 80012b4:	683a      	ldr	r2, [r7, #0]
 80012b6:	611a      	str	r2, [r3, #16]
 80012b8:	46c0      	nop			; (mov r8, r8)
 80012ba:	46bd      	mov	sp, r7
 80012bc:	b002      	add	sp, #8
 80012be:	bd80      	pop	{r7, pc}

080012c0 <LL_I2C_SetMode>:
 80012c0:	b580      	push	{r7, lr}
 80012c2:	b082      	sub	sp, #8
 80012c4:	af00      	add	r7, sp, #0
 80012c6:	6078      	str	r0, [r7, #4]
 80012c8:	6039      	str	r1, [r7, #0]
 80012ca:	687b      	ldr	r3, [r7, #4]
 80012cc:	681b      	ldr	r3, [r3, #0]
 80012ce:	4a05      	ldr	r2, [pc, #20]	; (80012e4 <LL_I2C_SetMode+0x24>)
 80012d0:	401a      	ands	r2, r3
 80012d2:	683b      	ldr	r3, [r7, #0]
 80012d4:	431a      	orrs	r2, r3
 80012d6:	687b      	ldr	r3, [r7, #4]
 80012d8:	601a      	str	r2, [r3, #0]
 80012da:	46c0      	nop			; (mov r8, r8)
 80012dc:	46bd      	mov	sp, r7
 80012de:	b002      	add	sp, #8
 80012e0:	bd80      	pop	{r7, pc}
 80012e2:	46c0      	nop			; (mov r8, r8)
 80012e4:	ffcfffff 	.word	0xffcfffff

080012e8 <LL_I2C_IsActiveFlag_TXIS>:
 80012e8:	b580      	push	{r7, lr}
 80012ea:	b082      	sub	sp, #8
 80012ec:	af00      	add	r7, sp, #0
 80012ee:	6078      	str	r0, [r7, #4]
 80012f0:	687b      	ldr	r3, [r7, #4]
 80012f2:	699b      	ldr	r3, [r3, #24]
 80012f4:	2202      	movs	r2, #2
 80012f6:	4013      	ands	r3, r2
 80012f8:	3b02      	subs	r3, #2
 80012fa:	425a      	negs	r2, r3
 80012fc:	4153      	adcs	r3, r2
 80012fe:	b2db      	uxtb	r3, r3
 8001300:	0018      	movs	r0, r3
 8001302:	46bd      	mov	sp, r7
 8001304:	b002      	add	sp, #8
 8001306:	bd80      	pop	{r7, pc}

08001308 <LL_I2C_IsActiveFlag_TC>:
 8001308:	b580      	push	{r7, lr}
 800130a:	b082      	sub	sp, #8
 800130c:	af00      	add	r7, sp, #0
 800130e:	6078      	str	r0, [r7, #4]
 8001310:	687b      	ldr	r3, [r7, #4]
 8001312:	699b      	ldr	r3, [r3, #24]
 8001314:	2240      	movs	r2, #64	; 0x40
 8001316:	4013      	ands	r3, r2
 8001318:	3b40      	subs	r3, #64	; 0x40
 800131a:	425a      	negs	r2, r3
 800131c:	4153      	adcs	r3, r2
 800131e:	b2db      	uxtb	r3, r3
 8001320:	0018      	movs	r0, r3
 8001322:	46bd      	mov	sp, r7
 8001324:	b002      	add	sp, #8
 8001326:	bd80      	pop	{r7, pc}

08001328 <LL_I2C_HandleTransfer>:
 8001328:	b580      	push	{r7, lr}
 800132a:	b084      	sub	sp, #16
 800132c:	af00      	add	r7, sp, #0
 800132e:	60f8      	str	r0, [r7, #12]
 8001330:	60b9      	str	r1, [r7, #8]
 8001332:	607a      	str	r2, [r7, #4]
 8001334:	603b      	str	r3, [r7, #0]
 8001336:	68fb      	ldr	r3, [r7, #12]
 8001338:	685b      	ldr	r3, [r3, #4]
 800133a:	4a09      	ldr	r2, [pc, #36]	; (8001360 <LL_I2C_HandleTransfer+0x38>)
 800133c:	401a      	ands	r2, r3
 800133e:	68b9      	ldr	r1, [r7, #8]
 8001340:	687b      	ldr	r3, [r7, #4]
 8001342:	4319      	orrs	r1, r3
 8001344:	683b      	ldr	r3, [r7, #0]
 8001346:	041b      	lsls	r3, r3, #16
 8001348:	4319      	orrs	r1, r3
 800134a:	69bb      	ldr	r3, [r7, #24]
 800134c:	4319      	orrs	r1, r3
 800134e:	69fb      	ldr	r3, [r7, #28]
 8001350:	430b      	orrs	r3, r1
 8001352:	431a      	orrs	r2, r3
 8001354:	68fb      	ldr	r3, [r7, #12]
 8001356:	605a      	str	r2, [r3, #4]
 8001358:	46c0      	nop			; (mov r8, r8)
 800135a:	46bd      	mov	sp, r7
 800135c:	b004      	add	sp, #16
 800135e:	bd80      	pop	{r7, pc}
 8001360:	fc008000 	.word	0xfc008000

08001364 <LL_I2C_TransmitData8>:
 8001364:	b580      	push	{r7, lr}
 8001366:	b082      	sub	sp, #8
 8001368:	af00      	add	r7, sp, #0
 800136a:	6078      	str	r0, [r7, #4]
 800136c:	000a      	movs	r2, r1
 800136e:	1cfb      	adds	r3, r7, #3
 8001370:	701a      	strb	r2, [r3, #0]
 8001372:	1cfb      	adds	r3, r7, #3
 8001374:	781a      	ldrb	r2, [r3, #0]
 8001376:	687b      	ldr	r3, [r7, #4]
 8001378:	629a      	str	r2, [r3, #40]	; 0x28
 800137a:	46c0      	nop			; (mov r8, r8)
 800137c:	46bd      	mov	sp, r7
 800137e:	b002      	add	sp, #8
 8001380:	bd80      	pop	{r7, pc}

08001382 <drawEmptyRec>:
 8001382:	b5b0      	push	{r4, r5, r7, lr}
 8001384:	b084      	sub	sp, #16
 8001386:	af00      	add	r7, sp, #0
 8001388:	0005      	movs	r5, r0
 800138a:	000c      	movs	r4, r1
 800138c:	0010      	movs	r0, r2
 800138e:	0019      	movs	r1, r3
 8001390:	1dbb      	adds	r3, r7, #6
 8001392:	1c2a      	adds	r2, r5, #0
 8001394:	801a      	strh	r2, [r3, #0]
 8001396:	1d7b      	adds	r3, r7, #5
 8001398:	1c22      	adds	r2, r4, #0
 800139a:	701a      	strb	r2, [r3, #0]
 800139c:	1cbb      	adds	r3, r7, #2
 800139e:	1c02      	adds	r2, r0, #0
 80013a0:	801a      	strh	r2, [r3, #0]
 80013a2:	1d3b      	adds	r3, r7, #4
 80013a4:	1c0a      	adds	r2, r1, #0
 80013a6:	701a      	strb	r2, [r3, #0]
 80013a8:	230d      	movs	r3, #13
 80013aa:	18fb      	adds	r3, r7, r3
 80013ac:	2200      	movs	r2, #0
 80013ae:	701a      	strb	r2, [r3, #0]
 80013b0:	1dbb      	adds	r3, r7, #6
 80013b2:	2200      	movs	r2, #0
 80013b4:	5e9b      	ldrsh	r3, [r3, r2]
 80013b6:	2b00      	cmp	r3, #0
 80013b8:	da02      	bge.n	80013c0 <drawEmptyRec+0x3e>
 80013ba:	1dbb      	adds	r3, r7, #6
 80013bc:	2200      	movs	r2, #0
 80013be:	801a      	strh	r2, [r3, #0]
 80013c0:	1cbb      	adds	r3, r7, #2
 80013c2:	2200      	movs	r2, #0
 80013c4:	5e9b      	ldrsh	r3, [r3, r2]
 80013c6:	2b00      	cmp	r3, #0
 80013c8:	da02      	bge.n	80013d0 <drawEmptyRec+0x4e>
 80013ca:	1cbb      	adds	r3, r7, #2
 80013cc:	2200      	movs	r2, #0
 80013ce:	801a      	strh	r2, [r3, #0]
 80013d0:	1dba      	adds	r2, r7, #6
 80013d2:	1cbb      	adds	r3, r7, #2
 80013d4:	2100      	movs	r1, #0
 80013d6:	5e52      	ldrsh	r2, [r2, r1]
 80013d8:	2100      	movs	r1, #0
 80013da:	5e5b      	ldrsh	r3, [r3, r1]
 80013dc:	429a      	cmp	r2, r3
 80013de:	dd0c      	ble.n	80013fa <drawEmptyRec+0x78>
 80013e0:	210d      	movs	r1, #13
 80013e2:	187b      	adds	r3, r7, r1
 80013e4:	1dba      	adds	r2, r7, #6
 80013e6:	8812      	ldrh	r2, [r2, #0]
 80013e8:	701a      	strb	r2, [r3, #0]
 80013ea:	1dbb      	adds	r3, r7, #6
 80013ec:	1cba      	adds	r2, r7, #2
 80013ee:	8812      	ldrh	r2, [r2, #0]
 80013f0:	801a      	strh	r2, [r3, #0]
 80013f2:	1cbb      	adds	r3, r7, #2
 80013f4:	187a      	adds	r2, r7, r1
 80013f6:	7812      	ldrb	r2, [r2, #0]
 80013f8:	801a      	strh	r2, [r3, #0]
 80013fa:	1d7a      	adds	r2, r7, #5
 80013fc:	1d3b      	adds	r3, r7, #4
 80013fe:	7812      	ldrb	r2, [r2, #0]
 8001400:	781b      	ldrb	r3, [r3, #0]
 8001402:	429a      	cmp	r2, r3
 8001404:	d90c      	bls.n	8001420 <drawEmptyRec+0x9e>
 8001406:	210d      	movs	r1, #13
 8001408:	187b      	adds	r3, r7, r1
 800140a:	1d7a      	adds	r2, r7, #5
 800140c:	7812      	ldrb	r2, [r2, #0]
 800140e:	701a      	strb	r2, [r3, #0]
 8001410:	1d7b      	adds	r3, r7, #5
 8001412:	1d3a      	adds	r2, r7, #4
 8001414:	7812      	ldrb	r2, [r2, #0]
 8001416:	701a      	strb	r2, [r3, #0]
 8001418:	1d3b      	adds	r3, r7, #4
 800141a:	187a      	adds	r2, r7, r1
 800141c:	7812      	ldrb	r2, [r2, #0]
 800141e:	701a      	strb	r2, [r3, #0]
 8001420:	230f      	movs	r3, #15
 8001422:	18fb      	adds	r3, r7, r3
 8001424:	2200      	movs	r2, #0
 8001426:	701a      	strb	r2, [r3, #0]
 8001428:	e046      	b.n	80014b8 <drawEmptyRec+0x136>
 800142a:	240f      	movs	r4, #15
 800142c:	193b      	adds	r3, r7, r4
 800142e:	781b      	ldrb	r3, [r3, #0]
 8001430:	b29a      	uxth	r2, r3
 8001432:	1dbb      	adds	r3, r7, #6
 8001434:	881b      	ldrh	r3, [r3, #0]
 8001436:	18d3      	adds	r3, r2, r3
 8001438:	b29b      	uxth	r3, r3
 800143a:	b218      	sxth	r0, r3
 800143c:	1d7b      	adds	r3, r7, #5
 800143e:	781b      	ldrb	r3, [r3, #0]
 8001440:	b21b      	sxth	r3, r3
 8001442:	2520      	movs	r5, #32
 8001444:	197a      	adds	r2, r7, r5
 8001446:	7812      	ldrb	r2, [r2, #0]
 8001448:	0019      	movs	r1, r3
 800144a:	f000 fafd 	bl	8001a48 <oledSetPix>
 800144e:	193b      	adds	r3, r7, r4
 8001450:	781b      	ldrb	r3, [r3, #0]
 8001452:	b29a      	uxth	r2, r3
 8001454:	1dbb      	adds	r3, r7, #6
 8001456:	881b      	ldrh	r3, [r3, #0]
 8001458:	18d3      	adds	r3, r2, r3
 800145a:	b29b      	uxth	r3, r3
 800145c:	b218      	sxth	r0, r3
 800145e:	1d3b      	adds	r3, r7, #4
 8001460:	781b      	ldrb	r3, [r3, #0]
 8001462:	b21b      	sxth	r3, r3
 8001464:	197a      	adds	r2, r7, r5
 8001466:	7812      	ldrb	r2, [r2, #0]
 8001468:	0019      	movs	r1, r3
 800146a:	f000 faed 	bl	8001a48 <oledSetPix>
 800146e:	1cbb      	adds	r3, r7, #2
 8001470:	881a      	ldrh	r2, [r3, #0]
 8001472:	193b      	adds	r3, r7, r4
 8001474:	781b      	ldrb	r3, [r3, #0]
 8001476:	b29b      	uxth	r3, r3
 8001478:	1ad3      	subs	r3, r2, r3
 800147a:	b29b      	uxth	r3, r3
 800147c:	b218      	sxth	r0, r3
 800147e:	1d7b      	adds	r3, r7, #5
 8001480:	781b      	ldrb	r3, [r3, #0]
 8001482:	b21b      	sxth	r3, r3
 8001484:	197a      	adds	r2, r7, r5
 8001486:	7812      	ldrb	r2, [r2, #0]
 8001488:	0019      	movs	r1, r3
 800148a:	f000 fadd 	bl	8001a48 <oledSetPix>
 800148e:	1cbb      	adds	r3, r7, #2
 8001490:	881a      	ldrh	r2, [r3, #0]
 8001492:	193b      	adds	r3, r7, r4
 8001494:	781b      	ldrb	r3, [r3, #0]
 8001496:	b29b      	uxth	r3, r3
 8001498:	1ad3      	subs	r3, r2, r3
 800149a:	b29b      	uxth	r3, r3
 800149c:	b218      	sxth	r0, r3
 800149e:	1d3b      	adds	r3, r7, #4
 80014a0:	781b      	ldrb	r3, [r3, #0]
 80014a2:	b21b      	sxth	r3, r3
 80014a4:	197a      	adds	r2, r7, r5
 80014a6:	7812      	ldrb	r2, [r2, #0]
 80014a8:	0019      	movs	r1, r3
 80014aa:	f000 facd 	bl	8001a48 <oledSetPix>
 80014ae:	193b      	adds	r3, r7, r4
 80014b0:	781a      	ldrb	r2, [r3, #0]
 80014b2:	193b      	adds	r3, r7, r4
 80014b4:	3201      	adds	r2, #1
 80014b6:	701a      	strb	r2, [r3, #0]
 80014b8:	230f      	movs	r3, #15
 80014ba:	18fb      	adds	r3, r7, r3
 80014bc:	781a      	ldrb	r2, [r3, #0]
 80014be:	1cbb      	adds	r3, r7, #2
 80014c0:	2100      	movs	r1, #0
 80014c2:	5e59      	ldrsh	r1, [r3, r1]
 80014c4:	1dbb      	adds	r3, r7, #6
 80014c6:	2000      	movs	r0, #0
 80014c8:	5e1b      	ldrsh	r3, [r3, r0]
 80014ca:	1acb      	subs	r3, r1, r3
 80014cc:	d500      	bpl.n	80014d0 <drawEmptyRec+0x14e>
 80014ce:	3301      	adds	r3, #1
 80014d0:	105b      	asrs	r3, r3, #1
 80014d2:	3301      	adds	r3, #1
 80014d4:	429a      	cmp	r2, r3
 80014d6:	dda8      	ble.n	800142a <drawEmptyRec+0xa8>
 80014d8:	230e      	movs	r3, #14
 80014da:	18fb      	adds	r3, r7, r3
 80014dc:	2200      	movs	r2, #0
 80014de:	701a      	strb	r2, [r3, #0]
 80014e0:	e04a      	b.n	8001578 <drawEmptyRec+0x1f6>
 80014e2:	1d7b      	adds	r3, r7, #5
 80014e4:	781b      	ldrb	r3, [r3, #0]
 80014e6:	b29a      	uxth	r2, r3
 80014e8:	240e      	movs	r4, #14
 80014ea:	193b      	adds	r3, r7, r4
 80014ec:	781b      	ldrb	r3, [r3, #0]
 80014ee:	b29b      	uxth	r3, r3
 80014f0:	18d3      	adds	r3, r2, r3
 80014f2:	b29b      	uxth	r3, r3
 80014f4:	b219      	sxth	r1, r3
 80014f6:	2520      	movs	r5, #32
 80014f8:	197b      	adds	r3, r7, r5
 80014fa:	781a      	ldrb	r2, [r3, #0]
 80014fc:	1dbb      	adds	r3, r7, #6
 80014fe:	2000      	movs	r0, #0
 8001500:	5e1b      	ldrsh	r3, [r3, r0]
 8001502:	0018      	movs	r0, r3
 8001504:	f000 faa0 	bl	8001a48 <oledSetPix>
 8001508:	1d7b      	adds	r3, r7, #5
 800150a:	781b      	ldrb	r3, [r3, #0]
 800150c:	b29a      	uxth	r2, r3
 800150e:	193b      	adds	r3, r7, r4
 8001510:	781b      	ldrb	r3, [r3, #0]
 8001512:	b29b      	uxth	r3, r3
 8001514:	18d3      	adds	r3, r2, r3
 8001516:	b29b      	uxth	r3, r3
 8001518:	b219      	sxth	r1, r3
 800151a:	197b      	adds	r3, r7, r5
 800151c:	781a      	ldrb	r2, [r3, #0]
 800151e:	1cbb      	adds	r3, r7, #2
 8001520:	2000      	movs	r0, #0
 8001522:	5e1b      	ldrsh	r3, [r3, r0]
 8001524:	0018      	movs	r0, r3
 8001526:	f000 fa8f 	bl	8001a48 <oledSetPix>
 800152a:	1d3b      	adds	r3, r7, #4
 800152c:	781b      	ldrb	r3, [r3, #0]
 800152e:	b29a      	uxth	r2, r3
 8001530:	193b      	adds	r3, r7, r4
 8001532:	781b      	ldrb	r3, [r3, #0]
 8001534:	b29b      	uxth	r3, r3
 8001536:	1ad3      	subs	r3, r2, r3
 8001538:	b29b      	uxth	r3, r3
 800153a:	b219      	sxth	r1, r3
 800153c:	197b      	adds	r3, r7, r5
 800153e:	781a      	ldrb	r2, [r3, #0]
 8001540:	1dbb      	adds	r3, r7, #6
 8001542:	2000      	movs	r0, #0
 8001544:	5e1b      	ldrsh	r3, [r3, r0]
 8001546:	0018      	movs	r0, r3
 8001548:	f000 fa7e 	bl	8001a48 <oledSetPix>
 800154c:	1d3b      	adds	r3, r7, #4
 800154e:	781b      	ldrb	r3, [r3, #0]
 8001550:	b29a      	uxth	r2, r3
 8001552:	193b      	adds	r3, r7, r4
 8001554:	781b      	ldrb	r3, [r3, #0]
 8001556:	b29b      	uxth	r3, r3
 8001558:	1ad3      	subs	r3, r2, r3
 800155a:	b29b      	uxth	r3, r3
 800155c:	b219      	sxth	r1, r3
 800155e:	197b      	adds	r3, r7, r5
 8001560:	781a      	ldrb	r2, [r3, #0]
 8001562:	1cbb      	adds	r3, r7, #2
 8001564:	2000      	movs	r0, #0
 8001566:	5e1b      	ldrsh	r3, [r3, r0]
 8001568:	0018      	movs	r0, r3
 800156a:	f000 fa6d 	bl	8001a48 <oledSetPix>
 800156e:	193b      	adds	r3, r7, r4
 8001570:	781a      	ldrb	r2, [r3, #0]
 8001572:	193b      	adds	r3, r7, r4
 8001574:	3201      	adds	r2, #1
 8001576:	701a      	strb	r2, [r3, #0]
 8001578:	230e      	movs	r3, #14
 800157a:	18fb      	adds	r3, r7, r3
 800157c:	781a      	ldrb	r2, [r3, #0]
 800157e:	1d3b      	adds	r3, r7, #4
 8001580:	7819      	ldrb	r1, [r3, #0]
 8001582:	1d7b      	adds	r3, r7, #5
 8001584:	781b      	ldrb	r3, [r3, #0]
 8001586:	1acb      	subs	r3, r1, r3
 8001588:	d500      	bpl.n	800158c <drawEmptyRec+0x20a>
 800158a:	3301      	adds	r3, #1
 800158c:	105b      	asrs	r3, r3, #1
 800158e:	3301      	adds	r3, #1
 8001590:	429a      	cmp	r2, r3
 8001592:	dda6      	ble.n	80014e2 <drawEmptyRec+0x160>
 8001594:	46c0      	nop			; (mov r8, r8)
 8001596:	46bd      	mov	sp, r7
 8001598:	b004      	add	sp, #16
 800159a:	bdb0      	pop	{r4, r5, r7, pc}

0800159c <oled_cmd_send>:
 800159c:	b580      	push	{r7, lr}
 800159e:	b084      	sub	sp, #16
 80015a0:	af02      	add	r7, sp, #8
 80015a2:	0002      	movs	r2, r0
 80015a4:	1dfb      	adds	r3, r7, #7
 80015a6:	701a      	strb	r2, [r3, #0]
 80015a8:	4818      	ldr	r0, [pc, #96]	; (800160c <oled_cmd_send+0x70>)
 80015aa:	2380      	movs	r3, #128	; 0x80
 80015ac:	019b      	lsls	r3, r3, #6
 80015ae:	9301      	str	r3, [sp, #4]
 80015b0:	2380      	movs	r3, #128	; 0x80
 80015b2:	049b      	lsls	r3, r3, #18
 80015b4:	9300      	str	r3, [sp, #0]
 80015b6:	2302      	movs	r3, #2
 80015b8:	2200      	movs	r2, #0
 80015ba:	2178      	movs	r1, #120	; 0x78
 80015bc:	f7ff feb4 	bl	8001328 <LL_I2C_HandleTransfer>
 80015c0:	46c0      	nop			; (mov r8, r8)
 80015c2:	4b12      	ldr	r3, [pc, #72]	; (800160c <oled_cmd_send+0x70>)
 80015c4:	0018      	movs	r0, r3
 80015c6:	f7ff fe8f 	bl	80012e8 <LL_I2C_IsActiveFlag_TXIS>
 80015ca:	1e03      	subs	r3, r0, #0
 80015cc:	d0f9      	beq.n	80015c2 <oled_cmd_send+0x26>
 80015ce:	4b0f      	ldr	r3, [pc, #60]	; (800160c <oled_cmd_send+0x70>)
 80015d0:	2100      	movs	r1, #0
 80015d2:	0018      	movs	r0, r3
 80015d4:	f7ff fec6 	bl	8001364 <LL_I2C_TransmitData8>
 80015d8:	46c0      	nop			; (mov r8, r8)
 80015da:	4b0c      	ldr	r3, [pc, #48]	; (800160c <oled_cmd_send+0x70>)
 80015dc:	0018      	movs	r0, r3
 80015de:	f7ff fe83 	bl	80012e8 <LL_I2C_IsActiveFlag_TXIS>
 80015e2:	1e03      	subs	r3, r0, #0
 80015e4:	d0f9      	beq.n	80015da <oled_cmd_send+0x3e>
 80015e6:	1dfb      	adds	r3, r7, #7
 80015e8:	781b      	ldrb	r3, [r3, #0]
 80015ea:	4a08      	ldr	r2, [pc, #32]	; (800160c <oled_cmd_send+0x70>)
 80015ec:	0019      	movs	r1, r3
 80015ee:	0010      	movs	r0, r2
 80015f0:	f7ff feb8 	bl	8001364 <LL_I2C_TransmitData8>
 80015f4:	46c0      	nop			; (mov r8, r8)
 80015f6:	4b05      	ldr	r3, [pc, #20]	; (800160c <oled_cmd_send+0x70>)
 80015f8:	0018      	movs	r0, r3
 80015fa:	f7ff fe85 	bl	8001308 <LL_I2C_IsActiveFlag_TC>
 80015fe:	1e03      	subs	r3, r0, #0
 8001600:	d1f9      	bne.n	80015f6 <oled_cmd_send+0x5a>
 8001602:	2300      	movs	r3, #0
 8001604:	0018      	movs	r0, r3
 8001606:	46bd      	mov	sp, r7
 8001608:	b002      	add	sp, #8
 800160a:	bd80      	pop	{r7, pc}
 800160c:	40005400 	.word	0x40005400

08001610 <oled_data_send>:
 8001610:	b590      	push	{r4, r7, lr}
 8001612:	b087      	sub	sp, #28
 8001614:	af02      	add	r7, sp, #8
 8001616:	6078      	str	r0, [r7, #4]
 8001618:	000a      	movs	r2, r1
 800161a:	1cfb      	adds	r3, r7, #3
 800161c:	701a      	strb	r2, [r3, #0]
 800161e:	1cfb      	adds	r3, r7, #3
 8001620:	781b      	ldrb	r3, [r3, #0]
 8001622:	3301      	adds	r3, #1
 8001624:	001a      	movs	r2, r3
 8001626:	4823      	ldr	r0, [pc, #140]	; (80016b4 <oled_data_send+0xa4>)
 8001628:	2380      	movs	r3, #128	; 0x80
 800162a:	019b      	lsls	r3, r3, #6
 800162c:	9301      	str	r3, [sp, #4]
 800162e:	2380      	movs	r3, #128	; 0x80
 8001630:	049b      	lsls	r3, r3, #18
 8001632:	9300      	str	r3, [sp, #0]
 8001634:	0013      	movs	r3, r2
 8001636:	2200      	movs	r2, #0
 8001638:	2178      	movs	r1, #120	; 0x78
 800163a:	f7ff fe75 	bl	8001328 <LL_I2C_HandleTransfer>
 800163e:	46c0      	nop			; (mov r8, r8)
 8001640:	4b1c      	ldr	r3, [pc, #112]	; (80016b4 <oled_data_send+0xa4>)
 8001642:	0018      	movs	r0, r3
 8001644:	f7ff fe50 	bl	80012e8 <LL_I2C_IsActiveFlag_TXIS>
 8001648:	1e03      	subs	r3, r0, #0
 800164a:	d0f9      	beq.n	8001640 <oled_data_send+0x30>
 800164c:	4b19      	ldr	r3, [pc, #100]	; (80016b4 <oled_data_send+0xa4>)
 800164e:	2140      	movs	r1, #64	; 0x40
 8001650:	0018      	movs	r0, r3
 8001652:	f7ff fe87 	bl	8001364 <LL_I2C_TransmitData8>
 8001656:	230f      	movs	r3, #15
 8001658:	18fb      	adds	r3, r7, r3
 800165a:	2200      	movs	r2, #0
 800165c:	701a      	strb	r2, [r3, #0]
 800165e:	e016      	b.n	800168e <oled_data_send+0x7e>
 8001660:	46c0      	nop			; (mov r8, r8)
 8001662:	4b14      	ldr	r3, [pc, #80]	; (80016b4 <oled_data_send+0xa4>)
 8001664:	0018      	movs	r0, r3
 8001666:	f7ff fe3f 	bl	80012e8 <LL_I2C_IsActiveFlag_TXIS>
 800166a:	1e03      	subs	r3, r0, #0
 800166c:	d0f9      	beq.n	8001662 <oled_data_send+0x52>
 800166e:	240f      	movs	r4, #15
 8001670:	193b      	adds	r3, r7, r4
 8001672:	781b      	ldrb	r3, [r3, #0]
 8001674:	687a      	ldr	r2, [r7, #4]
 8001676:	18d3      	adds	r3, r2, r3
 8001678:	781b      	ldrb	r3, [r3, #0]
 800167a:	4a0e      	ldr	r2, [pc, #56]	; (80016b4 <oled_data_send+0xa4>)
 800167c:	0019      	movs	r1, r3
 800167e:	0010      	movs	r0, r2
 8001680:	f7ff fe70 	bl	8001364 <LL_I2C_TransmitData8>
 8001684:	193b      	adds	r3, r7, r4
 8001686:	781a      	ldrb	r2, [r3, #0]
 8001688:	193b      	adds	r3, r7, r4
 800168a:	3201      	adds	r2, #1
 800168c:	701a      	strb	r2, [r3, #0]
 800168e:	230f      	movs	r3, #15
 8001690:	18fa      	adds	r2, r7, r3
 8001692:	1cfb      	adds	r3, r7, #3
 8001694:	7812      	ldrb	r2, [r2, #0]
 8001696:	781b      	ldrb	r3, [r3, #0]
 8001698:	429a      	cmp	r2, r3
 800169a:	d3e1      	bcc.n	8001660 <oled_data_send+0x50>
 800169c:	46c0      	nop			; (mov r8, r8)
 800169e:	4b05      	ldr	r3, [pc, #20]	; (80016b4 <oled_data_send+0xa4>)
 80016a0:	0018      	movs	r0, r3
 80016a2:	f7ff fe31 	bl	8001308 <LL_I2C_IsActiveFlag_TC>
 80016a6:	1e03      	subs	r3, r0, #0
 80016a8:	d1f9      	bne.n	800169e <oled_data_send+0x8e>
 80016aa:	2300      	movs	r3, #0
 80016ac:	0018      	movs	r0, r3
 80016ae:	46bd      	mov	sp, r7
 80016b0:	b005      	add	sp, #20
 80016b2:	bd90      	pop	{r4, r7, pc}
 80016b4:	40005400 	.word	0x40005400

080016b8 <oledColor>:
 80016b8:	b580      	push	{r7, lr}
 80016ba:	b082      	sub	sp, #8
 80016bc:	af00      	add	r7, sp, #0
 80016be:	0002      	movs	r2, r0
 80016c0:	1dfb      	adds	r3, r7, #7
 80016c2:	701a      	strb	r2, [r3, #0]
 80016c4:	1dfb      	adds	r3, r7, #7
 80016c6:	7819      	ldrb	r1, [r3, #0]
 80016c8:	2380      	movs	r3, #128	; 0x80
 80016ca:	00da      	lsls	r2, r3, #3
 80016cc:	4b03      	ldr	r3, [pc, #12]	; (80016dc <oledColor+0x24>)
 80016ce:	0018      	movs	r0, r3
 80016d0:	f000 fd38 	bl	8002144 <memset>
 80016d4:	46c0      	nop			; (mov r8, r8)
 80016d6:	46bd      	mov	sp, r7
 80016d8:	b002      	add	sp, #8
 80016da:	bd80      	pop	{r7, pc}
 80016dc:	20000514 	.word	0x20000514

080016e0 <oledFrame2>:
 80016e0:	b580      	push	{r7, lr}
 80016e2:	af00      	add	r7, sp, #0
 80016e4:	4b8b      	ldr	r3, [pc, #556]	; (8001914 <oledFrame2+0x234>)
 80016e6:	781a      	ldrb	r2, [r3, #0]
 80016e8:	4b8b      	ldr	r3, [pc, #556]	; (8001918 <oledFrame2+0x238>)
 80016ea:	781b      	ldrb	r3, [r3, #0]
 80016ec:	18d3      	adds	r3, r2, r3
 80016ee:	b2da      	uxtb	r2, r3
 80016f0:	4b88      	ldr	r3, [pc, #544]	; (8001914 <oledFrame2+0x234>)
 80016f2:	701a      	strb	r2, [r3, #0]
 80016f4:	4b87      	ldr	r3, [pc, #540]	; (8001914 <oledFrame2+0x234>)
 80016f6:	781b      	ldrb	r3, [r3, #0]
 80016f8:	2109      	movs	r1, #9
 80016fa:	0018      	movs	r0, r3
 80016fc:	f7fe fd8a 	bl	8000214 <__aeabi_uidivmod>
 8001700:	000b      	movs	r3, r1
 8001702:	b2da      	uxtb	r2, r3
 8001704:	4b83      	ldr	r3, [pc, #524]	; (8001914 <oledFrame2+0x234>)
 8001706:	701a      	strb	r2, [r3, #0]
 8001708:	4b84      	ldr	r3, [pc, #528]	; (800191c <oledFrame2+0x23c>)
 800170a:	2280      	movs	r2, #128	; 0x80
 800170c:	2101      	movs	r1, #1
 800170e:	0018      	movs	r0, r3
 8001710:	f000 fd18 	bl	8002144 <memset>
 8001714:	4b82      	ldr	r3, [pc, #520]	; (8001920 <oledFrame2+0x240>)
 8001716:	2280      	movs	r2, #128	; 0x80
 8001718:	2100      	movs	r1, #0
 800171a:	0018      	movs	r0, r3
 800171c:	f000 fd12 	bl	8002144 <memset>
 8001720:	4880      	ldr	r0, [pc, #512]	; (8001924 <oledFrame2+0x244>)
 8001722:	2380      	movs	r3, #128	; 0x80
 8001724:	005b      	lsls	r3, r3, #1
 8001726:	001a      	movs	r2, r3
 8001728:	2100      	movs	r1, #0
 800172a:	f000 fd0b 	bl	8002144 <memset>
 800172e:	4b7e      	ldr	r3, [pc, #504]	; (8001928 <oledFrame2+0x248>)
 8001730:	2280      	movs	r2, #128	; 0x80
 8001732:	2100      	movs	r1, #0
 8001734:	0018      	movs	r0, r3
 8001736:	f000 fd05 	bl	8002144 <memset>
 800173a:	4b7c      	ldr	r3, [pc, #496]	; (800192c <oledFrame2+0x24c>)
 800173c:	2280      	movs	r2, #128	; 0x80
 800173e:	2180      	movs	r1, #128	; 0x80
 8001740:	0018      	movs	r0, r3
 8001742:	f000 fcff 	bl	8002144 <memset>
 8001746:	4b73      	ldr	r3, [pc, #460]	; (8001914 <oledFrame2+0x234>)
 8001748:	781b      	ldrb	r3, [r3, #0]
 800174a:	2b04      	cmp	r3, #4
 800174c:	d80e      	bhi.n	800176c <oledFrame2+0x8c>
 800174e:	4878      	ldr	r0, [pc, #480]	; (8001930 <oledFrame2+0x250>)
 8001750:	4b70      	ldr	r3, [pc, #448]	; (8001914 <oledFrame2+0x234>)
 8001752:	781b      	ldrb	r3, [r3, #0]
 8001754:	001a      	movs	r2, r3
 8001756:	2100      	movs	r1, #0
 8001758:	f000 fcf4 	bl	8002144 <memset>
 800175c:	4875      	ldr	r0, [pc, #468]	; (8001934 <oledFrame2+0x254>)
 800175e:	4b6d      	ldr	r3, [pc, #436]	; (8001914 <oledFrame2+0x234>)
 8001760:	781b      	ldrb	r3, [r3, #0]
 8001762:	001a      	movs	r2, r3
 8001764:	2100      	movs	r1, #0
 8001766:	f000 fced 	bl	8002144 <memset>
 800176a:	e026      	b.n	80017ba <oledFrame2+0xda>
 800176c:	4870      	ldr	r0, [pc, #448]	; (8001930 <oledFrame2+0x250>)
 800176e:	4b69      	ldr	r3, [pc, #420]	; (8001914 <oledFrame2+0x234>)
 8001770:	781b      	ldrb	r3, [r3, #0]
 8001772:	3b04      	subs	r3, #4
 8001774:	001a      	movs	r2, r3
 8001776:	2120      	movs	r1, #32
 8001778:	f000 fce4 	bl	8002144 <memset>
 800177c:	4b65      	ldr	r3, [pc, #404]	; (8001914 <oledFrame2+0x234>)
 800177e:	781b      	ldrb	r3, [r3, #0]
 8001780:	33fc      	adds	r3, #252	; 0xfc
 8001782:	001a      	movs	r2, r3
 8001784:	4b65      	ldr	r3, [pc, #404]	; (800191c <oledFrame2+0x23c>)
 8001786:	18d3      	adds	r3, r2, r3
 8001788:	2204      	movs	r2, #4
 800178a:	2100      	movs	r1, #0
 800178c:	0018      	movs	r0, r3
 800178e:	f000 fcd9 	bl	8002144 <memset>
 8001792:	4868      	ldr	r0, [pc, #416]	; (8001934 <oledFrame2+0x254>)
 8001794:	4b5f      	ldr	r3, [pc, #380]	; (8001914 <oledFrame2+0x234>)
 8001796:	781b      	ldrb	r3, [r3, #0]
 8001798:	3b04      	subs	r3, #4
 800179a:	001a      	movs	r2, r3
 800179c:	2104      	movs	r1, #4
 800179e:	f000 fcd1 	bl	8002144 <memset>
 80017a2:	4b5c      	ldr	r3, [pc, #368]	; (8001914 <oledFrame2+0x234>)
 80017a4:	781b      	ldrb	r3, [r3, #0]
 80017a6:	229f      	movs	r2, #159	; 0x9f
 80017a8:	0092      	lsls	r2, r2, #2
 80017aa:	189a      	adds	r2, r3, r2
 80017ac:	4b5b      	ldr	r3, [pc, #364]	; (800191c <oledFrame2+0x23c>)
 80017ae:	18d3      	adds	r3, r2, r3
 80017b0:	2204      	movs	r2, #4
 80017b2:	2100      	movs	r1, #0
 80017b4:	0018      	movs	r0, r3
 80017b6:	f000 fcc5 	bl	8002144 <memset>
 80017ba:	4b56      	ldr	r3, [pc, #344]	; (8001914 <oledFrame2+0x234>)
 80017bc:	781b      	ldrb	r3, [r3, #0]
 80017be:	b29a      	uxth	r2, r3
 80017c0:	4b5d      	ldr	r3, [pc, #372]	; (8001938 <oledFrame2+0x258>)
 80017c2:	801a      	strh	r2, [r3, #0]
 80017c4:	e032      	b.n	800182c <oledFrame2+0x14c>
 80017c6:	4b5c      	ldr	r3, [pc, #368]	; (8001938 <oledFrame2+0x258>)
 80017c8:	881b      	ldrh	r3, [r3, #0]
 80017ca:	1c5a      	adds	r2, r3, #1
 80017cc:	32ff      	adds	r2, #255	; 0xff
 80017ce:	4b53      	ldr	r3, [pc, #332]	; (800191c <oledFrame2+0x23c>)
 80017d0:	18d3      	adds	r3, r2, r3
 80017d2:	2205      	movs	r2, #5
 80017d4:	2120      	movs	r1, #32
 80017d6:	0018      	movs	r0, r3
 80017d8:	f000 fcb4 	bl	8002144 <memset>
 80017dc:	4b56      	ldr	r3, [pc, #344]	; (8001938 <oledFrame2+0x258>)
 80017de:	881b      	ldrh	r3, [r3, #0]
 80017e0:	1d9a      	adds	r2, r3, #6
 80017e2:	32ff      	adds	r2, #255	; 0xff
 80017e4:	4b4d      	ldr	r3, [pc, #308]	; (800191c <oledFrame2+0x23c>)
 80017e6:	18d3      	adds	r3, r2, r3
 80017e8:	2204      	movs	r2, #4
 80017ea:	2100      	movs	r1, #0
 80017ec:	0018      	movs	r0, r3
 80017ee:	f000 fca9 	bl	8002144 <memset>
 80017f2:	4b51      	ldr	r3, [pc, #324]	; (8001938 <oledFrame2+0x258>)
 80017f4:	881b      	ldrh	r3, [r3, #0]
 80017f6:	22a0      	movs	r2, #160	; 0xa0
 80017f8:	0092      	lsls	r2, r2, #2
 80017fa:	189a      	adds	r2, r3, r2
 80017fc:	4b47      	ldr	r3, [pc, #284]	; (800191c <oledFrame2+0x23c>)
 80017fe:	18d3      	adds	r3, r2, r3
 8001800:	2205      	movs	r2, #5
 8001802:	2104      	movs	r1, #4
 8001804:	0018      	movs	r0, r3
 8001806:	f000 fc9d 	bl	8002144 <memset>
 800180a:	4b4b      	ldr	r3, [pc, #300]	; (8001938 <oledFrame2+0x258>)
 800180c:	881b      	ldrh	r3, [r3, #0]
 800180e:	4a4b      	ldr	r2, [pc, #300]	; (800193c <oledFrame2+0x25c>)
 8001810:	189a      	adds	r2, r3, r2
 8001812:	4b42      	ldr	r3, [pc, #264]	; (800191c <oledFrame2+0x23c>)
 8001814:	18d3      	adds	r3, r2, r3
 8001816:	2204      	movs	r2, #4
 8001818:	2100      	movs	r1, #0
 800181a:	0018      	movs	r0, r3
 800181c:	f000 fc92 	bl	8002144 <memset>
 8001820:	4b45      	ldr	r3, [pc, #276]	; (8001938 <oledFrame2+0x258>)
 8001822:	881b      	ldrh	r3, [r3, #0]
 8001824:	3309      	adds	r3, #9
 8001826:	b29a      	uxth	r2, r3
 8001828:	4b43      	ldr	r3, [pc, #268]	; (8001938 <oledFrame2+0x258>)
 800182a:	801a      	strh	r2, [r3, #0]
 800182c:	4b42      	ldr	r3, [pc, #264]	; (8001938 <oledFrame2+0x258>)
 800182e:	881b      	ldrh	r3, [r3, #0]
 8001830:	2b77      	cmp	r3, #119	; 0x77
 8001832:	d9c8      	bls.n	80017c6 <oledFrame2+0xe6>
 8001834:	4b40      	ldr	r3, [pc, #256]	; (8001938 <oledFrame2+0x258>)
 8001836:	881b      	ldrh	r3, [r3, #0]
 8001838:	001a      	movs	r2, r3
 800183a:	2389      	movs	r3, #137	; 0x89
 800183c:	1a9b      	subs	r3, r3, r2
 800183e:	2b04      	cmp	r3, #4
 8001840:	dd44      	ble.n	80018cc <oledFrame2+0x1ec>
 8001842:	4b3d      	ldr	r3, [pc, #244]	; (8001938 <oledFrame2+0x258>)
 8001844:	881b      	ldrh	r3, [r3, #0]
 8001846:	1c5a      	adds	r2, r3, #1
 8001848:	32ff      	adds	r2, #255	; 0xff
 800184a:	4b34      	ldr	r3, [pc, #208]	; (800191c <oledFrame2+0x23c>)
 800184c:	18d0      	adds	r0, r2, r3
 800184e:	4b3a      	ldr	r3, [pc, #232]	; (8001938 <oledFrame2+0x258>)
 8001850:	881b      	ldrh	r3, [r3, #0]
 8001852:	001a      	movs	r2, r3
 8001854:	2380      	movs	r3, #128	; 0x80
 8001856:	1a9b      	subs	r3, r3, r2
 8001858:	001a      	movs	r2, r3
 800185a:	2120      	movs	r1, #32
 800185c:	f000 fc72 	bl	8002144 <memset>
 8001860:	4b35      	ldr	r3, [pc, #212]	; (8001938 <oledFrame2+0x258>)
 8001862:	881b      	ldrh	r3, [r3, #0]
 8001864:	22a0      	movs	r2, #160	; 0xa0
 8001866:	0092      	lsls	r2, r2, #2
 8001868:	189a      	adds	r2, r3, r2
 800186a:	4b2c      	ldr	r3, [pc, #176]	; (800191c <oledFrame2+0x23c>)
 800186c:	18d0      	adds	r0, r2, r3
 800186e:	4b32      	ldr	r3, [pc, #200]	; (8001938 <oledFrame2+0x258>)
 8001870:	881b      	ldrh	r3, [r3, #0]
 8001872:	001a      	movs	r2, r3
 8001874:	2380      	movs	r3, #128	; 0x80
 8001876:	1a9b      	subs	r3, r3, r2
 8001878:	001a      	movs	r2, r3
 800187a:	2104      	movs	r1, #4
 800187c:	f000 fc62 	bl	8002144 <memset>
 8001880:	4b2d      	ldr	r3, [pc, #180]	; (8001938 <oledFrame2+0x258>)
 8001882:	881b      	ldrh	r3, [r3, #0]
 8001884:	001a      	movs	r2, r3
 8001886:	237b      	movs	r3, #123	; 0x7b
 8001888:	1a9b      	subs	r3, r3, r2
 800188a:	2b00      	cmp	r3, #0
 800188c:	dd3e      	ble.n	800190c <oledFrame2+0x22c>
 800188e:	4b2a      	ldr	r3, [pc, #168]	; (8001938 <oledFrame2+0x258>)
 8001890:	881b      	ldrh	r3, [r3, #0]
 8001892:	1d9a      	adds	r2, r3, #6
 8001894:	32ff      	adds	r2, #255	; 0xff
 8001896:	4b21      	ldr	r3, [pc, #132]	; (800191c <oledFrame2+0x23c>)
 8001898:	18d0      	adds	r0, r2, r3
 800189a:	4b27      	ldr	r3, [pc, #156]	; (8001938 <oledFrame2+0x258>)
 800189c:	881b      	ldrh	r3, [r3, #0]
 800189e:	001a      	movs	r2, r3
 80018a0:	237b      	movs	r3, #123	; 0x7b
 80018a2:	1a9b      	subs	r3, r3, r2
 80018a4:	001a      	movs	r2, r3
 80018a6:	2100      	movs	r1, #0
 80018a8:	f000 fc4c 	bl	8002144 <memset>
 80018ac:	4b22      	ldr	r3, [pc, #136]	; (8001938 <oledFrame2+0x258>)
 80018ae:	881b      	ldrh	r3, [r3, #0]
 80018b0:	4a22      	ldr	r2, [pc, #136]	; (800193c <oledFrame2+0x25c>)
 80018b2:	189a      	adds	r2, r3, r2
 80018b4:	4b19      	ldr	r3, [pc, #100]	; (800191c <oledFrame2+0x23c>)
 80018b6:	18d0      	adds	r0, r2, r3
 80018b8:	4b1f      	ldr	r3, [pc, #124]	; (8001938 <oledFrame2+0x258>)
 80018ba:	881b      	ldrh	r3, [r3, #0]
 80018bc:	001a      	movs	r2, r3
 80018be:	237b      	movs	r3, #123	; 0x7b
 80018c0:	1a9b      	subs	r3, r3, r2
 80018c2:	001a      	movs	r2, r3
 80018c4:	2100      	movs	r1, #0
 80018c6:	f000 fc3d 	bl	8002144 <memset>
 80018ca:	e01f      	b.n	800190c <oledFrame2+0x22c>
 80018cc:	4b1a      	ldr	r3, [pc, #104]	; (8001938 <oledFrame2+0x258>)
 80018ce:	881b      	ldrh	r3, [r3, #0]
 80018d0:	1c5a      	adds	r2, r3, #1
 80018d2:	32ff      	adds	r2, #255	; 0xff
 80018d4:	4b11      	ldr	r3, [pc, #68]	; (800191c <oledFrame2+0x23c>)
 80018d6:	18d0      	adds	r0, r2, r3
 80018d8:	4b17      	ldr	r3, [pc, #92]	; (8001938 <oledFrame2+0x258>)
 80018da:	881b      	ldrh	r3, [r3, #0]
 80018dc:	001a      	movs	r2, r3
 80018de:	2380      	movs	r3, #128	; 0x80
 80018e0:	1a9b      	subs	r3, r3, r2
 80018e2:	001a      	movs	r2, r3
 80018e4:	2120      	movs	r1, #32
 80018e6:	f000 fc2d 	bl	8002144 <memset>
 80018ea:	4b13      	ldr	r3, [pc, #76]	; (8001938 <oledFrame2+0x258>)
 80018ec:	881b      	ldrh	r3, [r3, #0]
 80018ee:	22a0      	movs	r2, #160	; 0xa0
 80018f0:	0092      	lsls	r2, r2, #2
 80018f2:	189a      	adds	r2, r3, r2
 80018f4:	4b09      	ldr	r3, [pc, #36]	; (800191c <oledFrame2+0x23c>)
 80018f6:	18d0      	adds	r0, r2, r3
 80018f8:	4b0f      	ldr	r3, [pc, #60]	; (8001938 <oledFrame2+0x258>)
 80018fa:	881b      	ldrh	r3, [r3, #0]
 80018fc:	001a      	movs	r2, r3
 80018fe:	2380      	movs	r3, #128	; 0x80
 8001900:	1a9b      	subs	r3, r3, r2
 8001902:	001a      	movs	r2, r3
 8001904:	2104      	movs	r1, #4
 8001906:	f000 fc1d 	bl	8002144 <memset>
 800190a:	46c0      	nop			; (mov r8, r8)
 800190c:	46c0      	nop			; (mov r8, r8)
 800190e:	46bd      	mov	sp, r7
 8001910:	bd80      	pop	{r7, pc}
 8001912:	46c0      	nop			; (mov r8, r8)
 8001914:	20000916 	.word	0x20000916
 8001918:	200000c4 	.word	0x200000c4
 800191c:	20000514 	.word	0x20000514
 8001920:	20000594 	.word	0x20000594
 8001924:	20000694 	.word	0x20000694
 8001928:	20000814 	.word	0x20000814
 800192c:	20000894 	.word	0x20000894
 8001930:	20000614 	.word	0x20000614
 8001934:	20000794 	.word	0x20000794
 8001938:	20000918 	.word	0x20000918
 800193c:	00000285 	.word	0x00000285

08001940 <oledUpdate>:
 8001940:	b580      	push	{r7, lr}
 8001942:	b082      	sub	sp, #8
 8001944:	af00      	add	r7, sp, #0
 8001946:	1dfb      	adds	r3, r7, #7
 8001948:	2200      	movs	r2, #0
 800194a:	701a      	strb	r2, [r3, #0]
 800194c:	e01a      	b.n	8001984 <oledUpdate+0x44>
 800194e:	1dfb      	adds	r3, r7, #7
 8001950:	781b      	ldrb	r3, [r3, #0]
 8001952:	3b50      	subs	r3, #80	; 0x50
 8001954:	b2db      	uxtb	r3, r3
 8001956:	0018      	movs	r0, r3
 8001958:	f7ff fe20 	bl	800159c <oled_cmd_send>
 800195c:	2000      	movs	r0, #0
 800195e:	f7ff fe1d 	bl	800159c <oled_cmd_send>
 8001962:	2010      	movs	r0, #16
 8001964:	f7ff fe1a 	bl	800159c <oled_cmd_send>
 8001968:	1dfb      	adds	r3, r7, #7
 800196a:	781b      	ldrb	r3, [r3, #0]
 800196c:	01da      	lsls	r2, r3, #7
 800196e:	4b09      	ldr	r3, [pc, #36]	; (8001994 <oledUpdate+0x54>)
 8001970:	18d3      	adds	r3, r2, r3
 8001972:	2180      	movs	r1, #128	; 0x80
 8001974:	0018      	movs	r0, r3
 8001976:	f7ff fe4b 	bl	8001610 <oled_data_send>
 800197a:	1dfb      	adds	r3, r7, #7
 800197c:	781a      	ldrb	r2, [r3, #0]
 800197e:	1dfb      	adds	r3, r7, #7
 8001980:	3201      	adds	r2, #1
 8001982:	701a      	strb	r2, [r3, #0]
 8001984:	1dfb      	adds	r3, r7, #7
 8001986:	781b      	ldrb	r3, [r3, #0]
 8001988:	2b07      	cmp	r3, #7
 800198a:	d9e0      	bls.n	800194e <oledUpdate+0xe>
 800198c:	46c0      	nop			; (mov r8, r8)
 800198e:	46bd      	mov	sp, r7
 8001990:	b002      	add	sp, #8
 8001992:	bd80      	pop	{r7, pc}
 8001994:	20000514 	.word	0x20000514

08001998 <oled_config>:
 8001998:	b580      	push	{r7, lr}
 800199a:	b082      	sub	sp, #8
 800199c:	af00      	add	r7, sp, #0
 800199e:	4b29      	ldr	r3, [pc, #164]	; (8001a44 <oled_config+0xac>)
 80019a0:	607b      	str	r3, [r7, #4]
 80019a2:	f000 f955 	bl	8001c50 <oled_hw_config>
 80019a6:	46c0      	nop			; (mov r8, r8)
 80019a8:	687b      	ldr	r3, [r7, #4]
 80019aa:	1e5a      	subs	r2, r3, #1
 80019ac:	607a      	str	r2, [r7, #4]
 80019ae:	2b00      	cmp	r3, #0
 80019b0:	d1fa      	bne.n	80019a8 <oled_config+0x10>
 80019b2:	20ae      	movs	r0, #174	; 0xae
 80019b4:	f7ff fdf2 	bl	800159c <oled_cmd_send>
 80019b8:	2020      	movs	r0, #32
 80019ba:	f7ff fdef 	bl	800159c <oled_cmd_send>
 80019be:	2010      	movs	r0, #16
 80019c0:	f7ff fdec 	bl	800159c <oled_cmd_send>
 80019c4:	20c0      	movs	r0, #192	; 0xc0
 80019c6:	f7ff fde9 	bl	800159c <oled_cmd_send>
 80019ca:	2040      	movs	r0, #64	; 0x40
 80019cc:	f7ff fde6 	bl	800159c <oled_cmd_send>
 80019d0:	2081      	movs	r0, #129	; 0x81
 80019d2:	f7ff fde3 	bl	800159c <oled_cmd_send>
 80019d6:	20ff      	movs	r0, #255	; 0xff
 80019d8:	f7ff fde0 	bl	800159c <oled_cmd_send>
 80019dc:	20a1      	movs	r0, #161	; 0xa1
 80019de:	f7ff fddd 	bl	800159c <oled_cmd_send>
 80019e2:	20a6      	movs	r0, #166	; 0xa6
 80019e4:	f7ff fdda 	bl	800159c <oled_cmd_send>
 80019e8:	20a8      	movs	r0, #168	; 0xa8
 80019ea:	f7ff fdd7 	bl	800159c <oled_cmd_send>
 80019ee:	203f      	movs	r0, #63	; 0x3f
 80019f0:	f7ff fdd4 	bl	800159c <oled_cmd_send>
 80019f4:	20a4      	movs	r0, #164	; 0xa4
 80019f6:	f7ff fdd1 	bl	800159c <oled_cmd_send>
 80019fa:	20d3      	movs	r0, #211	; 0xd3
 80019fc:	f7ff fdce 	bl	800159c <oled_cmd_send>
 8001a00:	2000      	movs	r0, #0
 8001a02:	f7ff fdcb 	bl	800159c <oled_cmd_send>
 8001a06:	20d5      	movs	r0, #213	; 0xd5
 8001a08:	f7ff fdc8 	bl	800159c <oled_cmd_send>
 8001a0c:	20f0      	movs	r0, #240	; 0xf0
 8001a0e:	f7ff fdc5 	bl	800159c <oled_cmd_send>
 8001a12:	20da      	movs	r0, #218	; 0xda
 8001a14:	f7ff fdc2 	bl	800159c <oled_cmd_send>
 8001a18:	2012      	movs	r0, #18
 8001a1a:	f7ff fdbf 	bl	800159c <oled_cmd_send>
 8001a1e:	208d      	movs	r0, #141	; 0x8d
 8001a20:	f7ff fdbc 	bl	800159c <oled_cmd_send>
 8001a24:	2014      	movs	r0, #20
 8001a26:	f7ff fdb9 	bl	800159c <oled_cmd_send>
 8001a2a:	20af      	movs	r0, #175	; 0xaf
 8001a2c:	f7ff fdb6 	bl	800159c <oled_cmd_send>
 8001a30:	2000      	movs	r0, #0
 8001a32:	f7ff fe41 	bl	80016b8 <oledColor>
 8001a36:	f7ff ff83 	bl	8001940 <oledUpdate>
 8001a3a:	46c0      	nop			; (mov r8, r8)
 8001a3c:	46bd      	mov	sp, r7
 8001a3e:	b002      	add	sp, #8
 8001a40:	bd80      	pop	{r7, pc}
 8001a42:	46c0      	nop			; (mov r8, r8)
 8001a44:	001e8480 	.word	0x001e8480

08001a48 <oledSetPix>:
 8001a48:	b590      	push	{r4, r7, lr}
 8001a4a:	b083      	sub	sp, #12
 8001a4c:	af00      	add	r7, sp, #0
 8001a4e:	0004      	movs	r4, r0
 8001a50:	0008      	movs	r0, r1
 8001a52:	0011      	movs	r1, r2
 8001a54:	1dbb      	adds	r3, r7, #6
 8001a56:	1c22      	adds	r2, r4, #0
 8001a58:	801a      	strh	r2, [r3, #0]
 8001a5a:	1d3b      	adds	r3, r7, #4
 8001a5c:	1c02      	adds	r2, r0, #0
 8001a5e:	801a      	strh	r2, [r3, #0]
 8001a60:	1cfb      	adds	r3, r7, #3
 8001a62:	1c0a      	adds	r2, r1, #0
 8001a64:	701a      	strb	r2, [r3, #0]
 8001a66:	1dbb      	adds	r3, r7, #6
 8001a68:	2200      	movs	r2, #0
 8001a6a:	5e9b      	ldrsh	r3, [r3, r2]
 8001a6c:	2b7f      	cmp	r3, #127	; 0x7f
 8001a6e:	dc65      	bgt.n	8001b3c <oledSetPix+0xf4>
 8001a70:	1d3b      	adds	r3, r7, #4
 8001a72:	2200      	movs	r2, #0
 8001a74:	5e9b      	ldrsh	r3, [r3, r2]
 8001a76:	2b3f      	cmp	r3, #63	; 0x3f
 8001a78:	dc60      	bgt.n	8001b3c <oledSetPix+0xf4>
 8001a7a:	1cfb      	adds	r3, r7, #3
 8001a7c:	781b      	ldrb	r3, [r3, #0]
 8001a7e:	2b00      	cmp	r3, #0
 8001a80:	d02c      	beq.n	8001adc <oledSetPix+0x94>
 8001a82:	1d3b      	adds	r3, r7, #4
 8001a84:	2200      	movs	r2, #0
 8001a86:	5e9b      	ldrsh	r3, [r3, r2]
 8001a88:	2b00      	cmp	r3, #0
 8001a8a:	da00      	bge.n	8001a8e <oledSetPix+0x46>
 8001a8c:	3307      	adds	r3, #7
 8001a8e:	10db      	asrs	r3, r3, #3
 8001a90:	b218      	sxth	r0, r3
 8001a92:	0003      	movs	r3, r0
 8001a94:	01da      	lsls	r2, r3, #7
 8001a96:	1dbb      	adds	r3, r7, #6
 8001a98:	2100      	movs	r1, #0
 8001a9a:	5e5b      	ldrsh	r3, [r3, r1]
 8001a9c:	18d3      	adds	r3, r2, r3
 8001a9e:	4a29      	ldr	r2, [pc, #164]	; (8001b44 <oledSetPix+0xfc>)
 8001aa0:	5cd3      	ldrb	r3, [r2, r3]
 8001aa2:	b25a      	sxtb	r2, r3
 8001aa4:	1d3b      	adds	r3, r7, #4
 8001aa6:	2100      	movs	r1, #0
 8001aa8:	5e5b      	ldrsh	r3, [r3, r1]
 8001aaa:	4927      	ldr	r1, [pc, #156]	; (8001b48 <oledSetPix+0x100>)
 8001aac:	400b      	ands	r3, r1
 8001aae:	d504      	bpl.n	8001aba <oledSetPix+0x72>
 8001ab0:	3b01      	subs	r3, #1
 8001ab2:	2108      	movs	r1, #8
 8001ab4:	4249      	negs	r1, r1
 8001ab6:	430b      	orrs	r3, r1
 8001ab8:	3301      	adds	r3, #1
 8001aba:	b21b      	sxth	r3, r3
 8001abc:	0019      	movs	r1, r3
 8001abe:	2301      	movs	r3, #1
 8001ac0:	408b      	lsls	r3, r1
 8001ac2:	b25b      	sxtb	r3, r3
 8001ac4:	4313      	orrs	r3, r2
 8001ac6:	b259      	sxtb	r1, r3
 8001ac8:	0003      	movs	r3, r0
 8001aca:	01da      	lsls	r2, r3, #7
 8001acc:	1dbb      	adds	r3, r7, #6
 8001ace:	2000      	movs	r0, #0
 8001ad0:	5e1b      	ldrsh	r3, [r3, r0]
 8001ad2:	18d3      	adds	r3, r2, r3
 8001ad4:	b2c9      	uxtb	r1, r1
 8001ad6:	4a1b      	ldr	r2, [pc, #108]	; (8001b44 <oledSetPix+0xfc>)
 8001ad8:	54d1      	strb	r1, [r2, r3]
 8001ada:	e030      	b.n	8001b3e <oledSetPix+0xf6>
 8001adc:	1d3b      	adds	r3, r7, #4
 8001ade:	2200      	movs	r2, #0
 8001ae0:	5e9b      	ldrsh	r3, [r3, r2]
 8001ae2:	2b00      	cmp	r3, #0
 8001ae4:	da00      	bge.n	8001ae8 <oledSetPix+0xa0>
 8001ae6:	3307      	adds	r3, #7
 8001ae8:	10db      	asrs	r3, r3, #3
 8001aea:	b218      	sxth	r0, r3
 8001aec:	0003      	movs	r3, r0
 8001aee:	01da      	lsls	r2, r3, #7
 8001af0:	1dbb      	adds	r3, r7, #6
 8001af2:	2100      	movs	r1, #0
 8001af4:	5e5b      	ldrsh	r3, [r3, r1]
 8001af6:	18d3      	adds	r3, r2, r3
 8001af8:	4a12      	ldr	r2, [pc, #72]	; (8001b44 <oledSetPix+0xfc>)
 8001afa:	5cd3      	ldrb	r3, [r2, r3]
 8001afc:	b25a      	sxtb	r2, r3
 8001afe:	1d3b      	adds	r3, r7, #4
 8001b00:	2100      	movs	r1, #0
 8001b02:	5e5b      	ldrsh	r3, [r3, r1]
 8001b04:	4910      	ldr	r1, [pc, #64]	; (8001b48 <oledSetPix+0x100>)
 8001b06:	400b      	ands	r3, r1
 8001b08:	d504      	bpl.n	8001b14 <oledSetPix+0xcc>
 8001b0a:	3b01      	subs	r3, #1
 8001b0c:	2108      	movs	r1, #8
 8001b0e:	4249      	negs	r1, r1
 8001b10:	430b      	orrs	r3, r1
 8001b12:	3301      	adds	r3, #1
 8001b14:	b21b      	sxth	r3, r3
 8001b16:	0019      	movs	r1, r3
 8001b18:	2301      	movs	r3, #1
 8001b1a:	408b      	lsls	r3, r1
 8001b1c:	b25b      	sxtb	r3, r3
 8001b1e:	43db      	mvns	r3, r3
 8001b20:	b25b      	sxtb	r3, r3
 8001b22:	4013      	ands	r3, r2
 8001b24:	b259      	sxtb	r1, r3
 8001b26:	0003      	movs	r3, r0
 8001b28:	01da      	lsls	r2, r3, #7
 8001b2a:	1dbb      	adds	r3, r7, #6
 8001b2c:	2000      	movs	r0, #0
 8001b2e:	5e1b      	ldrsh	r3, [r3, r0]
 8001b30:	18d3      	adds	r3, r2, r3
 8001b32:	b2c9      	uxtb	r1, r1
 8001b34:	4a03      	ldr	r2, [pc, #12]	; (8001b44 <oledSetPix+0xfc>)
 8001b36:	54d1      	strb	r1, [r2, r3]
 8001b38:	46c0      	nop			; (mov r8, r8)
 8001b3a:	e000      	b.n	8001b3e <oledSetPix+0xf6>
 8001b3c:	46c0      	nop			; (mov r8, r8)
 8001b3e:	46bd      	mov	sp, r7
 8001b40:	b003      	add	sp, #12
 8001b42:	bd90      	pop	{r4, r7, pc}
 8001b44:	20000514 	.word	0x20000514
 8001b48:	80000007 	.word	0x80000007

08001b4c <oled_putc>:
 8001b4c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001b4e:	b085      	sub	sp, #20
 8001b50:	af00      	add	r7, sp, #0
 8001b52:	0002      	movs	r2, r0
 8001b54:	1dfb      	adds	r3, r7, #7
 8001b56:	701a      	strb	r2, [r3, #0]
 8001b58:	1dfb      	adds	r3, r7, #7
 8001b5a:	781b      	ldrb	r3, [r3, #0]
 8001b5c:	2b0a      	cmp	r3, #10
 8001b5e:	d106      	bne.n	8001b6e <oled_putc+0x22>
 8001b60:	4b38      	ldr	r3, [pc, #224]	; (8001c44 <oled_putc+0xf8>)
 8001b62:	781b      	ldrb	r3, [r3, #0]
 8001b64:	3301      	adds	r3, #1
 8001b66:	b2da      	uxtb	r2, r3
 8001b68:	4b36      	ldr	r3, [pc, #216]	; (8001c44 <oled_putc+0xf8>)
 8001b6a:	701a      	strb	r2, [r3, #0]
 8001b6c:	e067      	b.n	8001c3e <oled_putc+0xf2>
 8001b6e:	1dfb      	adds	r3, r7, #7
 8001b70:	781b      	ldrb	r3, [r3, #0]
 8001b72:	2b0d      	cmp	r3, #13
 8001b74:	d103      	bne.n	8001b7e <oled_putc+0x32>
 8001b76:	4b34      	ldr	r3, [pc, #208]	; (8001c48 <oled_putc+0xfc>)
 8001b78:	2200      	movs	r2, #0
 8001b7a:	701a      	strb	r2, [r3, #0]
 8001b7c:	e05f      	b.n	8001c3e <oled_putc+0xf2>
 8001b7e:	230e      	movs	r3, #14
 8001b80:	18fb      	adds	r3, r7, r3
 8001b82:	2200      	movs	r2, #0
 8001b84:	701a      	strb	r2, [r3, #0]
 8001b86:	e04c      	b.n	8001c22 <oled_putc+0xd6>
 8001b88:	230f      	movs	r3, #15
 8001b8a:	18fb      	adds	r3, r7, r3
 8001b8c:	2200      	movs	r2, #0
 8001b8e:	701a      	strb	r2, [r3, #0]
 8001b90:	e03a      	b.n	8001c08 <oled_putc+0xbc>
 8001b92:	4b2e      	ldr	r3, [pc, #184]	; (8001c4c <oled_putc+0x100>)
 8001b94:	689b      	ldr	r3, [r3, #8]
 8001b96:	220d      	movs	r2, #13
 8001b98:	18bc      	adds	r4, r7, r2
 8001b9a:	210e      	movs	r1, #14
 8001b9c:	187a      	adds	r2, r7, r1
 8001b9e:	7815      	ldrb	r5, [r2, #0]
 8001ba0:	260f      	movs	r6, #15
 8001ba2:	19ba      	adds	r2, r7, r6
 8001ba4:	7811      	ldrb	r1, [r2, #0]
 8001ba6:	1dfa      	adds	r2, r7, #7
 8001ba8:	7810      	ldrb	r0, [r2, #0]
 8001baa:	002a      	movs	r2, r5
 8001bac:	4798      	blx	r3
 8001bae:	0003      	movs	r3, r0
 8001bb0:	7023      	strb	r3, [r4, #0]
 8001bb2:	4b25      	ldr	r3, [pc, #148]	; (8001c48 <oled_putc+0xfc>)
 8001bb4:	781b      	ldrb	r3, [r3, #0]
 8001bb6:	b29b      	uxth	r3, r3
 8001bb8:	4a24      	ldr	r2, [pc, #144]	; (8001c4c <oled_putc+0x100>)
 8001bba:	7912      	ldrb	r2, [r2, #4]
 8001bbc:	3201      	adds	r2, #1
 8001bbe:	b292      	uxth	r2, r2
 8001bc0:	4353      	muls	r3, r2
 8001bc2:	b29a      	uxth	r2, r3
 8001bc4:	0034      	movs	r4, r6
 8001bc6:	193b      	adds	r3, r7, r4
 8001bc8:	781b      	ldrb	r3, [r3, #0]
 8001bca:	b29b      	uxth	r3, r3
 8001bcc:	18d3      	adds	r3, r2, r3
 8001bce:	b29b      	uxth	r3, r3
 8001bd0:	b218      	sxth	r0, r3
 8001bd2:	4b1c      	ldr	r3, [pc, #112]	; (8001c44 <oled_putc+0xf8>)
 8001bd4:	781b      	ldrb	r3, [r3, #0]
 8001bd6:	b29b      	uxth	r3, r3
 8001bd8:	4a1c      	ldr	r2, [pc, #112]	; (8001c4c <oled_putc+0x100>)
 8001bda:	7952      	ldrb	r2, [r2, #5]
 8001bdc:	3202      	adds	r2, #2
 8001bde:	b292      	uxth	r2, r2
 8001be0:	4353      	muls	r3, r2
 8001be2:	b29a      	uxth	r2, r3
 8001be4:	210e      	movs	r1, #14
 8001be6:	187b      	adds	r3, r7, r1
 8001be8:	781b      	ldrb	r3, [r3, #0]
 8001bea:	b29b      	uxth	r3, r3
 8001bec:	18d3      	adds	r3, r2, r3
 8001bee:	b29b      	uxth	r3, r3
 8001bf0:	b219      	sxth	r1, r3
 8001bf2:	220d      	movs	r2, #13
 8001bf4:	18bb      	adds	r3, r7, r2
 8001bf6:	781b      	ldrb	r3, [r3, #0]
 8001bf8:	001a      	movs	r2, r3
 8001bfa:	f7ff ff25 	bl	8001a48 <oledSetPix>
 8001bfe:	193b      	adds	r3, r7, r4
 8001c00:	781a      	ldrb	r2, [r3, #0]
 8001c02:	193b      	adds	r3, r7, r4
 8001c04:	3201      	adds	r2, #1
 8001c06:	701a      	strb	r2, [r3, #0]
 8001c08:	4b10      	ldr	r3, [pc, #64]	; (8001c4c <oled_putc+0x100>)
 8001c0a:	791b      	ldrb	r3, [r3, #4]
 8001c0c:	220f      	movs	r2, #15
 8001c0e:	18ba      	adds	r2, r7, r2
 8001c10:	7812      	ldrb	r2, [r2, #0]
 8001c12:	429a      	cmp	r2, r3
 8001c14:	d3bd      	bcc.n	8001b92 <oled_putc+0x46>
 8001c16:	210e      	movs	r1, #14
 8001c18:	187b      	adds	r3, r7, r1
 8001c1a:	781a      	ldrb	r2, [r3, #0]
 8001c1c:	187b      	adds	r3, r7, r1
 8001c1e:	3201      	adds	r2, #1
 8001c20:	701a      	strb	r2, [r3, #0]
 8001c22:	4b0a      	ldr	r3, [pc, #40]	; (8001c4c <oled_putc+0x100>)
 8001c24:	795b      	ldrb	r3, [r3, #5]
 8001c26:	220e      	movs	r2, #14
 8001c28:	18ba      	adds	r2, r7, r2
 8001c2a:	7812      	ldrb	r2, [r2, #0]
 8001c2c:	429a      	cmp	r2, r3
 8001c2e:	d3ab      	bcc.n	8001b88 <oled_putc+0x3c>
 8001c30:	4b05      	ldr	r3, [pc, #20]	; (8001c48 <oled_putc+0xfc>)
 8001c32:	781b      	ldrb	r3, [r3, #0]
 8001c34:	3301      	adds	r3, #1
 8001c36:	b2da      	uxtb	r2, r3
 8001c38:	4b03      	ldr	r3, [pc, #12]	; (8001c48 <oled_putc+0xfc>)
 8001c3a:	701a      	strb	r2, [r3, #0]
 8001c3c:	46c0      	nop			; (mov r8, r8)
 8001c3e:	46bd      	mov	sp, r7
 8001c40:	b005      	add	sp, #20
 8001c42:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001c44:	20000915 	.word	0x20000915
 8001c48:	20000914 	.word	0x20000914
 8001c4c:	20000004 	.word	0x20000004

08001c50 <oled_hw_config>:
 8001c50:	b580      	push	{r7, lr}
 8001c52:	af00      	add	r7, sp, #0
 8001c54:	2380      	movs	r3, #128	; 0x80
 8001c56:	02db      	lsls	r3, r3, #11
 8001c58:	0018      	movs	r0, r3
 8001c5a:	f7ff fa0d 	bl	8001078 <LL_AHB1_GRP1_EnableClock>
 8001c5e:	4b30      	ldr	r3, [pc, #192]	; (8001d20 <oled_hw_config+0xd0>)
 8001c60:	2202      	movs	r2, #2
 8001c62:	2140      	movs	r1, #64	; 0x40
 8001c64:	0018      	movs	r0, r3
 8001c66:	f7ff fa33 	bl	80010d0 <LL_GPIO_SetPinMode>
 8001c6a:	4b2d      	ldr	r3, [pc, #180]	; (8001d20 <oled_hw_config+0xd0>)
 8001c6c:	2201      	movs	r2, #1
 8001c6e:	2140      	movs	r1, #64	; 0x40
 8001c70:	0018      	movs	r0, r3
 8001c72:	f7ff fa4a 	bl	800110a <LL_GPIO_SetPinOutputType>
 8001c76:	4b2a      	ldr	r3, [pc, #168]	; (8001d20 <oled_hw_config+0xd0>)
 8001c78:	2201      	movs	r2, #1
 8001c7a:	2140      	movs	r1, #64	; 0x40
 8001c7c:	0018      	movs	r0, r3
 8001c7e:	f7ff fa76 	bl	800116e <LL_GPIO_SetAFPin_0_7>
 8001c82:	4b27      	ldr	r3, [pc, #156]	; (8001d20 <oled_hw_config+0xd0>)
 8001c84:	2203      	movs	r2, #3
 8001c86:	2140      	movs	r1, #64	; 0x40
 8001c88:	0018      	movs	r0, r3
 8001c8a:	f7ff fa53 	bl	8001134 <LL_GPIO_SetPinSpeed>
 8001c8e:	4b24      	ldr	r3, [pc, #144]	; (8001d20 <oled_hw_config+0xd0>)
 8001c90:	2202      	movs	r2, #2
 8001c92:	2180      	movs	r1, #128	; 0x80
 8001c94:	0018      	movs	r0, r3
 8001c96:	f7ff fa1b 	bl	80010d0 <LL_GPIO_SetPinMode>
 8001c9a:	4b21      	ldr	r3, [pc, #132]	; (8001d20 <oled_hw_config+0xd0>)
 8001c9c:	2201      	movs	r2, #1
 8001c9e:	2180      	movs	r1, #128	; 0x80
 8001ca0:	0018      	movs	r0, r3
 8001ca2:	f7ff fa32 	bl	800110a <LL_GPIO_SetPinOutputType>
 8001ca6:	4b1e      	ldr	r3, [pc, #120]	; (8001d20 <oled_hw_config+0xd0>)
 8001ca8:	2201      	movs	r2, #1
 8001caa:	2180      	movs	r1, #128	; 0x80
 8001cac:	0018      	movs	r0, r3
 8001cae:	f7ff fa5e 	bl	800116e <LL_GPIO_SetAFPin_0_7>
 8001cb2:	4b1b      	ldr	r3, [pc, #108]	; (8001d20 <oled_hw_config+0xd0>)
 8001cb4:	2203      	movs	r2, #3
 8001cb6:	2180      	movs	r1, #128	; 0x80
 8001cb8:	0018      	movs	r0, r3
 8001cba:	f7ff fa3b 	bl	8001134 <LL_GPIO_SetPinSpeed>
 8001cbe:	2010      	movs	r0, #16
 8001cc0:	f7ff fa7a 	bl	80011b8 <LL_RCC_SetI2CClockSource>
 8001cc4:	4b17      	ldr	r3, [pc, #92]	; (8001d24 <oled_hw_config+0xd4>)
 8001cc6:	0018      	movs	r0, r3
 8001cc8:	f7ff fa98 	bl	80011fc <LL_I2C_Disable>
 8001ccc:	2380      	movs	r3, #128	; 0x80
 8001cce:	039b      	lsls	r3, r3, #14
 8001cd0:	0018      	movs	r0, r3
 8001cd2:	f7ff f9e7 	bl	80010a4 <LL_APB1_GRP1_EnableClock>
 8001cd6:	4b13      	ldr	r3, [pc, #76]	; (8001d24 <oled_hw_config+0xd4>)
 8001cd8:	0018      	movs	r0, r3
 8001cda:	f7ff fab3 	bl	8001244 <LL_I2C_DisableAnalogFilter>
 8001cde:	4b11      	ldr	r3, [pc, #68]	; (8001d24 <oled_hw_config+0xd4>)
 8001ce0:	2101      	movs	r1, #1
 8001ce2:	0018      	movs	r0, r3
 8001ce4:	f7ff fa9a 	bl	800121c <LL_I2C_SetDigitalFilter>
 8001ce8:	4a0f      	ldr	r2, [pc, #60]	; (8001d28 <oled_hw_config+0xd8>)
 8001cea:	4b0e      	ldr	r3, [pc, #56]	; (8001d24 <oled_hw_config+0xd4>)
 8001cec:	0011      	movs	r1, r2
 8001cee:	0018      	movs	r0, r3
 8001cf0:	f7ff fada 	bl	80012a8 <LL_I2C_SetTiming>
 8001cf4:	4b0b      	ldr	r3, [pc, #44]	; (8001d24 <oled_hw_config+0xd4>)
 8001cf6:	0018      	movs	r0, r3
 8001cf8:	f7ff fab3 	bl	8001262 <LL_I2C_DisableClockStretching>
 8001cfc:	4b09      	ldr	r3, [pc, #36]	; (8001d24 <oled_hw_config+0xd4>)
 8001cfe:	2100      	movs	r1, #0
 8001d00:	0018      	movs	r0, r3
 8001d02:	f7ff fabd 	bl	8001280 <LL_I2C_SetMasterAddressingMode>
 8001d06:	4b07      	ldr	r3, [pc, #28]	; (8001d24 <oled_hw_config+0xd4>)
 8001d08:	2100      	movs	r1, #0
 8001d0a:	0018      	movs	r0, r3
 8001d0c:	f7ff fad8 	bl	80012c0 <LL_I2C_SetMode>
 8001d10:	4b04      	ldr	r3, [pc, #16]	; (8001d24 <oled_hw_config+0xd4>)
 8001d12:	0018      	movs	r0, r3
 8001d14:	f7ff fa64 	bl	80011e0 <LL_I2C_Enable>
 8001d18:	46c0      	nop			; (mov r8, r8)
 8001d1a:	46bd      	mov	sp, r7
 8001d1c:	bd80      	pop	{r7, pc}
 8001d1e:	46c0      	nop			; (mov r8, r8)
 8001d20:	48000400 	.word	0x48000400
 8001d24:	40005400 	.word	0x40005400
 8001d28:	50330309 	.word	0x50330309

08001d2c <NMI_Handler>:
 8001d2c:	b580      	push	{r7, lr}
 8001d2e:	af00      	add	r7, sp, #0
 8001d30:	46c0      	nop			; (mov r8, r8)
 8001d32:	46bd      	mov	sp, r7
 8001d34:	bd80      	pop	{r7, pc}

08001d36 <HardFault_Handler>:
 8001d36:	b580      	push	{r7, lr}
 8001d38:	af00      	add	r7, sp, #0
 8001d3a:	e7fe      	b.n	8001d3a <HardFault_Handler+0x4>

08001d3c <SVC_Handler>:
 8001d3c:	b580      	push	{r7, lr}
 8001d3e:	af00      	add	r7, sp, #0
 8001d40:	46c0      	nop			; (mov r8, r8)
 8001d42:	46bd      	mov	sp, r7
 8001d44:	bd80      	pop	{r7, pc}

08001d46 <PendSV_Handler>:
 8001d46:	b580      	push	{r7, lr}
 8001d48:	af00      	add	r7, sp, #0
 8001d4a:	46c0      	nop			; (mov r8, r8)
 8001d4c:	46bd      	mov	sp, r7
 8001d4e:	bd80      	pop	{r7, pc}

08001d50 <xputc>:
 8001d50:	b580      	push	{r7, lr}
 8001d52:	b082      	sub	sp, #8
 8001d54:	af00      	add	r7, sp, #0
 8001d56:	0002      	movs	r2, r0
 8001d58:	1dfb      	adds	r3, r7, #7
 8001d5a:	701a      	strb	r2, [r3, #0]
 8001d5c:	1dfb      	adds	r3, r7, #7
 8001d5e:	781b      	ldrb	r3, [r3, #0]
 8001d60:	2b0a      	cmp	r3, #10
 8001d62:	d102      	bne.n	8001d6a <xputc+0x1a>
 8001d64:	200d      	movs	r0, #13
 8001d66:	f7ff fff3 	bl	8001d50 <xputc>
 8001d6a:	4b0d      	ldr	r3, [pc, #52]	; (8001da0 <xputc+0x50>)
 8001d6c:	681b      	ldr	r3, [r3, #0]
 8001d6e:	2b00      	cmp	r3, #0
 8001d70:	d008      	beq.n	8001d84 <xputc+0x34>
 8001d72:	4b0b      	ldr	r3, [pc, #44]	; (8001da0 <xputc+0x50>)
 8001d74:	681b      	ldr	r3, [r3, #0]
 8001d76:	1c59      	adds	r1, r3, #1
 8001d78:	4a09      	ldr	r2, [pc, #36]	; (8001da0 <xputc+0x50>)
 8001d7a:	6011      	str	r1, [r2, #0]
 8001d7c:	1dfa      	adds	r2, r7, #7
 8001d7e:	7812      	ldrb	r2, [r2, #0]
 8001d80:	701a      	strb	r2, [r3, #0]
 8001d82:	e009      	b.n	8001d98 <xputc+0x48>
 8001d84:	4b07      	ldr	r3, [pc, #28]	; (8001da4 <xputc+0x54>)
 8001d86:	681b      	ldr	r3, [r3, #0]
 8001d88:	2b00      	cmp	r3, #0
 8001d8a:	d005      	beq.n	8001d98 <xputc+0x48>
 8001d8c:	4b05      	ldr	r3, [pc, #20]	; (8001da4 <xputc+0x54>)
 8001d8e:	681b      	ldr	r3, [r3, #0]
 8001d90:	1dfa      	adds	r2, r7, #7
 8001d92:	7812      	ldrb	r2, [r2, #0]
 8001d94:	0010      	movs	r0, r2
 8001d96:	4798      	blx	r3
 8001d98:	46bd      	mov	sp, r7
 8001d9a:	b002      	add	sp, #8
 8001d9c:	bd80      	pop	{r7, pc}
 8001d9e:	46c0      	nop			; (mov r8, r8)
 8001da0:	2000091c 	.word	0x2000091c
 8001da4:	20000924 	.word	0x20000924

08001da8 <xputs>:
 8001da8:	b580      	push	{r7, lr}
 8001daa:	b082      	sub	sp, #8
 8001dac:	af00      	add	r7, sp, #0
 8001dae:	6078      	str	r0, [r7, #4]
 8001db0:	e006      	b.n	8001dc0 <xputs+0x18>
 8001db2:	687b      	ldr	r3, [r7, #4]
 8001db4:	1c5a      	adds	r2, r3, #1
 8001db6:	607a      	str	r2, [r7, #4]
 8001db8:	781b      	ldrb	r3, [r3, #0]
 8001dba:	0018      	movs	r0, r3
 8001dbc:	f7ff ffc8 	bl	8001d50 <xputc>
 8001dc0:	687b      	ldr	r3, [r7, #4]
 8001dc2:	781b      	ldrb	r3, [r3, #0]
 8001dc4:	2b00      	cmp	r3, #0
 8001dc6:	d1f4      	bne.n	8001db2 <xputs+0xa>
 8001dc8:	46c0      	nop			; (mov r8, r8)
 8001dca:	46bd      	mov	sp, r7
 8001dcc:	b002      	add	sp, #8
 8001dce:	bd80      	pop	{r7, pc}

08001dd0 <xvprintf>:
 8001dd0:	b590      	push	{r4, r7, lr}
 8001dd2:	b093      	sub	sp, #76	; 0x4c
 8001dd4:	af00      	add	r7, sp, #0
 8001dd6:	6078      	str	r0, [r7, #4]
 8001dd8:	6039      	str	r1, [r7, #0]
 8001dda:	687b      	ldr	r3, [r7, #4]
 8001ddc:	1c5a      	adds	r2, r3, #1
 8001dde:	607a      	str	r2, [r7, #4]
 8001de0:	2133      	movs	r1, #51	; 0x33
 8001de2:	187a      	adds	r2, r7, r1
 8001de4:	781b      	ldrb	r3, [r3, #0]
 8001de6:	7013      	strb	r3, [r2, #0]
 8001de8:	000a      	movs	r2, r1
 8001dea:	18bb      	adds	r3, r7, r2
 8001dec:	781b      	ldrb	r3, [r3, #0]
 8001dee:	2b00      	cmp	r3, #0
 8001df0:	d100      	bne.n	8001df4 <xvprintf+0x24>
 8001df2:	e167      	b.n	80020c4 <xvprintf+0x2f4>
 8001df4:	18bb      	adds	r3, r7, r2
 8001df6:	781b      	ldrb	r3, [r3, #0]
 8001df8:	2b25      	cmp	r3, #37	; 0x25
 8001dfa:	d005      	beq.n	8001e08 <xvprintf+0x38>
 8001dfc:	18bb      	adds	r3, r7, r2
 8001dfe:	781b      	ldrb	r3, [r3, #0]
 8001e00:	0018      	movs	r0, r3
 8001e02:	f7ff ffa5 	bl	8001d50 <xputc>
 8001e06:	e15c      	b.n	80020c2 <xvprintf+0x2f2>
 8001e08:	2300      	movs	r3, #0
 8001e0a:	637b      	str	r3, [r7, #52]	; 0x34
 8001e0c:	687b      	ldr	r3, [r7, #4]
 8001e0e:	1c5a      	adds	r2, r3, #1
 8001e10:	607a      	str	r2, [r7, #4]
 8001e12:	2133      	movs	r1, #51	; 0x33
 8001e14:	187a      	adds	r2, r7, r1
 8001e16:	781b      	ldrb	r3, [r3, #0]
 8001e18:	7013      	strb	r3, [r2, #0]
 8001e1a:	187b      	adds	r3, r7, r1
 8001e1c:	781b      	ldrb	r3, [r3, #0]
 8001e1e:	2b30      	cmp	r3, #48	; 0x30
 8001e20:	d108      	bne.n	8001e34 <xvprintf+0x64>
 8001e22:	2301      	movs	r3, #1
 8001e24:	637b      	str	r3, [r7, #52]	; 0x34
 8001e26:	687b      	ldr	r3, [r7, #4]
 8001e28:	1c5a      	adds	r2, r3, #1
 8001e2a:	607a      	str	r2, [r7, #4]
 8001e2c:	187a      	adds	r2, r7, r1
 8001e2e:	781b      	ldrb	r3, [r3, #0]
 8001e30:	7013      	strb	r3, [r2, #0]
 8001e32:	e00c      	b.n	8001e4e <xvprintf+0x7e>
 8001e34:	2133      	movs	r1, #51	; 0x33
 8001e36:	187b      	adds	r3, r7, r1
 8001e38:	781b      	ldrb	r3, [r3, #0]
 8001e3a:	2b2d      	cmp	r3, #45	; 0x2d
 8001e3c:	d107      	bne.n	8001e4e <xvprintf+0x7e>
 8001e3e:	2302      	movs	r3, #2
 8001e40:	637b      	str	r3, [r7, #52]	; 0x34
 8001e42:	687b      	ldr	r3, [r7, #4]
 8001e44:	1c5a      	adds	r2, r3, #1
 8001e46:	607a      	str	r2, [r7, #4]
 8001e48:	187a      	adds	r2, r7, r1
 8001e4a:	781b      	ldrb	r3, [r3, #0]
 8001e4c:	7013      	strb	r3, [r2, #0]
 8001e4e:	2300      	movs	r3, #0
 8001e50:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e52:	e011      	b.n	8001e78 <xvprintf+0xa8>
 8001e54:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001e56:	0013      	movs	r3, r2
 8001e58:	009b      	lsls	r3, r3, #2
 8001e5a:	189b      	adds	r3, r3, r2
 8001e5c:	005b      	lsls	r3, r3, #1
 8001e5e:	001a      	movs	r2, r3
 8001e60:	2133      	movs	r1, #51	; 0x33
 8001e62:	187b      	adds	r3, r7, r1
 8001e64:	781b      	ldrb	r3, [r3, #0]
 8001e66:	18d3      	adds	r3, r2, r3
 8001e68:	3b30      	subs	r3, #48	; 0x30
 8001e6a:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e6c:	687b      	ldr	r3, [r7, #4]
 8001e6e:	1c5a      	adds	r2, r3, #1
 8001e70:	607a      	str	r2, [r7, #4]
 8001e72:	187a      	adds	r2, r7, r1
 8001e74:	781b      	ldrb	r3, [r3, #0]
 8001e76:	7013      	strb	r3, [r2, #0]
 8001e78:	2233      	movs	r2, #51	; 0x33
 8001e7a:	18bb      	adds	r3, r7, r2
 8001e7c:	781b      	ldrb	r3, [r3, #0]
 8001e7e:	2b2f      	cmp	r3, #47	; 0x2f
 8001e80:	d903      	bls.n	8001e8a <xvprintf+0xba>
 8001e82:	18bb      	adds	r3, r7, r2
 8001e84:	781b      	ldrb	r3, [r3, #0]
 8001e86:	2b39      	cmp	r3, #57	; 0x39
 8001e88:	d9e4      	bls.n	8001e54 <xvprintf+0x84>
 8001e8a:	2233      	movs	r2, #51	; 0x33
 8001e8c:	18bb      	adds	r3, r7, r2
 8001e8e:	781b      	ldrb	r3, [r3, #0]
 8001e90:	2b6c      	cmp	r3, #108	; 0x6c
 8001e92:	d003      	beq.n	8001e9c <xvprintf+0xcc>
 8001e94:	18bb      	adds	r3, r7, r2
 8001e96:	781b      	ldrb	r3, [r3, #0]
 8001e98:	2b4c      	cmp	r3, #76	; 0x4c
 8001e9a:	d10a      	bne.n	8001eb2 <xvprintf+0xe2>
 8001e9c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001e9e:	2204      	movs	r2, #4
 8001ea0:	4313      	orrs	r3, r2
 8001ea2:	637b      	str	r3, [r7, #52]	; 0x34
 8001ea4:	687b      	ldr	r3, [r7, #4]
 8001ea6:	1c5a      	adds	r2, r3, #1
 8001ea8:	607a      	str	r2, [r7, #4]
 8001eaa:	2233      	movs	r2, #51	; 0x33
 8001eac:	18ba      	adds	r2, r7, r2
 8001eae:	781b      	ldrb	r3, [r3, #0]
 8001eb0:	7013      	strb	r3, [r2, #0]
 8001eb2:	2233      	movs	r2, #51	; 0x33
 8001eb4:	18bb      	adds	r3, r7, r2
 8001eb6:	781b      	ldrb	r3, [r3, #0]
 8001eb8:	2b00      	cmp	r3, #0
 8001eba:	d100      	bne.n	8001ebe <xvprintf+0xee>
 8001ebc:	e104      	b.n	80020c8 <xvprintf+0x2f8>
 8001ebe:	2132      	movs	r1, #50	; 0x32
 8001ec0:	187b      	adds	r3, r7, r1
 8001ec2:	18ba      	adds	r2, r7, r2
 8001ec4:	7812      	ldrb	r2, [r2, #0]
 8001ec6:	701a      	strb	r2, [r3, #0]
 8001ec8:	187b      	adds	r3, r7, r1
 8001eca:	781b      	ldrb	r3, [r3, #0]
 8001ecc:	2b60      	cmp	r3, #96	; 0x60
 8001ece:	d904      	bls.n	8001eda <xvprintf+0x10a>
 8001ed0:	187b      	adds	r3, r7, r1
 8001ed2:	187a      	adds	r2, r7, r1
 8001ed4:	7812      	ldrb	r2, [r2, #0]
 8001ed6:	3a20      	subs	r2, #32
 8001ed8:	701a      	strb	r2, [r3, #0]
 8001eda:	2332      	movs	r3, #50	; 0x32
 8001edc:	18fb      	adds	r3, r7, r3
 8001ede:	781b      	ldrb	r3, [r3, #0]
 8001ee0:	3b42      	subs	r3, #66	; 0x42
 8001ee2:	2b16      	cmp	r3, #22
 8001ee4:	d847      	bhi.n	8001f76 <xvprintf+0x1a6>
 8001ee6:	009a      	lsls	r2, r3, #2
 8001ee8:	4b7a      	ldr	r3, [pc, #488]	; (80020d4 <xvprintf+0x304>)
 8001eea:	18d3      	adds	r3, r2, r3
 8001eec:	681b      	ldr	r3, [r3, #0]
 8001eee:	469f      	mov	pc, r3
 8001ef0:	683b      	ldr	r3, [r7, #0]
 8001ef2:	1d1a      	adds	r2, r3, #4
 8001ef4:	603a      	str	r2, [r7, #0]
 8001ef6:	681b      	ldr	r3, [r3, #0]
 8001ef8:	627b      	str	r3, [r7, #36]	; 0x24
 8001efa:	2300      	movs	r3, #0
 8001efc:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001efe:	e002      	b.n	8001f06 <xvprintf+0x136>
 8001f00:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f02:	3301      	adds	r3, #1
 8001f04:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001f06:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001f08:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f0a:	18d3      	adds	r3, r2, r3
 8001f0c:	781b      	ldrb	r3, [r3, #0]
 8001f0e:	2b00      	cmp	r3, #0
 8001f10:	d1f6      	bne.n	8001f00 <xvprintf+0x130>
 8001f12:	e002      	b.n	8001f1a <xvprintf+0x14a>
 8001f14:	2020      	movs	r0, #32
 8001f16:	f7ff ff1b 	bl	8001d50 <xputc>
 8001f1a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001f1c:	2202      	movs	r2, #2
 8001f1e:	4013      	ands	r3, r2
 8001f20:	d105      	bne.n	8001f2e <xvprintf+0x15e>
 8001f22:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f24:	1c5a      	adds	r2, r3, #1
 8001f26:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001f28:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001f2a:	429a      	cmp	r2, r3
 8001f2c:	d8f2      	bhi.n	8001f14 <xvprintf+0x144>
 8001f2e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001f30:	0018      	movs	r0, r3
 8001f32:	f7ff ff39 	bl	8001da8 <xputs>
 8001f36:	e002      	b.n	8001f3e <xvprintf+0x16e>
 8001f38:	2020      	movs	r0, #32
 8001f3a:	f7ff ff09 	bl	8001d50 <xputc>
 8001f3e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f40:	1c5a      	adds	r2, r3, #1
 8001f42:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001f44:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001f46:	429a      	cmp	r2, r3
 8001f48:	d8f6      	bhi.n	8001f38 <xvprintf+0x168>
 8001f4a:	e0ba      	b.n	80020c2 <xvprintf+0x2f2>
 8001f4c:	683b      	ldr	r3, [r7, #0]
 8001f4e:	1d1a      	adds	r2, r3, #4
 8001f50:	603a      	str	r2, [r7, #0]
 8001f52:	681b      	ldr	r3, [r3, #0]
 8001f54:	b2db      	uxtb	r3, r3
 8001f56:	0018      	movs	r0, r3
 8001f58:	f7ff fefa 	bl	8001d50 <xputc>
 8001f5c:	e0b1      	b.n	80020c2 <xvprintf+0x2f2>
 8001f5e:	2302      	movs	r3, #2
 8001f60:	647b      	str	r3, [r7, #68]	; 0x44
 8001f62:	e00f      	b.n	8001f84 <xvprintf+0x1b4>
 8001f64:	2308      	movs	r3, #8
 8001f66:	647b      	str	r3, [r7, #68]	; 0x44
 8001f68:	e00c      	b.n	8001f84 <xvprintf+0x1b4>
 8001f6a:	230a      	movs	r3, #10
 8001f6c:	647b      	str	r3, [r7, #68]	; 0x44
 8001f6e:	e009      	b.n	8001f84 <xvprintf+0x1b4>
 8001f70:	2310      	movs	r3, #16
 8001f72:	647b      	str	r3, [r7, #68]	; 0x44
 8001f74:	e006      	b.n	8001f84 <xvprintf+0x1b4>
 8001f76:	2333      	movs	r3, #51	; 0x33
 8001f78:	18fb      	adds	r3, r7, r3
 8001f7a:	781b      	ldrb	r3, [r3, #0]
 8001f7c:	0018      	movs	r0, r3
 8001f7e:	f7ff fee7 	bl	8001d50 <xputc>
 8001f82:	e09e      	b.n	80020c2 <xvprintf+0x2f2>
 8001f84:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001f86:	2204      	movs	r2, #4
 8001f88:	4013      	ands	r3, r2
 8001f8a:	d005      	beq.n	8001f98 <xvprintf+0x1c8>
 8001f8c:	683b      	ldr	r3, [r7, #0]
 8001f8e:	1d1a      	adds	r2, r3, #4
 8001f90:	603a      	str	r2, [r7, #0]
 8001f92:	681b      	ldr	r3, [r3, #0]
 8001f94:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001f96:	e00e      	b.n	8001fb6 <xvprintf+0x1e6>
 8001f98:	2332      	movs	r3, #50	; 0x32
 8001f9a:	18fb      	adds	r3, r7, r3
 8001f9c:	781b      	ldrb	r3, [r3, #0]
 8001f9e:	2b44      	cmp	r3, #68	; 0x44
 8001fa0:	d104      	bne.n	8001fac <xvprintf+0x1dc>
 8001fa2:	683b      	ldr	r3, [r7, #0]
 8001fa4:	1d1a      	adds	r2, r3, #4
 8001fa6:	603a      	str	r2, [r7, #0]
 8001fa8:	681b      	ldr	r3, [r3, #0]
 8001faa:	e003      	b.n	8001fb4 <xvprintf+0x1e4>
 8001fac:	683b      	ldr	r3, [r7, #0]
 8001fae:	1d1a      	adds	r2, r3, #4
 8001fb0:	603a      	str	r2, [r7, #0]
 8001fb2:	681b      	ldr	r3, [r3, #0]
 8001fb4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001fb6:	2332      	movs	r3, #50	; 0x32
 8001fb8:	18fb      	adds	r3, r7, r3
 8001fba:	781b      	ldrb	r3, [r3, #0]
 8001fbc:	2b44      	cmp	r3, #68	; 0x44
 8001fbe:	d109      	bne.n	8001fd4 <xvprintf+0x204>
 8001fc0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001fc2:	2b00      	cmp	r3, #0
 8001fc4:	da06      	bge.n	8001fd4 <xvprintf+0x204>
 8001fc6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001fc8:	425b      	negs	r3, r3
 8001fca:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001fcc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001fce:	2210      	movs	r2, #16
 8001fd0:	4313      	orrs	r3, r2
 8001fd2:	637b      	str	r3, [r7, #52]	; 0x34
 8001fd4:	2300      	movs	r3, #0
 8001fd6:	643b      	str	r3, [r7, #64]	; 0x40
 8001fd8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001fda:	62bb      	str	r3, [r7, #40]	; 0x28
 8001fdc:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001fde:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8001fe0:	0018      	movs	r0, r3
 8001fe2:	f7fe f917 	bl	8000214 <__aeabi_uidivmod>
 8001fe6:	000b      	movs	r3, r1
 8001fe8:	001a      	movs	r2, r3
 8001fea:	2432      	movs	r4, #50	; 0x32
 8001fec:	193b      	adds	r3, r7, r4
 8001fee:	701a      	strb	r2, [r3, #0]
 8001ff0:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8001ff2:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8001ff4:	f7fe f888 	bl	8000108 <__udivsi3>
 8001ff8:	0003      	movs	r3, r0
 8001ffa:	62bb      	str	r3, [r7, #40]	; 0x28
 8001ffc:	193b      	adds	r3, r7, r4
 8001ffe:	781b      	ldrb	r3, [r3, #0]
 8002000:	2b09      	cmp	r3, #9
 8002002:	d90d      	bls.n	8002020 <xvprintf+0x250>
 8002004:	2333      	movs	r3, #51	; 0x33
 8002006:	18fb      	adds	r3, r7, r3
 8002008:	781b      	ldrb	r3, [r3, #0]
 800200a:	2b78      	cmp	r3, #120	; 0x78
 800200c:	d101      	bne.n	8002012 <xvprintf+0x242>
 800200e:	2327      	movs	r3, #39	; 0x27
 8002010:	e000      	b.n	8002014 <xvprintf+0x244>
 8002012:	2307      	movs	r3, #7
 8002014:	2132      	movs	r1, #50	; 0x32
 8002016:	187a      	adds	r2, r7, r1
 8002018:	1879      	adds	r1, r7, r1
 800201a:	7809      	ldrb	r1, [r1, #0]
 800201c:	185b      	adds	r3, r3, r1
 800201e:	7013      	strb	r3, [r2, #0]
 8002020:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002022:	1c5a      	adds	r2, r3, #1
 8002024:	643a      	str	r2, [r7, #64]	; 0x40
 8002026:	2232      	movs	r2, #50	; 0x32
 8002028:	18ba      	adds	r2, r7, r2
 800202a:	7812      	ldrb	r2, [r2, #0]
 800202c:	3230      	adds	r2, #48	; 0x30
 800202e:	b2d1      	uxtb	r1, r2
 8002030:	220c      	movs	r2, #12
 8002032:	18ba      	adds	r2, r7, r2
 8002034:	54d1      	strb	r1, [r2, r3]
 8002036:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002038:	2b00      	cmp	r3, #0
 800203a:	d002      	beq.n	8002042 <xvprintf+0x272>
 800203c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800203e:	2b17      	cmp	r3, #23
 8002040:	d9cc      	bls.n	8001fdc <xvprintf+0x20c>
 8002042:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002044:	2210      	movs	r2, #16
 8002046:	4013      	ands	r3, r2
 8002048:	d006      	beq.n	8002058 <xvprintf+0x288>
 800204a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800204c:	1c5a      	adds	r2, r3, #1
 800204e:	643a      	str	r2, [r7, #64]	; 0x40
 8002050:	220c      	movs	r2, #12
 8002052:	18ba      	adds	r2, r7, r2
 8002054:	212d      	movs	r1, #45	; 0x2d
 8002056:	54d1      	strb	r1, [r2, r3]
 8002058:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800205a:	63fb      	str	r3, [r7, #60]	; 0x3c
 800205c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800205e:	2201      	movs	r2, #1
 8002060:	4013      	ands	r3, r2
 8002062:	d001      	beq.n	8002068 <xvprintf+0x298>
 8002064:	2230      	movs	r2, #48	; 0x30
 8002066:	e000      	b.n	800206a <xvprintf+0x29a>
 8002068:	2220      	movs	r2, #32
 800206a:	2332      	movs	r3, #50	; 0x32
 800206c:	18fb      	adds	r3, r7, r3
 800206e:	701a      	strb	r2, [r3, #0]
 8002070:	e005      	b.n	800207e <xvprintf+0x2ae>
 8002072:	2332      	movs	r3, #50	; 0x32
 8002074:	18fb      	adds	r3, r7, r3
 8002076:	781b      	ldrb	r3, [r3, #0]
 8002078:	0018      	movs	r0, r3
 800207a:	f7ff fe69 	bl	8001d50 <xputc>
 800207e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002080:	2202      	movs	r2, #2
 8002082:	4013      	ands	r3, r2
 8002084:	d105      	bne.n	8002092 <xvprintf+0x2c2>
 8002086:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002088:	1c5a      	adds	r2, r3, #1
 800208a:	63fa      	str	r2, [r7, #60]	; 0x3c
 800208c:	6bba      	ldr	r2, [r7, #56]	; 0x38
 800208e:	429a      	cmp	r2, r3
 8002090:	d8ef      	bhi.n	8002072 <xvprintf+0x2a2>
 8002092:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002094:	3b01      	subs	r3, #1
 8002096:	643b      	str	r3, [r7, #64]	; 0x40
 8002098:	230c      	movs	r3, #12
 800209a:	18fa      	adds	r2, r7, r3
 800209c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800209e:	18d3      	adds	r3, r2, r3
 80020a0:	781b      	ldrb	r3, [r3, #0]
 80020a2:	0018      	movs	r0, r3
 80020a4:	f7ff fe54 	bl	8001d50 <xputc>
 80020a8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80020aa:	2b00      	cmp	r3, #0
 80020ac:	d1f1      	bne.n	8002092 <xvprintf+0x2c2>
 80020ae:	e002      	b.n	80020b6 <xvprintf+0x2e6>
 80020b0:	2020      	movs	r0, #32
 80020b2:	f7ff fe4d 	bl	8001d50 <xputc>
 80020b6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80020b8:	1c5a      	adds	r2, r3, #1
 80020ba:	63fa      	str	r2, [r7, #60]	; 0x3c
 80020bc:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80020be:	429a      	cmp	r2, r3
 80020c0:	d8f6      	bhi.n	80020b0 <xvprintf+0x2e0>
 80020c2:	e68a      	b.n	8001dda <xvprintf+0xa>
 80020c4:	46c0      	nop			; (mov r8, r8)
 80020c6:	e000      	b.n	80020ca <xvprintf+0x2fa>
 80020c8:	46c0      	nop			; (mov r8, r8)
 80020ca:	46c0      	nop			; (mov r8, r8)
 80020cc:	46bd      	mov	sp, r7
 80020ce:	b013      	add	sp, #76	; 0x4c
 80020d0:	bd90      	pop	{r4, r7, pc}
 80020d2:	46c0      	nop			; (mov r8, r8)
 80020d4:	08002c60 	.word	0x08002c60

080020d8 <xprintf>:
 80020d8:	b40f      	push	{r0, r1, r2, r3}
 80020da:	b580      	push	{r7, lr}
 80020dc:	b082      	sub	sp, #8
 80020de:	af00      	add	r7, sp, #0
 80020e0:	2314      	movs	r3, #20
 80020e2:	18fb      	adds	r3, r7, r3
 80020e4:	607b      	str	r3, [r7, #4]
 80020e6:	687a      	ldr	r2, [r7, #4]
 80020e8:	693b      	ldr	r3, [r7, #16]
 80020ea:	0011      	movs	r1, r2
 80020ec:	0018      	movs	r0, r3
 80020ee:	f7ff fe6f 	bl	8001dd0 <xvprintf>
 80020f2:	46c0      	nop			; (mov r8, r8)
 80020f4:	46bd      	mov	sp, r7
 80020f6:	b002      	add	sp, #8
 80020f8:	bc80      	pop	{r7}
 80020fa:	bc08      	pop	{r3}
 80020fc:	b004      	add	sp, #16
 80020fe:	4718      	bx	r3

08002100 <__libc_init_array>:
 8002100:	b570      	push	{r4, r5, r6, lr}
 8002102:	4d0c      	ldr	r5, [pc, #48]	; (8002134 <__libc_init_array+0x34>)
 8002104:	4e0c      	ldr	r6, [pc, #48]	; (8002138 <__libc_init_array+0x38>)
 8002106:	1b76      	subs	r6, r6, r5
 8002108:	10b6      	asrs	r6, r6, #2
 800210a:	d005      	beq.n	8002118 <__libc_init_array+0x18>
 800210c:	2400      	movs	r4, #0
 800210e:	cd08      	ldmia	r5!, {r3}
 8002110:	3401      	adds	r4, #1
 8002112:	4798      	blx	r3
 8002114:	42a6      	cmp	r6, r4
 8002116:	d1fa      	bne.n	800210e <__libc_init_array+0xe>
 8002118:	f000 f8f4 	bl	8002304 <_init>
 800211c:	4d07      	ldr	r5, [pc, #28]	; (800213c <__libc_init_array+0x3c>)
 800211e:	4e08      	ldr	r6, [pc, #32]	; (8002140 <__libc_init_array+0x40>)
 8002120:	1b76      	subs	r6, r6, r5
 8002122:	10b6      	asrs	r6, r6, #2
 8002124:	d005      	beq.n	8002132 <__libc_init_array+0x32>
 8002126:	2400      	movs	r4, #0
 8002128:	cd08      	ldmia	r5!, {r3}
 800212a:	3401      	adds	r4, #1
 800212c:	4798      	blx	r3
 800212e:	42a6      	cmp	r6, r4
 8002130:	d1fa      	bne.n	8002128 <__libc_init_array+0x28>
 8002132:	bd70      	pop	{r4, r5, r6, pc}
 8002134:	08002cc0 	.word	0x08002cc0
 8002138:	08002cc0 	.word	0x08002cc0
 800213c:	08002cc0 	.word	0x08002cc0
 8002140:	08002cc8 	.word	0x08002cc8

08002144 <memset>:
 8002144:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002146:	0005      	movs	r5, r0
 8002148:	0783      	lsls	r3, r0, #30
 800214a:	d04a      	beq.n	80021e2 <memset+0x9e>
 800214c:	1e54      	subs	r4, r2, #1
 800214e:	2a00      	cmp	r2, #0
 8002150:	d044      	beq.n	80021dc <memset+0x98>
 8002152:	b2ce      	uxtb	r6, r1
 8002154:	0003      	movs	r3, r0
 8002156:	2203      	movs	r2, #3
 8002158:	e002      	b.n	8002160 <memset+0x1c>
 800215a:	3501      	adds	r5, #1
 800215c:	3c01      	subs	r4, #1
 800215e:	d33d      	bcc.n	80021dc <memset+0x98>
 8002160:	3301      	adds	r3, #1
 8002162:	702e      	strb	r6, [r5, #0]
 8002164:	4213      	tst	r3, r2
 8002166:	d1f8      	bne.n	800215a <memset+0x16>
 8002168:	2c03      	cmp	r4, #3
 800216a:	d92f      	bls.n	80021cc <memset+0x88>
 800216c:	22ff      	movs	r2, #255	; 0xff
 800216e:	400a      	ands	r2, r1
 8002170:	0215      	lsls	r5, r2, #8
 8002172:	4315      	orrs	r5, r2
 8002174:	042a      	lsls	r2, r5, #16
 8002176:	4315      	orrs	r5, r2
 8002178:	2c0f      	cmp	r4, #15
 800217a:	d935      	bls.n	80021e8 <memset+0xa4>
 800217c:	0027      	movs	r7, r4
 800217e:	3f10      	subs	r7, #16
 8002180:	093f      	lsrs	r7, r7, #4
 8002182:	013e      	lsls	r6, r7, #4
 8002184:	46b4      	mov	ip, r6
 8002186:	001e      	movs	r6, r3
 8002188:	001a      	movs	r2, r3
 800218a:	3610      	adds	r6, #16
 800218c:	4466      	add	r6, ip
 800218e:	6015      	str	r5, [r2, #0]
 8002190:	6055      	str	r5, [r2, #4]
 8002192:	6095      	str	r5, [r2, #8]
 8002194:	60d5      	str	r5, [r2, #12]
 8002196:	3210      	adds	r2, #16
 8002198:	42b2      	cmp	r2, r6
 800219a:	d1f8      	bne.n	800218e <memset+0x4a>
 800219c:	260f      	movs	r6, #15
 800219e:	220c      	movs	r2, #12
 80021a0:	3701      	adds	r7, #1
 80021a2:	013f      	lsls	r7, r7, #4
 80021a4:	4026      	ands	r6, r4
 80021a6:	19db      	adds	r3, r3, r7
 80021a8:	0037      	movs	r7, r6
 80021aa:	4222      	tst	r2, r4
 80021ac:	d017      	beq.n	80021de <memset+0x9a>
 80021ae:	1f3e      	subs	r6, r7, #4
 80021b0:	08b6      	lsrs	r6, r6, #2
 80021b2:	00b4      	lsls	r4, r6, #2
 80021b4:	46a4      	mov	ip, r4
 80021b6:	001a      	movs	r2, r3
 80021b8:	1d1c      	adds	r4, r3, #4
 80021ba:	4464      	add	r4, ip
 80021bc:	c220      	stmia	r2!, {r5}
 80021be:	42a2      	cmp	r2, r4
 80021c0:	d1fc      	bne.n	80021bc <memset+0x78>
 80021c2:	2403      	movs	r4, #3
 80021c4:	3601      	adds	r6, #1
 80021c6:	00b6      	lsls	r6, r6, #2
 80021c8:	199b      	adds	r3, r3, r6
 80021ca:	403c      	ands	r4, r7
 80021cc:	2c00      	cmp	r4, #0
 80021ce:	d005      	beq.n	80021dc <memset+0x98>
 80021d0:	b2c9      	uxtb	r1, r1
 80021d2:	191c      	adds	r4, r3, r4
 80021d4:	7019      	strb	r1, [r3, #0]
 80021d6:	3301      	adds	r3, #1
 80021d8:	429c      	cmp	r4, r3
 80021da:	d1fb      	bne.n	80021d4 <memset+0x90>
 80021dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80021de:	0034      	movs	r4, r6
 80021e0:	e7f4      	b.n	80021cc <memset+0x88>
 80021e2:	0014      	movs	r4, r2
 80021e4:	0003      	movs	r3, r0
 80021e6:	e7bf      	b.n	8002168 <memset+0x24>
 80021e8:	0027      	movs	r7, r4
 80021ea:	e7e0      	b.n	80021ae <memset+0x6a>

080021ec <register_fini>:
 80021ec:	4b03      	ldr	r3, [pc, #12]	; (80021fc <register_fini+0x10>)
 80021ee:	b510      	push	{r4, lr}
 80021f0:	2b00      	cmp	r3, #0
 80021f2:	d002      	beq.n	80021fa <register_fini+0xe>
 80021f4:	4802      	ldr	r0, [pc, #8]	; (8002200 <register_fini+0x14>)
 80021f6:	f000 f805 	bl	8002204 <atexit>
 80021fa:	bd10      	pop	{r4, pc}
 80021fc:	00000000 	.word	0x00000000
 8002200:	08002215 	.word	0x08002215

08002204 <atexit>:
 8002204:	b510      	push	{r4, lr}
 8002206:	0001      	movs	r1, r0
 8002208:	2300      	movs	r3, #0
 800220a:	2200      	movs	r2, #0
 800220c:	2000      	movs	r0, #0
 800220e:	f000 f819 	bl	8002244 <__register_exitproc>
 8002212:	bd10      	pop	{r4, pc}

08002214 <__libc_fini_array>:
 8002214:	b570      	push	{r4, r5, r6, lr}
 8002216:	4d07      	ldr	r5, [pc, #28]	; (8002234 <__libc_fini_array+0x20>)
 8002218:	4c07      	ldr	r4, [pc, #28]	; (8002238 <__libc_fini_array+0x24>)
 800221a:	1b64      	subs	r4, r4, r5
 800221c:	10a4      	asrs	r4, r4, #2
 800221e:	d005      	beq.n	800222c <__libc_fini_array+0x18>
 8002220:	3c01      	subs	r4, #1
 8002222:	00a3      	lsls	r3, r4, #2
 8002224:	58eb      	ldr	r3, [r5, r3]
 8002226:	4798      	blx	r3
 8002228:	2c00      	cmp	r4, #0
 800222a:	d1f9      	bne.n	8002220 <__libc_fini_array+0xc>
 800222c:	f000 f870 	bl	8002310 <_fini>
 8002230:	bd70      	pop	{r4, r5, r6, pc}
 8002232:	46c0      	nop			; (mov r8, r8)
 8002234:	08002cc8 	.word	0x08002cc8
 8002238:	08002ccc 	.word	0x08002ccc

0800223c <__retarget_lock_acquire_recursive>:
 800223c:	4770      	bx	lr
 800223e:	46c0      	nop			; (mov r8, r8)

08002240 <__retarget_lock_release_recursive>:
 8002240:	4770      	bx	lr
 8002242:	46c0      	nop			; (mov r8, r8)

08002244 <__register_exitproc>:
 8002244:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002246:	46de      	mov	lr, fp
 8002248:	4645      	mov	r5, r8
 800224a:	464e      	mov	r6, r9
 800224c:	4657      	mov	r7, sl
 800224e:	b5e0      	push	{r5, r6, r7, lr}
 8002250:	4c2a      	ldr	r4, [pc, #168]	; (80022fc <__register_exitproc+0xb8>)
 8002252:	b083      	sub	sp, #12
 8002254:	0005      	movs	r5, r0
 8002256:	6820      	ldr	r0, [r4, #0]
 8002258:	4690      	mov	r8, r2
 800225a:	469b      	mov	fp, r3
 800225c:	000e      	movs	r6, r1
 800225e:	f7ff ffed 	bl	800223c <__retarget_lock_acquire_recursive>
 8002262:	4b27      	ldr	r3, [pc, #156]	; (8002300 <__register_exitproc+0xbc>)
 8002264:	681b      	ldr	r3, [r3, #0]
 8002266:	9301      	str	r3, [sp, #4]
 8002268:	23a4      	movs	r3, #164	; 0xa4
 800226a:	9a01      	ldr	r2, [sp, #4]
 800226c:	005b      	lsls	r3, r3, #1
 800226e:	58d2      	ldr	r2, [r2, r3]
 8002270:	2a00      	cmp	r2, #0
 8002272:	d038      	beq.n	80022e6 <__register_exitproc+0xa2>
 8002274:	6853      	ldr	r3, [r2, #4]
 8002276:	6820      	ldr	r0, [r4, #0]
 8002278:	2b1f      	cmp	r3, #31
 800227a:	dc3a      	bgt.n	80022f2 <__register_exitproc+0xae>
 800227c:	2d00      	cmp	r5, #0
 800227e:	d10e      	bne.n	800229e <__register_exitproc+0x5a>
 8002280:	1c59      	adds	r1, r3, #1
 8002282:	3302      	adds	r3, #2
 8002284:	009b      	lsls	r3, r3, #2
 8002286:	6051      	str	r1, [r2, #4]
 8002288:	509e      	str	r6, [r3, r2]
 800228a:	f7ff ffd9 	bl	8002240 <__retarget_lock_release_recursive>
 800228e:	2000      	movs	r0, #0
 8002290:	b003      	add	sp, #12
 8002292:	bc3c      	pop	{r2, r3, r4, r5}
 8002294:	4690      	mov	r8, r2
 8002296:	4699      	mov	r9, r3
 8002298:	46a2      	mov	sl, r4
 800229a:	46ab      	mov	fp, r5
 800229c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800229e:	0099      	lsls	r1, r3, #2
 80022a0:	4689      	mov	r9, r1
 80022a2:	4491      	add	r9, r2
 80022a4:	4641      	mov	r1, r8
 80022a6:	2488      	movs	r4, #136	; 0x88
 80022a8:	464f      	mov	r7, r9
 80022aa:	5139      	str	r1, [r7, r4]
 80022ac:	21c4      	movs	r1, #196	; 0xc4
 80022ae:	0049      	lsls	r1, r1, #1
 80022b0:	4688      	mov	r8, r1
 80022b2:	4490      	add	r8, r2
 80022b4:	4641      	mov	r1, r8
 80022b6:	3c87      	subs	r4, #135	; 0x87
 80022b8:	409c      	lsls	r4, r3
 80022ba:	6809      	ldr	r1, [r1, #0]
 80022bc:	46a2      	mov	sl, r4
 80022be:	4321      	orrs	r1, r4
 80022c0:	468c      	mov	ip, r1
 80022c2:	4641      	mov	r1, r8
 80022c4:	4664      	mov	r4, ip
 80022c6:	600c      	str	r4, [r1, #0]
 80022c8:	2184      	movs	r1, #132	; 0x84
 80022ca:	464c      	mov	r4, r9
 80022cc:	465f      	mov	r7, fp
 80022ce:	0049      	lsls	r1, r1, #1
 80022d0:	5067      	str	r7, [r4, r1]
 80022d2:	2d02      	cmp	r5, #2
 80022d4:	d1d4      	bne.n	8002280 <__register_exitproc+0x3c>
 80022d6:	0011      	movs	r1, r2
 80022d8:	4655      	mov	r5, sl
 80022da:	318d      	adds	r1, #141	; 0x8d
 80022dc:	31ff      	adds	r1, #255	; 0xff
 80022de:	680c      	ldr	r4, [r1, #0]
 80022e0:	4325      	orrs	r5, r4
 80022e2:	600d      	str	r5, [r1, #0]
 80022e4:	e7cc      	b.n	8002280 <__register_exitproc+0x3c>
 80022e6:	9a01      	ldr	r2, [sp, #4]
 80022e8:	9901      	ldr	r1, [sp, #4]
 80022ea:	324d      	adds	r2, #77	; 0x4d
 80022ec:	32ff      	adds	r2, #255	; 0xff
 80022ee:	50ca      	str	r2, [r1, r3]
 80022f0:	e7c0      	b.n	8002274 <__register_exitproc+0x30>
 80022f2:	f7ff ffa5 	bl	8002240 <__retarget_lock_release_recursive>
 80022f6:	2001      	movs	r0, #1
 80022f8:	4240      	negs	r0, r0
 80022fa:	e7c9      	b.n	8002290 <__register_exitproc+0x4c>
 80022fc:	200004f0 	.word	0x200004f0
 8002300:	08002cbc 	.word	0x08002cbc

08002304 <_init>:
 8002304:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002306:	46c0      	nop			; (mov r8, r8)
 8002308:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800230a:	bc08      	pop	{r3}
 800230c:	469e      	mov	lr, r3
 800230e:	4770      	bx	lr

08002310 <_fini>:
 8002310:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002312:	46c0      	nop			; (mov r8, r8)
 8002314:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002316:	bc08      	pop	{r3}
 8002318:	469e      	mov	lr, r3
 800231a:	4770      	bx	lr