
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	5c013103          	ld	sp,1472(sp) # 8000a5c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4fd050ef          	jal	ra,80005d18 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.extern _ZN5Riscv20handleSupervisorTrapEv
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00113423          	sd	ra,8(sp)
    80001108:	00213823          	sd	sp,16(sp)
    8000110c:	00313c23          	sd	gp,24(sp)
    80001110:	02413023          	sd	tp,32(sp)
    80001114:	02513423          	sd	t0,40(sp)
    80001118:	02613823          	sd	t1,48(sp)
    8000111c:	02713c23          	sd	t2,56(sp)
    80001120:	04813023          	sd	s0,64(sp)
    80001124:	04913423          	sd	s1,72(sp)
    80001128:	04b13c23          	sd	a1,88(sp)
    8000112c:	06c13023          	sd	a2,96(sp)
    80001130:	06d13423          	sd	a3,104(sp)
    80001134:	06e13823          	sd	a4,112(sp)
    80001138:	06f13c23          	sd	a5,120(sp)
    8000113c:	09013023          	sd	a6,128(sp)
    80001140:	09113423          	sd	a7,136(sp)
    80001144:	09213823          	sd	s2,144(sp)
    80001148:	09313c23          	sd	s3,152(sp)
    8000114c:	0b413023          	sd	s4,160(sp)
    80001150:	0b513423          	sd	s5,168(sp)
    80001154:	0b613823          	sd	s6,176(sp)
    80001158:	0b713c23          	sd	s7,184(sp)
    8000115c:	0d813023          	sd	s8,192(sp)
    80001160:	0d913423          	sd	s9,200(sp)
    80001164:	0da13823          	sd	s10,208(sp)
    80001168:	0db13c23          	sd	s11,216(sp)
    8000116c:	0fc13023          	sd	t3,224(sp)
    80001170:	0fd13423          	sd	t4,232(sp)
    80001174:	0fe13823          	sd	t5,240(sp)
    80001178:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    8000117c:	44d000ef          	jal	ra,80001dc8 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001180:	00813083          	ld	ra,8(sp)
    80001184:	01013103          	ld	sp,16(sp)
    80001188:	01813183          	ld	gp,24(sp)
    8000118c:	02013203          	ld	tp,32(sp)
    80001190:	02813283          	ld	t0,40(sp)
    80001194:	03013303          	ld	t1,48(sp)
    80001198:	03813383          	ld	t2,56(sp)
    8000119c:	04013403          	ld	s0,64(sp)
    800011a0:	04813483          	ld	s1,72(sp)
    800011a4:	05813583          	ld	a1,88(sp)
    800011a8:	06013603          	ld	a2,96(sp)
    800011ac:	06813683          	ld	a3,104(sp)
    800011b0:	07013703          	ld	a4,112(sp)
    800011b4:	07813783          	ld	a5,120(sp)
    800011b8:	08013803          	ld	a6,128(sp)
    800011bc:	08813883          	ld	a7,136(sp)
    800011c0:	09013903          	ld	s2,144(sp)
    800011c4:	09813983          	ld	s3,152(sp)
    800011c8:	0a013a03          	ld	s4,160(sp)
    800011cc:	0a813a83          	ld	s5,168(sp)
    800011d0:	0b013b03          	ld	s6,176(sp)
    800011d4:	0b813b83          	ld	s7,184(sp)
    800011d8:	0c013c03          	ld	s8,192(sp)
    800011dc:	0c813c83          	ld	s9,200(sp)
    800011e0:	0d013d03          	ld	s10,208(sp)
    800011e4:	0d813d83          	ld	s11,216(sp)
    800011e8:	0e013e03          	ld	t3,224(sp)
    800011ec:	0e813e83          	ld	t4,232(sp)
    800011f0:	0f013f03          	ld	t5,240(sp)
    800011f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f8:	10010113          	addi	sp,sp,256

    800011fc:	10200073          	sret

0000000080001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 - old->context
    # a1 - running->context
    sd ra, 0*8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001214:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001218:	00b29a63          	bne	t0,a1,8000122c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000121c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001220:	fe029ae3          	bnez	t0,80001214 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001224:	00000513          	li	a0,0
    jr ra                  # Return.
    80001228:	00008067          	ret

000000008000122c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000122c:	00100513          	li	a0,1
    80001230:	00008067          	ret

0000000080001234 <_Z6Wecalliz>:
#include "../h/syscall_c.hpp"


void Wecall(int code, ...) {
    80001234:	fb010113          	addi	sp,sp,-80
    80001238:	00813423          	sd	s0,8(sp)
    8000123c:	01010413          	addi	s0,sp,16
    80001240:	00b43423          	sd	a1,8(s0)
    80001244:	00c43823          	sd	a2,16(s0)
    80001248:	00d43c23          	sd	a3,24(s0)
    8000124c:	02e43023          	sd	a4,32(s0)
    80001250:	02f43423          	sd	a5,40(s0)
    80001254:	03043823          	sd	a6,48(s0)
    80001258:	03143c23          	sd	a7,56(s0)
    // for argument passing
    __asm__ volatile("ecall");
    8000125c:	00000073          	ecall
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	05010113          	addi	sp,sp,80
    80001268:	00008067          	ret

000000008000126c <_Z9mem_allocm>:


void *mem_alloc(size_t size) {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00113423          	sd	ra,8(sp)
    80001274:	00813023          	sd	s0,0(sp)
    80001278:	01010413          	addi	s0,sp,16
    8000127c:	00050593          	mv	a1,a0
    Wecall(0x01, size);
    80001280:	00100513          	li	a0,1
    80001284:	00000097          	auipc	ra,0x0
    80001288:	fb0080e7          	jalr	-80(ra) # 80001234 <_Z6Wecalliz>
    void *ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    8000128c:	00050513          	mv	a0,a0
    return ret_val;
}
    80001290:	00813083          	ld	ra,8(sp)
    80001294:	00013403          	ld	s0,0(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret

00000000800012a0 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800012a0:	ff010113          	addi	sp,sp,-16
    800012a4:	00113423          	sd	ra,8(sp)
    800012a8:	00813023          	sd	s0,0(sp)
    800012ac:	01010413          	addi	s0,sp,16
    800012b0:	00050593          	mv	a1,a0
    Wecall(0x02, ptr);
    800012b4:	00200513          	li	a0,2
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	f7c080e7          	jalr	-132(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    800012c0:	00050513          	mv	a0,a0
    return ret_val;
}
    800012c4:	0005051b          	sext.w	a0,a0
    800012c8:	00813083          	ld	ra,8(sp)
    800012cc:	00013403          	ld	s0,0(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00113423          	sd	ra,8(sp)
    800012e0:	00813023          	sd	s0,0(sp)
    800012e4:	01010413          	addi	s0,sp,16
    800012e8:	00060693          	mv	a3,a2
    Wecall(0x11, handle, start_routine, arg);
    800012ec:	00058613          	mv	a2,a1
    800012f0:	00050593          	mv	a1,a0
    800012f4:	01100513          	li	a0,17
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	f3c080e7          	jalr	-196(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    80001300:	00050513          	mv	a0,a0
    return ret_val;
}
    80001304:	0005051b          	sext.w	a0,a0
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_Z11thread_exitv>:

int thread_exit() {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    Wecall(0x12);
    80001328:	01200513          	li	a0,18
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	f08080e7          	jalr	-248(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    80001334:	00050513          	mv	a0,a0
    return ret_val;
}
    80001338:	0005051b          	sext.w	a0,a0
    8000133c:	00813083          	ld	ra,8(sp)
    80001340:	00013403          	ld	s0,0(sp)
    80001344:	01010113          	addi	sp,sp,16
    80001348:	00008067          	ret

000000008000134c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00113423          	sd	ra,8(sp)
    80001354:	00813023          	sd	s0,0(sp)
    80001358:	01010413          	addi	s0,sp,16
    Wecall(0x13);
    8000135c:	01300513          	li	a0,19
    80001360:	00000097          	auipc	ra,0x0
    80001364:	ed4080e7          	jalr	-300(ra) # 80001234 <_Z6Wecalliz>
}
    80001368:	00813083          	ld	ra,8(sp)
    8000136c:	00013403          	ld	s0,0(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00008067          	ret

0000000080001378 <_Z8sem_openPP3SEMj>:


int sem_open(sem_t *handle, unsigned int init) {
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00113423          	sd	ra,8(sp)
    80001380:	00813023          	sd	s0,0(sp)
    80001384:	01010413          	addi	s0,sp,16
    80001388:	00058613          	mv	a2,a1
    Wecall(0x21, handle, init);
    8000138c:	00050593          	mv	a1,a0
    80001390:	02100513          	li	a0,33
    80001394:	00000097          	auipc	ra,0x0
    80001398:	ea0080e7          	jalr	-352(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    8000139c:	00050513          	mv	a0,a0
    return ret_val;
}
    800013a0:	0005051b          	sext.w	a0,a0
    800013a4:	00813083          	ld	ra,8(sp)
    800013a8:	00013403          	ld	s0,0(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z9sem_closeP3SEM>:

int sem_close(sem_t handle) {
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00113423          	sd	ra,8(sp)
    800013bc:	00813023          	sd	s0,0(sp)
    800013c0:	01010413          	addi	s0,sp,16
    800013c4:	00050593          	mv	a1,a0
    Wecall(0x22, handle);
    800013c8:	02200513          	li	a0,34
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	e68080e7          	jalr	-408(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    800013d4:	00050513          	mv	a0,a0
    return ret_val;
}
    800013d8:	0005051b          	sext.w	a0,a0
    800013dc:	00813083          	ld	ra,8(sp)
    800013e0:	00013403          	ld	s0,0(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_Z8sem_waitP3SEM>:

int sem_wait(sem_t id) {
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00113423          	sd	ra,8(sp)
    800013f4:	00813023          	sd	s0,0(sp)
    800013f8:	01010413          	addi	s0,sp,16
    800013fc:	00050593          	mv	a1,a0
    Wecall(0x23, id);
    80001400:	02300513          	li	a0,35
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e30080e7          	jalr	-464(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    8000140c:	00050513          	mv	a0,a0
    return ret_val;
}
    80001410:	0005051b          	sext.w	a0,a0
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z10sem_signalP3SEM>:

int sem_signal(sem_t id) {
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00113423          	sd	ra,8(sp)
    8000142c:	00813023          	sd	s0,0(sp)
    80001430:	01010413          	addi	s0,sp,16
    80001434:	00050593          	mv	a1,a0
    Wecall(0x24, id);
    80001438:	02400513          	li	a0,36
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	df8080e7          	jalr	-520(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    80001444:	00050513          	mv	a0,a0
    return ret_val;
}
    80001448:	0005051b          	sext.w	a0,a0
    8000144c:	00813083          	ld	ra,8(sp)
    80001450:	00013403          	ld	s0,0(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <_Z11sem_trywaitP3SEM>:

int sem_trywait(sem_t id) {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16
    8000146c:	00050593          	mv	a1,a0
    Wecall(0x26, id);
    80001470:	02600513          	li	a0,38
    80001474:	00000097          	auipc	ra,0x0
    80001478:	dc0080e7          	jalr	-576(ra) # 80001234 <_Z6Wecalliz>
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    8000147c:	00050513          	mv	a0,a0
    return ret_val;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813083          	ld	ra,8(sp)
    80001488:	00013403          	ld	s0,0(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z13sem_timedwaitP3SEMm>:

int sem_timedwait(sem_t , time_t) {
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    // not implemented; level 4
    return -1;
}
    800014a0:	fff00513          	li	a0,-1
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z10time_sleepm>:

int time_sleep(time_t) {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    // not implemented; level 4
    return -1;
}
    800014bc:	fff00513          	li	a0,-1
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_Z4getcv>:

char getc() {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    Wecall(0x41);
    800014dc:	04100513          	li	a0,65
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	d54080e7          	jalr	-684(ra) # 80001234 <_Z6Wecalliz>
    char ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    800014e8:	00050513          	mv	a0,a0
    return ret_val;
}
    800014ec:	0ff57513          	andi	a0,a0,255
    800014f0:	00813083          	ld	ra,8(sp)
    800014f4:	00013403          	ld	s0,0(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_Z4putcc>:

void putc(char c) {
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00113423          	sd	ra,8(sp)
    80001508:	00813023          	sd	s0,0(sp)
    8000150c:	01010413          	addi	s0,sp,16
    80001510:	00050593          	mv	a1,a0
    Wecall(0x42, c);
    80001514:	04200513          	li	a0,66
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	d1c080e7          	jalr	-740(ra) # 80001234 <_Z6Wecalliz>
}
    80001520:	00813083          	ld	ra,8(sp)
    80001524:	00013403          	ld	s0,0(sp)
    80001528:	01010113          	addi	sp,sp,16
    8000152c:	00008067          	ret

0000000080001530 <_Z15printStringMinePKc>:
#include "../h/print_mine.hpp"

void printStringMine(const char *string) {
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	02010413          	addi	s0,sp,32
    80001544:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80001548:	0004c503          	lbu	a0,0(s1)
    8000154c:	00050a63          	beqz	a0,80001560 <_Z15printStringMinePKc+0x30>
        __putc(*string);
    80001550:	00007097          	auipc	ra,0x7
    80001554:	88c080e7          	jalr	-1908(ra) # 80007ddc <__putc>
        string++;
    80001558:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    8000155c:	fedff06f          	j	80001548 <_Z15printStringMinePKc+0x18>
    }
}
    80001560:	01813083          	ld	ra,24(sp)
    80001564:	01013403          	ld	s0,16(sp)
    80001568:	00813483          	ld	s1,8(sp)
    8000156c:	02010113          	addi	sp,sp,32
    80001570:	00008067          	ret

0000000080001574 <_Z16printIntegerMinem>:

void printIntegerMine(uint64 integer) {
    80001574:	fd010113          	addi	sp,sp,-48
    80001578:	02113423          	sd	ra,40(sp)
    8000157c:	02813023          	sd	s0,32(sp)
    80001580:	00913c23          	sd	s1,24(sp)
    80001584:	03010413          	addi	s0,sp,48
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    i = 0;
    80001588:	00000493          	li	s1,0
    do {
        buf[i++] = digits[integer % 10];
    8000158c:	00a00693          	li	a3,10
    80001590:	02d57633          	remu	a2,a0,a3
    80001594:	00007717          	auipc	a4,0x7
    80001598:	a8c70713          	addi	a4,a4,-1396 # 80008020 <_ZZ16printIntegerMinemE6digits>
    8000159c:	00c70733          	add	a4,a4,a2
    800015a0:	00074703          	lbu	a4,0(a4)
    800015a4:	fe040613          	addi	a2,s0,-32
    800015a8:	009607b3          	add	a5,a2,s1
    800015ac:	0014849b          	addiw	s1,s1,1
    800015b0:	fee78823          	sb	a4,-16(a5)
    } while ((integer /= 10) != 0);
    800015b4:	00050713          	mv	a4,a0
    800015b8:	02d55533          	divu	a0,a0,a3
    800015bc:	00900793          	li	a5,9
    800015c0:	fce7e6e3          	bltu	a5,a4,8000158c <_Z16printIntegerMinem+0x18>
    while (--i >= 0) { __putc(buf[i]); }
    800015c4:	fff4849b          	addiw	s1,s1,-1
    800015c8:	0004ce63          	bltz	s1,800015e4 <_Z16printIntegerMinem+0x70>
    800015cc:	fe040793          	addi	a5,s0,-32
    800015d0:	009787b3          	add	a5,a5,s1
    800015d4:	ff07c503          	lbu	a0,-16(a5)
    800015d8:	00007097          	auipc	ra,0x7
    800015dc:	804080e7          	jalr	-2044(ra) # 80007ddc <__putc>
    800015e0:	fe5ff06f          	j	800015c4 <_Z16printIntegerMinem+0x50>
}
    800015e4:	02813083          	ld	ra,40(sp)
    800015e8:	02013403          	ld	s0,32(sp)
    800015ec:	01813483          	ld	s1,24(sp)
    800015f0:	03010113          	addi	sp,sp,48
    800015f4:	00008067          	ret

00000000800015f8 <_Z9userMainWPv>:
#include "../h/syscall_c.hpp"

extern void userMain();

void userMainW(void *) {
    800015f8:	ff010113          	addi	sp,sp,-16
    800015fc:	00113423          	sd	ra,8(sp)
    80001600:	00813023          	sd	s0,0(sp)
    80001604:	01010413          	addi	s0,sp,16
    userMain();
    80001608:	00004097          	auipc	ra,0x4
    8000160c:	b94080e7          	jalr	-1132(ra) # 8000519c <_Z8userMainv>
}
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <main>:

int main() {
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	02010413          	addi	s0,sp,32
    MemoryAllocator::mem_init();
    80001630:	00001097          	auipc	ra,0x1
    80001634:	e54080e7          	jalr	-428(ra) # 80002484 <_ZN15MemoryAllocator8mem_initEv>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001638:	00009797          	auipc	a5,0x9
    8000163c:	f807b783          	ld	a5,-128(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001640:	10579073          	csrw	stvec,a5
    thread_t main_thread, user_main_thread;
    thread_create(&main_thread, nullptr, nullptr);
    80001644:	00000613          	li	a2,0
    80001648:	00000593          	li	a1,0
    8000164c:	fe840513          	addi	a0,s0,-24
    80001650:	00000097          	auipc	ra,0x0
    80001654:	c88080e7          	jalr	-888(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main_thread;
    80001658:	00009797          	auipc	a5,0x9
    8000165c:	f707b783          	ld	a5,-144(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001660:	fe843703          	ld	a4,-24(s0)
    80001664:	00e7b023          	sd	a4,0(a5)
    thread_create(&user_main_thread, userMainW, nullptr);
    80001668:	00000613          	li	a2,0
    8000166c:	00000597          	auipc	a1,0x0
    80001670:	f8c58593          	addi	a1,a1,-116 # 800015f8 <_Z9userMainWPv>
    80001674:	fe040513          	addi	a0,s0,-32
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	c60080e7          	jalr	-928(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (!user_main_thread->isFinished()){
    80001680:	fe043783          	ld	a5,-32(s0)
    static TCB *k_createThread(Body body, void *arg);

    static int k_thread_exit();

    bool isFinished() const {
        return finished;
    80001684:	0207c783          	lbu	a5,32(a5)
    80001688:	00079863          	bnez	a5,80001698 <main+0x78>
        thread_dispatch();
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	cc0080e7          	jalr	-832(ra) # 8000134c <_Z15thread_dispatchv>
    80001694:	fedff06f          	j	80001680 <main+0x60>
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline void Riscv::end_kernel() {
    printStringMine("\nTurning off KERNEL\n\n\n\n");
    80001698:	00007517          	auipc	a0,0x7
    8000169c:	99850513          	addi	a0,a0,-1640 # 80008030 <_ZZ16printIntegerMinemE6digits+0x10>
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	e90080e7          	jalr	-368(ra) # 80001530 <_Z15printStringMinePKc>
    // store 0x5555 on address 0x100000
    __asm__ volatile("li s0, 0x5555");
    800016a8:	00005437          	lui	s0,0x5
    800016ac:	5554041b          	addiw	s0,s0,1365
    __asm__ volatile("li s1, 0x100000");
    800016b0:	001004b7          	lui	s1,0x100
    __asm__ volatile("sw s0, 0(s1)");
    800016b4:	0084a023          	sw	s0,0(s1) # 100000 <_entry-0x7ff00000>
    }
    Riscv::end_kernel();
    return 0;
}
    800016b8:	00000513          	li	a0,0
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	02010113          	addi	sp,sp,32
    800016c8:	00008067          	ret

00000000800016cc <_ZN3TCB7k_yieldEv>:
    running->body(running->arg);
    running->setFinished(true);
    TCB::k_yield();
}

void TCB::k_yield() {
    800016cc:	fe010113          	addi	sp,sp,-32
    800016d0:	00813c23          	sd	s0,24(sp)
    800016d4:	02010413          	addi	s0,sp,32
    uint64 volatile callCode = 0x13;
    800016d8:	01300793          	li	a5,19
    800016dc:	fef43423          	sd	a5,-24(s0) # 4fe8 <_entry-0x7fffb018>
    __asm__ volatile ("mv a0, %0" : : "r"(callCode));
    800016e0:	fe843783          	ld	a5,-24(s0)
    800016e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016e8:	00000073          	ecall
    //thread_dispatch();
}
    800016ec:	01813403          	ld	s0,24(sp)
    800016f0:	02010113          	addi	sp,sp,32
    800016f4:	00008067          	ret

00000000800016f8 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper() {
    800016f8:	fe010113          	addi	sp,sp,-32
    800016fc:	00113c23          	sd	ra,24(sp)
    80001700:	00813823          	sd	s0,16(sp)
    80001704:	00913423          	sd	s1,8(sp)
    80001708:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	694080e7          	jalr	1684(ra) # 80001da0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001714:	00009497          	auipc	s1,0x9
    80001718:	f0c48493          	addi	s1,s1,-244 # 8000a620 <_ZN3TCB7runningE>
    8000171c:	0004b783          	ld	a5,0(s1)
    80001720:	0007b703          	ld	a4,0(a5)
    80001724:	0287b503          	ld	a0,40(a5)
    80001728:	000700e7          	jalr	a4
    running->setFinished(true);
    8000172c:	0004b783          	ld	a5,0(s1)
    }

    void setFinished(bool f) {
        finished = f;
    80001730:	00100713          	li	a4,1
    80001734:	02e78023          	sb	a4,32(a5)
    TCB::k_yield();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	f94080e7          	jalr	-108(ra) # 800016cc <_ZN3TCB7k_yieldEv>
}
    80001740:	01813083          	ld	ra,24(sp)
    80001744:	01013403          	ld	s0,16(sp)
    80001748:	00813483          	ld	s1,8(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret

0000000080001754 <_ZN3TCB10k_dispatchEv>:

void TCB::k_dispatch() {
    80001754:	fe010113          	addi	sp,sp,-32
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	00813823          	sd	s0,16(sp)
    80001760:	00913423          	sd	s1,8(sp)
    80001764:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001768:	00009497          	auipc	s1,0x9
    8000176c:	eb84b483          	ld	s1,-328(s1) # 8000a620 <_ZN3TCB7runningE>
        return finished;
    80001770:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001774:	00079663          	bnez	a5,80001780 <_ZN3TCB10k_dispatchEv+0x2c>
    }

    bool isBlocked() const {
        return blocked;
    80001778:	0304c783          	lbu	a5,48(s1)
    8000177c:	02078c63          	beqz	a5,800017b4 <_ZN3TCB10k_dispatchEv+0x60>
    running = Scheduler::get();
    80001780:	00001097          	auipc	ra,0x1
    80001784:	bfc080e7          	jalr	-1028(ra) # 8000237c <_ZN9Scheduler3getEv>
    80001788:	00009797          	auipc	a5,0x9
    8000178c:	e8a7bc23          	sd	a0,-360(a5) # 8000a620 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001790:	01050593          	addi	a1,a0,16
    80001794:	01048513          	addi	a0,s1,16
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	a68080e7          	jalr	-1432(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800017a0:	01813083          	ld	ra,24(sp)
    800017a4:	01013403          	ld	s0,16(sp)
    800017a8:	00813483          	ld	s1,8(sp)
    800017ac:	02010113          	addi	sp,sp,32
    800017b0:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	c2c080e7          	jalr	-980(ra) # 800023e4 <_ZN9Scheduler3putEP3TCB>
    800017c0:	fc1ff06f          	j	80001780 <_ZN3TCB10k_dispatchEv+0x2c>

00000000800017c4 <_ZN3TCB14k_createThreadEPFvPvES0_>:

TCB *TCB::k_createThread(Body body, void *arg = nullptr) {
    800017c4:	fd010113          	addi	sp,sp,-48
    800017c8:	02113423          	sd	ra,40(sp)
    800017cc:	02813023          	sd	s0,32(sp)
    800017d0:	00913c23          	sd	s1,24(sp)
    800017d4:	01213823          	sd	s2,16(sp)
    800017d8:	01313423          	sd	s3,8(sp)
    800017dc:	03010413          	addi	s0,sp,48
    800017e0:	00050913          	mv	s2,a0
    800017e4:	00058993          	mv	s3,a1
        return MemoryAllocator::k_mem_alloc(size);
    800017e8:	03800513          	li	a0,56
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	cd8080e7          	jalr	-808(ra) # 800024c4 <_ZN15MemoryAllocator11k_mem_allocEm>
    800017f4:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg),
            blocked(false),
            id(0) {
    800017f8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800017fc:	00090a63          	beqz	s2,80001810 <_ZN3TCB14k_createThreadEPFvPvES0_+0x4c>
    80001800:	00008537          	lui	a0,0x8
    80001804:	00000097          	auipc	ra,0x0
    80001808:	250080e7          	jalr	592(ra) # 80001a54 <_Znam>
    8000180c:	0080006f          	j	80001814 <_ZN3TCB14k_createThreadEPFvPvES0_+0x50>
    80001810:	00000513          	li	a0,0
            id(0) {
    80001814:	00a4b423          	sd	a0,8(s1)
    80001818:	00000797          	auipc	a5,0x0
    8000181c:	ee078793          	addi	a5,a5,-288 # 800016f8 <_ZN3TCB13threadWrapperEv>
    80001820:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001824:	02050a63          	beqz	a0,80001858 <_ZN3TCB14k_createThreadEPFvPvES0_+0x94>
    80001828:	000087b7          	lui	a5,0x8
    8000182c:	00f507b3          	add	a5,a0,a5
            id(0) {
    80001830:	00f4bc23          	sd	a5,24(s1)
    80001834:	02048023          	sb	zero,32(s1)
    80001838:	0334b423          	sd	s3,40(s1)
    8000183c:	02048823          	sb	zero,48(s1)
    80001840:	0204aa23          	sw	zero,52(s1)
        if (body != nullptr) {
    80001844:	02090a63          	beqz	s2,80001878 <_ZN3TCB14k_createThreadEPFvPvES0_+0xb4>
            Scheduler::put(this);
    80001848:	00048513          	mv	a0,s1
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	b98080e7          	jalr	-1128(ra) # 800023e4 <_ZN9Scheduler3putEP3TCB>
    80001854:	00c0006f          	j	80001860 <_ZN3TCB14k_createThreadEPFvPvES0_+0x9c>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001858:	00000793          	li	a5,0
    8000185c:	fd5ff06f          	j	80001830 <_ZN3TCB14k_createThreadEPFvPvES0_+0x6c>
            id = gen_id++;
    80001860:	00009717          	auipc	a4,0x9
    80001864:	dc070713          	addi	a4,a4,-576 # 8000a620 <_ZN3TCB7runningE>
    80001868:	00872783          	lw	a5,8(a4)
    8000186c:	0017869b          	addiw	a3,a5,1
    80001870:	00d72423          	sw	a3,8(a4)
    80001874:	02f4aa23          	sw	a5,52(s1)
    return new TCB(body, arg);
}
    80001878:	00048513          	mv	a0,s1
    8000187c:	02813083          	ld	ra,40(sp)
    80001880:	02013403          	ld	s0,32(sp)
    80001884:	01813483          	ld	s1,24(sp)
    80001888:	01013903          	ld	s2,16(sp)
    8000188c:	00813983          	ld	s3,8(sp)
    80001890:	03010113          	addi	sp,sp,48
    80001894:	00008067          	ret
    80001898:	00050913          	mv	s2,a0
        MemoryAllocator::k_mem_free(memory);
    8000189c:	00048513          	mv	a0,s1
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	d18080e7          	jalr	-744(ra) # 800025b8 <_ZN15MemoryAllocator10k_mem_freeEPv>
    800018a8:	00090513          	mv	a0,s2
    800018ac:	0000a097          	auipc	ra,0xa
    800018b0:	ebc080e7          	jalr	-324(ra) # 8000b768 <_Unwind_Resume>

00000000800018b4 <_ZN3TCB13k_thread_exitEv>:

int TCB::k_thread_exit() {
    if (running == nullptr) return -1; // Error: running doesn't exist
    800018b4:	00009797          	auipc	a5,0x9
    800018b8:	d6c7b783          	ld	a5,-660(a5) # 8000a620 <_ZN3TCB7runningE>
    800018bc:	02078c63          	beqz	a5,800018f4 <_ZN3TCB13k_thread_exitEv+0x40>
int TCB::k_thread_exit() {
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00113423          	sd	ra,8(sp)
    800018c8:	00813023          	sd	s0,0(sp)
    800018cc:	01010413          	addi	s0,sp,16
        finished = f;
    800018d0:	00100713          	li	a4,1
    800018d4:	02e78023          	sb	a4,32(a5)
    running->setFinished(true);
    TCB::k_yield();
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	df4080e7          	jalr	-524(ra) # 800016cc <_ZN3TCB7k_yieldEv>
    return 0;
    800018e0:	00000513          	li	a0,0
}
    800018e4:	00813083          	ld	ra,8(sp)
    800018e8:	00013403          	ld	s0,0(sp)
    800018ec:	01010113          	addi	sp,sp,16
    800018f0:	00008067          	ret
    if (running == nullptr) return -1; // Error: running doesn't exist
    800018f4:	fff00513          	li	a0,-1
}
    800018f8:	00008067          	ret

00000000800018fc <_ZNK3TCB5getIdEv>:

int TCB::getId() const {
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00813423          	sd	s0,8(sp)
    80001904:	01010413          	addi	s0,sp,16
    return id;
}
    80001908:	03452503          	lw	a0,52(a0) # 8034 <_entry-0x7fff7fcc>
    8000190c:	00813403          	ld	s0,8(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret

0000000080001918 <_ZN6ThreadD1Ev>:
Thread::Thread(void (*b)(void *), void *a) {
    body = b;
    arg = a;
}

Thread::~Thread() {
    80001918:	ff010113          	addi	sp,sp,-16
    8000191c:	00813423          	sd	s0,8(sp)
    80001920:	01010413          	addi	s0,sp,16
}
    80001924:	00813403          	ld	s0,8(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret

0000000080001930 <_ZN6Thread6threadEPv>:
}

// 4. zadatak, prvi kolokvijum, april 2013.
void Thread::thread(void *p) {
    auto *thr = (Thread *) p;
    if (thr) thr->run();
    80001930:	02050863          	beqz	a0,80001960 <_ZN6Thread6threadEPv+0x30>
void Thread::thread(void *p) {
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	00813023          	sd	s0,0(sp)
    80001940:	01010413          	addi	s0,sp,16
    if (thr) thr->run();
    80001944:	00053783          	ld	a5,0(a0)
    80001948:	0107b783          	ld	a5,16(a5)
    8000194c:	000780e7          	jalr	a5
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret
    80001960:	00008067          	ret

0000000080001964 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle,init);
}

Semaphore::~Semaphore() {
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    80001974:	00009797          	auipc	a5,0x9
    80001978:	a7c78793          	addi	a5,a5,-1412 # 8000a3f0 <_ZTV9Semaphore+0x10>
    8000197c:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80001980:	00853503          	ld	a0,8(a0)
    80001984:	00000097          	auipc	ra,0x0
    80001988:	a30080e7          	jalr	-1488(ra) # 800013b4 <_Z9sem_closeP3SEM>
}
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_Znwm>:
void *operator new(size_t size) {
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	8c0080e7          	jalr	-1856(ra) # 8000126c <_Z9mem_allocm>
}
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZdlPv>:
void operator delete(void *p) noexcept {
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	8cc080e7          	jalr	-1844(ra) # 800012a0 <_Z8mem_freePv>
}
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
}
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	fc8080e7          	jalr	-56(ra) # 800019c4 <_ZdlPv>
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050493          	mv	s1,a0
}
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	f38080e7          	jalr	-200(ra) # 80001964 <_ZN9SemaphoreD1Ev>
    80001a34:	00048513          	mv	a0,s1
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	f8c080e7          	jalr	-116(ra) # 800019c4 <_ZdlPv>
    80001a40:	01813083          	ld	ra,24(sp)
    80001a44:	01013403          	ld	s0,16(sp)
    80001a48:	00813483          	ld	s1,8(sp)
    80001a4c:	02010113          	addi	sp,sp,32
    80001a50:	00008067          	ret

0000000080001a54 <_Znam>:
void *operator new[](size_t size) {
    80001a54:	ff010113          	addi	sp,sp,-16
    80001a58:	00113423          	sd	ra,8(sp)
    80001a5c:	00813023          	sd	s0,0(sp)
    80001a60:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	808080e7          	jalr	-2040(ra) # 8000126c <_Z9mem_allocm>
}
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00113423          	sd	ra,8(sp)
    80001a84:	00813023          	sd	s0,0(sp)
    80001a88:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	814080e7          	jalr	-2028(ra) # 800012a0 <_Z8mem_freePv>
}
    80001a94:	00813083          	ld	ra,8(sp)
    80001a98:	00013403          	ld	s0,0(sp)
    80001a9c:	01010113          	addi	sp,sp,16
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*b)(void *), void *a) {
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00813423          	sd	s0,8(sp)
    80001aac:	01010413          	addi	s0,sp,16
    80001ab0:	00009797          	auipc	a5,0x9
    80001ab4:	91878793          	addi	a5,a5,-1768 # 8000a3c8 <_ZTV6Thread+0x10>
    80001ab8:	00f53023          	sd	a5,0(a0)
    body = b;
    80001abc:	00b53823          	sd	a1,16(a0)
    arg = a;
    80001ac0:	00c53c23          	sd	a2,24(a0)
}
    80001ac4:	00813403          	ld	s0,8(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN6Thread5startEv>:
int Thread::start() {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    if (this->body == nullptr) {
    80001ae0:	01053583          	ld	a1,16(a0)
    80001ae4:	02058263          	beqz	a1,80001b08 <_ZN6Thread5startEv+0x38>
        ret_val = thread_create(&this->myHandle, this->body, this->arg);
    80001ae8:	01853603          	ld	a2,24(a0)
    80001aec:	00850513          	addi	a0,a0,8
    80001af0:	fffff097          	auipc	ra,0xfffff
    80001af4:	7e8080e7          	jalr	2024(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret
        ret_val = thread_create(&this->myHandle, thread, this);
    80001b08:	00050613          	mv	a2,a0
    80001b0c:	00000597          	auipc	a1,0x0
    80001b10:	e2458593          	addi	a1,a1,-476 # 80001930 <_ZN6Thread6threadEPv>
    80001b14:	00850513          	addi	a0,a0,8
    80001b18:	fffff097          	auipc	ra,0xfffff
    80001b1c:	7c0080e7          	jalr	1984(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001b20:	fd9ff06f          	j	80001af8 <_ZN6Thread5startEv+0x28>

0000000080001b24 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00113423          	sd	ra,8(sp)
    80001b2c:	00813023          	sd	s0,0(sp)
    80001b30:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	818080e7          	jalr	-2024(ra) # 8000134c <_Z15thread_dispatchv>
}
    80001b3c:	00813083          	ld	ra,8(sp)
    80001b40:	00013403          	ld	s0,0(sp)
    80001b44:	01010113          	addi	sp,sp,16
    80001b48:	00008067          	ret

0000000080001b4c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00813423          	sd	s0,8(sp)
    80001b54:	01010413          	addi	s0,sp,16
}
    80001b58:	fff00513          	li	a0,-1
    80001b5c:	00813403          	ld	s0,8(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN6ThreadC1Ev>:
Thread::Thread() : Thread(nullptr, nullptr) {}
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00113423          	sd	ra,8(sp)
    80001b70:	00813023          	sd	s0,0(sp)
    80001b74:	01010413          	addi	s0,sp,16
    80001b78:	00000613          	li	a2,0
    80001b7c:	00000593          	li	a1,0
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	f24080e7          	jalr	-220(ra) # 80001aa4 <_ZN6ThreadC1EPFvPvES0_>
    80001b88:	00813083          	ld	ra,8(sp)
    80001b8c:	00013403          	ld	s0,0(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00113423          	sd	ra,8(sp)
    80001ba0:	00813023          	sd	s0,0(sp)
    80001ba4:	01010413          	addi	s0,sp,16
    80001ba8:	00009797          	auipc	a5,0x9
    80001bac:	84878793          	addi	a5,a5,-1976 # 8000a3f0 <_ZTV9Semaphore+0x10>
    80001bb0:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle,init);
    80001bb4:	00850513          	addi	a0,a0,8
    80001bb8:	fffff097          	auipc	ra,0xfffff
    80001bbc:	7c0080e7          	jalr	1984(ra) # 80001378 <_Z8sem_openPP3SEMj>
}
    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00113423          	sd	ra,8(sp)
    80001bd8:	00813023          	sd	s0,0(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80001be0:	00853503          	ld	a0,8(a0)
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	808080e7          	jalr	-2040(ra) # 800013ec <_Z8sem_waitP3SEM>
}
    80001bec:	00813083          	ld	ra,8(sp)
    80001bf0:	00013403          	ld	s0,0(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	00813023          	sd	s0,0(sp)
    80001c08:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80001c0c:	00853503          	ld	a0,8(a0)
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	814080e7          	jalr	-2028(ra) # 80001424 <_Z10sem_signalP3SEM>
}
    80001c18:	00813083          	ld	ra,8(sp)
    80001c1c:	00013403          	ld	s0,0(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00813423          	sd	s0,8(sp)
    80001c30:	01010413          	addi	s0,sp,16
    return -1;
}
    80001c34:	fff00513          	li	a0,-1
    80001c38:	00813403          	ld	s0,8(sp)
    80001c3c:	01010113          	addi	sp,sp,16
    80001c40:	00008067          	ret

0000000080001c44 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00113423          	sd	ra,8(sp)
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	01010413          	addi	s0,sp,16
    return sem_trywait(this->myHandle);
    80001c54:	00853503          	ld	a0,8(a0)
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	804080e7          	jalr	-2044(ra) # 8000145c <_Z11sem_trywaitP3SEM>
}
    80001c60:	00813083          	ld	ra,8(sp)
    80001c64:	00013403          	ld	s0,0(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00813423          	sd	s0,8(sp)
    80001c78:	01010413          	addi	s0,sp,16
}
    80001c7c:	00813403          	ld	s0,8(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001c88:	fe010113          	addi	sp,sp,-32
    80001c8c:	00113c23          	sd	ra,24(sp)
    80001c90:	00813823          	sd	s0,16(sp)
    80001c94:	00913423          	sd	s1,8(sp)
    80001c98:	02010413          	addi	s0,sp,32
    80001c9c:	00050493          	mv	s1,a0
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	ec8080e7          	jalr	-312(ra) # 80001b68 <_ZN6ThreadC1Ev>
    80001ca8:	00008797          	auipc	a5,0x8
    80001cac:	6f078793          	addi	a5,a5,1776 # 8000a398 <_ZTV14PeriodicThread+0x10>
    80001cb0:	00f4b023          	sd	a5,0(s1)

}
    80001cb4:	01813083          	ld	ra,24(sp)
    80001cb8:	01013403          	ld	s0,16(sp)
    80001cbc:	00813483          	ld	s1,8(sp)
    80001cc0:	02010113          	addi	sp,sp,32
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN7Console4getcEv>:

char Console::getc() {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00113423          	sd	ra,8(sp)
    80001cd0:	00813023          	sd	s0,0(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    return ::getc();
    80001cd8:	fffff097          	auipc	ra,0xfffff
    80001cdc:	7f4080e7          	jalr	2036(ra) # 800014cc <_Z4getcv>
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00113423          	sd	ra,8(sp)
    80001cf8:	00813023          	sd	s0,0(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	800080e7          	jalr	-2048(ra) # 80001500 <_Z4putcc>
}
    80001d08:	00813083          	ld	ra,8(sp)
    80001d0c:	00013403          	ld	s0,0(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00813423          	sd	s0,8(sp)
    80001d20:	01010413          	addi	s0,sp,16
    80001d24:	00813403          	ld	s0,8(sp)
    80001d28:	01010113          	addi	sp,sp,16
    80001d2c:	00008067          	ret

0000000080001d30 <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate();

protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00813423          	sd	s0,8(sp)
    80001d38:	01010413          	addi	s0,sp,16
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00813423          	sd	s0,8(sp)
    80001d50:	01010413          	addi	s0,sp,16
    80001d54:	00008797          	auipc	a5,0x8
    80001d58:	64478793          	addi	a5,a5,1604 # 8000a398 <_ZTV14PeriodicThread+0x10>
    80001d5c:	00f53023          	sd	a5,0(a0)
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN14PeriodicThreadD0Ev>:
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	00813023          	sd	s0,0(sp)
    80001d78:	01010413          	addi	s0,sp,16
    80001d7c:	00008797          	auipc	a5,0x8
    80001d80:	61c78793          	addi	a5,a5,1564 # 8000a398 <_ZTV14PeriodicThread+0x10>
    80001d84:	00f53023          	sd	a5,0(a0)
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	c3c080e7          	jalr	-964(ra) # 800019c4 <_ZdlPv>
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"


void Riscv::popSppSpie() {
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00813423          	sd	s0,8(sp)
    80001da8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001dac:	10000793          	li	a5,256
    80001db0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80001db4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001db8:	10200073          	sret
}
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001dc8:	f3010113          	addi	sp,sp,-208
    80001dcc:	0c113423          	sd	ra,200(sp)
    80001dd0:	0c813023          	sd	s0,192(sp)
    80001dd4:	0a913c23          	sd	s1,184(sp)
    80001dd8:	0d010413          	addi	s0,sp,208
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ddc:	142027f3          	csrr	a5,scause
    80001de0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001de4:	fb843783          	ld	a5,-72(s0)
    uint64 volatile scause = r_scause();
    80001de8:	fcf43c23          	sd	a5,-40(s0)
    if (scause == 0x8000000000000009UL) {
    80001dec:	fd843703          	ld	a4,-40(s0)
    80001df0:	fff00793          	li	a5,-1
    80001df4:	03f79793          	slli	a5,a5,0x3f
    80001df8:	00978793          	addi	a5,a5,9
    80001dfc:	0af70063          	beq	a4,a5,80001e9c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        // console_handler from lib
        console_handler();
    } else if (scause == 0x8000000000000001UL) {
    80001e00:	fd843703          	ld	a4,-40(s0)
    80001e04:	fff00793          	li	a5,-1
    80001e08:	03f79793          	slli	a5,a5,0x3f
    80001e0c:	00178793          	addi	a5,a5,1
    80001e10:	08f70c63          	beq	a4,a5,80001ea8 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
        // timer
        mc_sip(SIP_SSIE);
    } else if (scause == 0x0000000000000008UL
    80001e14:	fd843703          	ld	a4,-40(s0)
               || scause == 0x0000000000000009UL) {
    80001e18:	00800793          	li	a5,8
    80001e1c:	00f70863          	beq	a4,a5,80001e2c <_ZN5Riscv20handleSupervisorTrapEv+0x64>
    80001e20:	fd843703          	ld	a4,-40(s0)
    80001e24:	00900793          	li	a5,9
    80001e28:	08f71663          	bne	a4,a5,80001eb4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e2c:	141027f3          	csrr	a5,sepc
    80001e30:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001e34:	fc843783          	ld	a5,-56(s0)
        // ecall from U or S
        uint64 volatile sepc = r_sepc() + 4;          // return pc
    80001e38:	00478793          	addi	a5,a5,4
    80001e3c:	f4f43023          	sd	a5,-192(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e40:	100027f3          	csrr	a5,sstatus
    80001e44:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001e48:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();        // sstatus
    80001e4c:	f4f43423          	sd	a5,-184(s0)
        uint64 volatile callCode;
        uint64 volatile arg1;
        uint64 volatile arg2;
        uint64 volatile arg3;
        __asm__ volatile("mv %[callCode], a0" : [callCode] "=r"(callCode));
    80001e50:	00050793          	mv	a5,a0
    80001e54:	f4f43823          	sd	a5,-176(s0)
        __asm__ volatile("mv %[arg1], a1" : [arg1] "=r"(arg1));
    80001e58:	00058793          	mv	a5,a1
    80001e5c:	f4f43c23          	sd	a5,-168(s0)
        __asm__ volatile("mv %[arg2], a2" : [arg2] "=r"(arg2));
    80001e60:	00060793          	mv	a5,a2
    80001e64:	f6f43023          	sd	a5,-160(s0)
        __asm__ volatile("mv %[arg3], a3" : [arg3] "=r"(arg3));
    80001e68:	00068793          	mv	a5,a3
    80001e6c:	f6f43423          	sd	a5,-152(s0)

        int volatile ret_val = 0;
    80001e70:	f2042e23          	sw	zero,-196(s0)
        switch (callCode) {
    80001e74:	f5043783          	ld	a5,-176(s0)
    80001e78:	04200713          	li	a4,66
    80001e7c:	0cf76063          	bltu	a4,a5,80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
    80001e80:	00279793          	slli	a5,a5,0x2
    80001e84:	00006717          	auipc	a4,0x6
    80001e88:	1e870713          	addi	a4,a4,488 # 8000806c <_ZZ16printIntegerMinemE6digits+0x4c>
    80001e8c:	00e787b3          	add	a5,a5,a4
    80001e90:	0007a783          	lw	a5,0(a5)
    80001e94:	00e787b3          	add	a5,a5,a4
    80001e98:	00078067          	jr	a5
        console_handler();
    80001e9c:	00006097          	auipc	ra,0x6
    80001ea0:	fb4080e7          	jalr	-76(ra) # 80007e50 <console_handler>
    80001ea4:	0a80006f          	j	80001f4c <_ZN5Riscv20handleSupervisorTrapEv+0x184>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001ea8:	00200793          	li	a5,2
    80001eac:	1447b073          	csrc	sip,a5
}
    80001eb0:	09c0006f          	j	80001f4c <_ZN5Riscv20handleSupervisorTrapEv+0x184>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001eb4:	141027f3          	csrr	a5,sepc
    80001eb8:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80001ebc:	fd043483          	ld	s1,-48(s0)
        w_sstatus(sstatus);
        w_sepc(sepc);

    } else {
        uint64 sepc = r_sepc();
        printStringMine("\nError: scause = ");
    80001ec0:	00006517          	auipc	a0,0x6
    80001ec4:	18850513          	addi	a0,a0,392 # 80008048 <_ZZ16printIntegerMinemE6digits+0x28>
    80001ec8:	fffff097          	auipc	ra,0xfffff
    80001ecc:	668080e7          	jalr	1640(ra) # 80001530 <_Z15printStringMinePKc>
        printIntegerMine(scause);
    80001ed0:	fd843503          	ld	a0,-40(s0)
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	6a0080e7          	jalr	1696(ra) # 80001574 <_Z16printIntegerMinem>
        printStringMine(" sepc = ");
    80001edc:	00006517          	auipc	a0,0x6
    80001ee0:	18450513          	addi	a0,a0,388 # 80008060 <_ZZ16printIntegerMinemE6digits+0x40>
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	64c080e7          	jalr	1612(ra) # 80001530 <_Z15printStringMinePKc>
        printIntegerMine(sepc);
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	684080e7          	jalr	1668(ra) # 80001574 <_Z16printIntegerMinem>
    printStringMine("\nTurning off KERNEL\n\n\n\n");
    80001ef8:	00006517          	auipc	a0,0x6
    80001efc:	13850513          	addi	a0,a0,312 # 80008030 <_ZZ16printIntegerMinemE6digits+0x10>
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	630080e7          	jalr	1584(ra) # 80001530 <_Z15printStringMinePKc>
    __asm__ volatile("li s0, 0x5555");
    80001f08:	00005437          	lui	s0,0x5
    80001f0c:	5554041b          	addiw	s0,s0,1365
    __asm__ volatile("li s1, 0x100000");
    80001f10:	001004b7          	lui	s1,0x100
    __asm__ volatile("sw s0, 0(s1)");
    80001f14:	0084a023          	sw	s0,0(s1) # 100000 <_entry-0x7ff00000>
}
    80001f18:	0340006f          	j	80001f4c <_ZN5Riscv20handleSupervisorTrapEv+0x184>
                auto volatile size = (size_t) arg1;
    80001f1c:	f5843783          	ld	a5,-168(s0) # 4f58 <_entry-0x7fffb0a8>
    80001f20:	f6f43823          	sd	a5,-144(s0)
                auto volatile ret_ptr = MemoryAllocator::k_mem_alloc(size);
    80001f24:	f7043503          	ld	a0,-144(s0)
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	59c080e7          	jalr	1436(ra) # 800024c4 <_ZN15MemoryAllocator11k_mem_allocEm>
    80001f30:	f6a43c23          	sd	a0,-136(s0)
                __asm__ volatile("mv a0, %[ret_ptr]" : : [ret_ptr]"r"(ret_ptr));
    80001f34:	f7843783          	ld	a5,-136(s0)
    80001f38:	00078513          	mv	a0,a5
        w_sstatus(sstatus);
    80001f3c:	f4843783          	ld	a5,-184(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f40:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001f44:	f4043783          	ld	a5,-192(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f48:	14179073          	csrw	sepc,a5
        Riscv::end_kernel();
    }
    80001f4c:	0c813083          	ld	ra,200(sp)
    80001f50:	0c013403          	ld	s0,192(sp)
    80001f54:	0b813483          	ld	s1,184(sp)
    80001f58:	0d010113          	addi	sp,sp,208
    80001f5c:	00008067          	ret
                auto volatile ptr = (void *) arg1;
    80001f60:	f5843783          	ld	a5,-168(s0)
    80001f64:	f8f43023          	sd	a5,-128(s0)
                ret_val = MemoryAllocator::k_mem_free(ptr);
    80001f68:	f8043503          	ld	a0,-128(s0)
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	64c080e7          	jalr	1612(ra) # 800025b8 <_ZN15MemoryAllocator10k_mem_freeEPv>
    80001f74:	f2a42e23          	sw	a0,-196(s0)
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    80001f78:	f3c42783          	lw	a5,-196(s0)
    80001f7c:	00078513          	mv	a0,a5
                break;
    80001f80:	fbdff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                auto volatile pTCB = (TCB **) arg1;
    80001f84:	f5843783          	ld	a5,-168(s0)
    80001f88:	f8f43423          	sd	a5,-120(s0)
                auto volatile body = (TCB::Body) arg2;
    80001f8c:	f6043783          	ld	a5,-160(s0)
    80001f90:	f8f43823          	sd	a5,-112(s0)
                auto volatile thread_arg = (void *) arg3;
    80001f94:	f6843783          	ld	a5,-152(s0)
    80001f98:	f8f43c23          	sd	a5,-104(s0)
                *pTCB = TCB::k_createThread(body, thread_arg);
    80001f9c:	f9043503          	ld	a0,-112(s0)
    80001fa0:	f9843583          	ld	a1,-104(s0)
    80001fa4:	f8843483          	ld	s1,-120(s0)
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	81c080e7          	jalr	-2020(ra) # 800017c4 <_ZN3TCB14k_createThreadEPFvPvES0_>
    80001fb0:	00a4b023          	sd	a0,0(s1)
                if (*pTCB == nullptr) ret_val = -1;
    80001fb4:	f8843783          	ld	a5,-120(s0)
    80001fb8:	0007b783          	ld	a5,0(a5)
    80001fbc:	00078863          	beqz	a5,80001fcc <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    80001fc0:	f3c42783          	lw	a5,-196(s0)
    80001fc4:	00078513          	mv	a0,a5
                break;
    80001fc8:	f75ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                if (*pTCB == nullptr) ret_val = -1;
    80001fcc:	fff00793          	li	a5,-1
    80001fd0:	f2f42e23          	sw	a5,-196(s0)
    80001fd4:	fedff06f          	j	80001fc0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
                TCB::k_thread_exit();
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	8dc080e7          	jalr	-1828(ra) # 800018b4 <_ZN3TCB13k_thread_exitEv>
                break;
    80001fe0:	f5dff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                TCB::k_dispatch();
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	770080e7          	jalr	1904(ra) # 80001754 <_ZN3TCB10k_dispatchEv>
                break;
    80001fec:	f51ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                auto pSEM = (SEM **) arg1;
    80001ff0:	f5843483          	ld	s1,-168(s0)
                auto init = (uint64) arg2;
    80001ff4:	f6043503          	ld	a0,-160(s0)
                if (*pSEM == nullptr) ret_val = -1;
    80001ff8:	0004b783          	ld	a5,0(s1)
    80001ffc:	00078e63          	beqz	a5,80002018 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                *pSEM = SEM::k_open(init);
    80002000:	00000097          	auipc	ra,0x0
    80002004:	0e4080e7          	jalr	228(ra) # 800020e4 <_ZN3SEM6k_openEm>
    80002008:	00a4b023          	sd	a0,0(s1)
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    8000200c:	f3c42783          	lw	a5,-196(s0)
    80002010:	00078513          	mv	a0,a5
                break;
    80002014:	f29ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                if (*pSEM == nullptr) ret_val = -1;
    80002018:	fff00793          	li	a5,-1
    8000201c:	f2f42e23          	sw	a5,-196(s0)
    80002020:	fe1ff06f          	j	80002000 <_ZN5Riscv20handleSupervisorTrapEv+0x238>
                auto pSEM = (SEM *) arg1;
    80002024:	f5843503          	ld	a0,-168(s0)
                ret_val = SEM::k_close(pSEM);
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	100080e7          	jalr	256(ra) # 80002128 <_ZN3SEM7k_closeEPS_>
    80002030:	f2a42e23          	sw	a0,-196(s0)
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    80002034:	f3c42783          	lw	a5,-196(s0)
    80002038:	00078513          	mv	a0,a5
                break;
    8000203c:	f01ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                auto volatile pSEM = (SEM *) arg1;
    80002040:	f5843783          	ld	a5,-168(s0)
    80002044:	faf43023          	sd	a5,-96(s0)
                ret_val = SEM::k_wait(pSEM);
    80002048:	fa043503          	ld	a0,-96(s0)
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	168080e7          	jalr	360(ra) # 800021b4 <_ZN3SEM6k_waitEPS_>
    80002054:	f2a42e23          	sw	a0,-196(s0)
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    80002058:	f3c42783          	lw	a5,-196(s0)
    8000205c:	00078513          	mv	a0,a5
                break;
    80002060:	eddff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                auto volatile pSEM = (SEM *) arg1;
    80002064:	f5843783          	ld	a5,-168(s0)
    80002068:	faf43423          	sd	a5,-88(s0)
                ret_val = SEM::k_signal(pSEM);
    8000206c:	fa843503          	ld	a0,-88(s0)
    80002070:	00000097          	auipc	ra,0x0
    80002074:	1f0080e7          	jalr	496(ra) # 80002260 <_ZN3SEM8k_signalEPS_>
    80002078:	f2a42e23          	sw	a0,-196(s0)
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    8000207c:	f3c42783          	lw	a5,-196(s0)
    80002080:	00078513          	mv	a0,a5
                break;
    80002084:	eb9ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                auto volatile pSEM = (SEM *) arg1;
    80002088:	f5843783          	ld	a5,-168(s0)
    8000208c:	faf43823          	sd	a5,-80(s0)
                ret_val = SEM::k_trywait(pSEM);
    80002090:	fb043503          	ld	a0,-80(s0)
    80002094:	00000097          	auipc	ra,0x0
    80002098:	264080e7          	jalr	612(ra) # 800022f8 <_ZN3SEM9k_trywaitEPS_>
    8000209c:	f2a42e23          	sw	a0,-196(s0)
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
    800020a0:	f3c42783          	lw	a5,-196(s0)
    800020a4:	00078513          	mv	a0,a5
                break;
    800020a8:	e95ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                volatile char result = __getc();
    800020ac:	00006097          	auipc	ra,0x6
    800020b0:	d6c080e7          	jalr	-660(ra) # 80007e18 <__getc>
    800020b4:	f2a40d23          	sb	a0,-198(s0)
                __asm__ volatile("mv a0, %[result]" : : [result]"r"(result));
    800020b8:	f3a44783          	lbu	a5,-198(s0)
    800020bc:	00078513          	mv	a0,a5
                break;
    800020c0:	e7dff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                volatile auto c = (char) arg1;
    800020c4:	f5843783          	ld	a5,-168(s0)
    800020c8:	0ff7f793          	andi	a5,a5,255
    800020cc:	f2f40da3          	sb	a5,-197(s0)
                __putc(c);
    800020d0:	f3b44503          	lbu	a0,-197(s0)
    800020d4:	0ff57513          	andi	a0,a0,255
    800020d8:	00006097          	auipc	ra,0x6
    800020dc:	d04080e7          	jalr	-764(ra) # 80007ddc <__putc>
                break;
    800020e0:	e5dff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x174>

00000000800020e4 <_ZN3SEM6k_openEm>:
#include "../h/sem.hpp"


SEM *SEM::k_open(uint64 init) {
    800020e4:	fe010113          	addi	sp,sp,-32
    800020e8:	00113c23          	sd	ra,24(sp)
    800020ec:	00813823          	sd	s0,16(sp)
    800020f0:	00913423          	sd	s1,8(sp)
    800020f4:	02010413          	addi	s0,sp,32
    800020f8:	00050493          	mv	s1,a0
#include "MemoryAllocator.hpp"

class SEM {
public:
    void *operator new(size_t size) {
        return MemoryAllocator::k_mem_alloc(size);
    800020fc:	01800513          	li	a0,24
    80002100:	00000097          	auipc	ra,0x0
    80002104:	3c4080e7          	jalr	964(ra) # 800024c4 <_ZN15MemoryAllocator11k_mem_allocEm>
    static int k_signal(SEM *sem);

    static int k_trywait(SEM *sem);

private:
    explicit SEM(uint64 init = 1) : val(init) {}
    80002108:	00953023          	sd	s1,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000210c:	00053423          	sd	zero,8(a0)
    80002110:	00053823          	sd	zero,16(a0)
    return new SEM(init);
}
    80002114:	01813083          	ld	ra,24(sp)
    80002118:	01013403          	ld	s0,16(sp)
    8000211c:	00813483          	ld	s1,8(sp)
    80002120:	02010113          	addi	sp,sp,32
    80002124:	00008067          	ret

0000000080002128 <_ZN3SEM7k_closeEPS_>:

int SEM::k_close(SEM *sem) {
    80002128:	fe010113          	addi	sp,sp,-32
    8000212c:	00113c23          	sd	ra,24(sp)
    80002130:	00813823          	sd	s0,16(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	01213023          	sd	s2,0(sp)
    8000213c:	02010413          	addi	s0,sp,32
    80002140:	00050493          	mv	s1,a0
    if (sem == nullptr) return -1; // Error: no semaphore
    80002144:	02051663          	bnez	a0,80002170 <_ZN3SEM7k_closeEPS_+0x48>
    80002148:	fff00513          	li	a0,-1
    8000214c:	0480006f          	j	80002194 <_ZN3SEM7k_closeEPS_+0x6c>
    T *removeFirst() {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80002150:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80002154:	00053903          	ld	s2,0(a0)
            MemoryAllocator::k_mem_free(memory);
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	460080e7          	jalr	1120(ra) # 800025b8 <_ZN15MemoryAllocator10k_mem_freeEPv>
        TCB::blocked = b;
    80002160:	02090823          	sb	zero,48(s2)
    while (sem->blockedList.peekFirst() != nullptr) {
        TCB *t = sem->blockedList.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    80002164:	00090513          	mv	a0,s2
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	27c080e7          	jalr	636(ra) # 800023e4 <_ZN9Scheduler3putEP3TCB>
        delete elem;
        return ret;
    }

    T *peekFirst() {
        if (!head) { return 0; }
    80002170:	0084b503          	ld	a0,8(s1)
    80002174:	00050e63          	beqz	a0,80002190 <_ZN3SEM7k_closeEPS_+0x68>
        return head->data;
    80002178:	00053783          	ld	a5,0(a0)
    while (sem->blockedList.peekFirst() != nullptr) {
    8000217c:	02078863          	beqz	a5,800021ac <_ZN3SEM7k_closeEPS_+0x84>
        head = head->next;
    80002180:	00853783          	ld	a5,8(a0)
    80002184:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80002188:	fc0796e3          	bnez	a5,80002154 <_ZN3SEM7k_closeEPS_+0x2c>
    8000218c:	fc5ff06f          	j	80002150 <_ZN3SEM7k_closeEPS_+0x28>
    }
    return 0;
    80002190:	00000513          	li	a0,0
}
    80002194:	01813083          	ld	ra,24(sp)
    80002198:	01013403          	ld	s0,16(sp)
    8000219c:	00813483          	ld	s1,8(sp)
    800021a0:	00013903          	ld	s2,0(sp)
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00008067          	ret
    return 0;
    800021ac:	00000513          	li	a0,0
    800021b0:	fe5ff06f          	j	80002194 <_ZN3SEM7k_closeEPS_+0x6c>

00000000800021b4 <_ZN3SEM6k_waitEPS_>:

int SEM::k_wait(SEM *sem) {
    if (sem == nullptr) return -1; // Error: no semaphore
    800021b4:	0a050263          	beqz	a0,80002258 <_ZN3SEM6k_waitEPS_+0xa4>
int SEM::k_wait(SEM *sem) {
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00113c23          	sd	ra,24(sp)
    800021c0:	00813823          	sd	s0,16(sp)
    800021c4:	00913423          	sd	s1,8(sp)
    800021c8:	01213023          	sd	s2,0(sp)
    800021cc:	02010413          	addi	s0,sp,32
    800021d0:	00050493          	mv	s1,a0
    if ((int) --sem->val < 0) {
    800021d4:	00053783          	ld	a5,0(a0)
    800021d8:	fff78793          	addi	a5,a5,-1
    800021dc:	00f53023          	sd	a5,0(a0)
    800021e0:	02079713          	slli	a4,a5,0x20
    800021e4:	02074063          	bltz	a4,80002204 <_ZN3SEM6k_waitEPS_+0x50>
        TCB::running->setBlocked(true);
        sem->blockedList.addLast(TCB::running);
        TCB::k_yield();
    }
    return 0;
    800021e8:	00000513          	li	a0,0
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	00013903          	ld	s2,0(sp)
    800021fc:	02010113          	addi	sp,sp,32
    80002200:	00008067          	ret
        TCB::running->setBlocked(true);
    80002204:	00008797          	auipc	a5,0x8
    80002208:	3c47b783          	ld	a5,964(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000220c:	0007b903          	ld	s2,0(a5)
    80002210:	00100793          	li	a5,1
    80002214:	02f90823          	sb	a5,48(s2)
            return MemoryAllocator::k_mem_alloc(size);
    80002218:	01000513          	li	a0,16
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	2a8080e7          	jalr	680(ra) # 800024c4 <_ZN15MemoryAllocator11k_mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002224:	01253023          	sd	s2,0(a0)
    80002228:	00053423          	sd	zero,8(a0)
        if (tail) {
    8000222c:	0104b783          	ld	a5,16(s1)
    80002230:	00078e63          	beqz	a5,8000224c <_ZN3SEM6k_waitEPS_+0x98>
            tail->next = elem;
    80002234:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002238:	00a4b823          	sd	a0,16(s1)
        TCB::k_yield();
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	490080e7          	jalr	1168(ra) # 800016cc <_ZN3TCB7k_yieldEv>
    return 0;
    80002244:	00000513          	li	a0,0
    80002248:	fa5ff06f          	j	800021ec <_ZN3SEM6k_waitEPS_+0x38>
            head = tail = elem;
    8000224c:	00a4b823          	sd	a0,16(s1)
    80002250:	00a4b423          	sd	a0,8(s1)
    80002254:	fe9ff06f          	j	8000223c <_ZN3SEM6k_waitEPS_+0x88>
    if (sem == nullptr) return -1; // Error: no semaphore
    80002258:	fff00513          	li	a0,-1
}
    8000225c:	00008067          	ret

0000000080002260 <_ZN3SEM8k_signalEPS_>:

int SEM::k_signal(SEM *sem) {
    if (sem == nullptr) return -1; // Error: no semaphore
    80002260:	08050863          	beqz	a0,800022f0 <_ZN3SEM8k_signalEPS_+0x90>
    80002264:	00050713          	mv	a4,a0
    if ((int) ++sem->val <= 0) {
    80002268:	00053783          	ld	a5,0(a0)
    8000226c:	00178793          	addi	a5,a5,1
    80002270:	00f53023          	sd	a5,0(a0)
    80002274:	0007879b          	sext.w	a5,a5
    80002278:	00f05663          	blez	a5,80002284 <_ZN3SEM8k_signalEPS_+0x24>
        TCB *t = sem->blockedList.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    }
    return 0;
    8000227c:	00000513          	li	a0,0
}
    80002280:	00008067          	ret
int SEM::k_signal(SEM *sem) {
    80002284:	fe010113          	addi	sp,sp,-32
    80002288:	00113c23          	sd	ra,24(sp)
    8000228c:	00813823          	sd	s0,16(sp)
    80002290:	00913423          	sd	s1,8(sp)
    80002294:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002298:	00853503          	ld	a0,8(a0)
    8000229c:	04050663          	beqz	a0,800022e8 <_ZN3SEM8k_signalEPS_+0x88>
        head = head->next;
    800022a0:	00853783          	ld	a5,8(a0)
    800022a4:	00f73423          	sd	a5,8(a4)
        if (!head) { tail = 0; }
    800022a8:	02078c63          	beqz	a5,800022e0 <_ZN3SEM8k_signalEPS_+0x80>
        T *ret = elem->data;
    800022ac:	00053483          	ld	s1,0(a0)
            MemoryAllocator::k_mem_free(memory);
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	308080e7          	jalr	776(ra) # 800025b8 <_ZN15MemoryAllocator10k_mem_freeEPv>
    800022b8:	02048823          	sb	zero,48(s1)
        Scheduler::put(t);
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	124080e7          	jalr	292(ra) # 800023e4 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800022c8:	00000513          	li	a0,0
}
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret
        if (!head) { tail = 0; }
    800022e0:	00073823          	sd	zero,16(a4)
    800022e4:	fc9ff06f          	j	800022ac <_ZN3SEM8k_signalEPS_+0x4c>
        if (!head) { return 0; }
    800022e8:	00050493          	mv	s1,a0
    800022ec:	fcdff06f          	j	800022b8 <_ZN3SEM8k_signalEPS_+0x58>
    if (sem == nullptr) return -1; // Error: no semaphore
    800022f0:	fff00513          	li	a0,-1
    800022f4:	00008067          	ret

00000000800022f8 <_ZN3SEM9k_trywaitEPS_>:

int SEM::k_trywait(SEM *sem) {
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    if (sem == nullptr) return -1; // Error: no semaphore
    80002304:	02050463          	beqz	a0,8000232c <_ZN3SEM9k_trywaitEPS_+0x34>
    if ((int) sem->val >= 1) {
    80002308:	00053783          	ld	a5,0(a0)
    8000230c:	0007871b          	sext.w	a4,a5
    80002310:	02e05263          	blez	a4,80002334 <_ZN3SEM9k_trywaitEPS_+0x3c>
        sem->val--;
    80002314:	fff78793          	addi	a5,a5,-1
    80002318:	00f53023          	sd	a5,0(a0)
        return 1;
    8000231c:	00100513          	li	a0,1
    } else return 0;
}
    80002320:	00813403          	ld	s0,8(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret
    if (sem == nullptr) return -1; // Error: no semaphore
    8000232c:	fff00513          	li	a0,-1
    80002330:	ff1ff06f          	j	80002320 <_ZN3SEM9k_trywaitEPS_+0x28>
    } else return 0;
    80002334:	00000513          	li	a0,0
    80002338:	fe9ff06f          	j	80002320 <_ZN3SEM9k_trywaitEPS_+0x28>

000000008000233c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    80002348:	00100793          	li	a5,1
    8000234c:	00f50863          	beq	a0,a5,8000235c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret
    8000235c:	000107b7          	lui	a5,0x10
    80002360:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002364:	fef596e3          	bne	a1,a5,80002350 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002368:	00008797          	auipc	a5,0x8
    8000236c:	2c878793          	addi	a5,a5,712 # 8000a630 <_ZN9Scheduler16readyThreadQueueE>
    80002370:	0007b023          	sd	zero,0(a5)
    80002374:	0007b423          	sd	zero,8(a5)
    80002378:	fd9ff06f          	j	80002350 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000237c <_ZN9Scheduler3getEv>:
{
    8000237c:	fe010113          	addi	sp,sp,-32
    80002380:	00113c23          	sd	ra,24(sp)
    80002384:	00813823          	sd	s0,16(sp)
    80002388:	00913423          	sd	s1,8(sp)
    8000238c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002390:	00008517          	auipc	a0,0x8
    80002394:	2a053503          	ld	a0,672(a0) # 8000a630 <_ZN9Scheduler16readyThreadQueueE>
    80002398:	04050263          	beqz	a0,800023dc <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000239c:	00853783          	ld	a5,8(a0)
    800023a0:	00008717          	auipc	a4,0x8
    800023a4:	28f73823          	sd	a5,656(a4) # 8000a630 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800023a8:	02078463          	beqz	a5,800023d0 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800023ac:	00053483          	ld	s1,0(a0)
            MemoryAllocator::k_mem_free(memory);
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	208080e7          	jalr	520(ra) # 800025b8 <_ZN15MemoryAllocator10k_mem_freeEPv>
}
    800023b8:	00048513          	mv	a0,s1
    800023bc:	01813083          	ld	ra,24(sp)
    800023c0:	01013403          	ld	s0,16(sp)
    800023c4:	00813483          	ld	s1,8(sp)
    800023c8:	02010113          	addi	sp,sp,32
    800023cc:	00008067          	ret
        if (!head) { tail = 0; }
    800023d0:	00008797          	auipc	a5,0x8
    800023d4:	2607b423          	sd	zero,616(a5) # 8000a638 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800023d8:	fd5ff06f          	j	800023ac <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800023dc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800023e0:	fd9ff06f          	j	800023b8 <_ZN9Scheduler3getEv+0x3c>

00000000800023e4 <_ZN9Scheduler3putEP3TCB>:
{
    800023e4:	fe010113          	addi	sp,sp,-32
    800023e8:	00113c23          	sd	ra,24(sp)
    800023ec:	00813823          	sd	s0,16(sp)
    800023f0:	00913423          	sd	s1,8(sp)
    800023f4:	02010413          	addi	s0,sp,32
    800023f8:	00050493          	mv	s1,a0
            return MemoryAllocator::k_mem_alloc(size);
    800023fc:	01000513          	li	a0,16
    80002400:	00000097          	auipc	ra,0x0
    80002404:	0c4080e7          	jalr	196(ra) # 800024c4 <_ZN15MemoryAllocator11k_mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002408:	00953023          	sd	s1,0(a0)
    8000240c:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002410:	00008797          	auipc	a5,0x8
    80002414:	2287b783          	ld	a5,552(a5) # 8000a638 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002418:	02078263          	beqz	a5,8000243c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000241c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002420:	00008797          	auipc	a5,0x8
    80002424:	20a7bc23          	sd	a0,536(a5) # 8000a638 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret
            head = tail = elem;
    8000243c:	00008797          	auipc	a5,0x8
    80002440:	1f478793          	addi	a5,a5,500 # 8000a630 <_ZN9Scheduler16readyThreadQueueE>
    80002444:	00a7b423          	sd	a0,8(a5)
    80002448:	00a7b023          	sd	a0,0(a5)
    8000244c:	fddff06f          	j	80002428 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002450 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00113423          	sd	ra,8(sp)
    80002458:	00813023          	sd	s0,0(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	000105b7          	lui	a1,0x10
    80002464:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002468:	00100513          	li	a0,1
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	ed0080e7          	jalr	-304(ra) # 8000233c <_Z41__static_initialization_and_destruction_0ii>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_ZN15MemoryAllocator8mem_initEv>:
// source: 2. zadatak, 2. kolokvijum, septembar 2015.
//         2. zadatak, 2. kolokvijum, april 2014.

MemoryAllocator::FreeMem *MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::mem_init() {
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00813423          	sd	s0,8(sp)
    8000248c:	01010413          	addi	s0,sp,16
    fmem_head = (FreeMem *) HEAP_START_ADDR;
    80002490:	00008797          	auipc	a5,0x8
    80002494:	1207b783          	ld	a5,288(a5) # 8000a5b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002498:	0007b703          	ld	a4,0(a5)
    8000249c:	00008797          	auipc	a5,0x8
    800024a0:	1a478793          	addi	a5,a5,420 # 8000a640 <_ZN15MemoryAllocator9fmem_headE>
    800024a4:	00e7b023          	sd	a4,0(a5)
    fmem_head->next = nullptr;
    800024a8:	00073023          	sd	zero,0(a4)
    fmem_head->size = (char*) HEAP_END_ADDR - (char*) HEAP_END_ADDR - sizeof(FreeMem);
    800024ac:	0007b783          	ld	a5,0(a5)
    800024b0:	ff000713          	li	a4,-16
    800024b4:	00e7b423          	sd	a4,8(a5)

}
    800024b8:	00813403          	ld	s0,8(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN15MemoryAllocator11k_mem_allocEm>:

void *MemoryAllocator::k_mem_alloc(size_t size) {
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00813423          	sd	s0,8(sp)
    800024cc:	01010413          	addi	s0,sp,16
    size_t adjusted_size = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    800024d0:	03f50713          	addi	a4,a0,63
    800024d4:	fc077713          	andi	a4,a4,-64
    FreeMem *prev = nullptr;
    FreeMem *curr = fmem_head;
    800024d8:	00008517          	auipc	a0,0x8
    800024dc:	16853503          	ld	a0,360(a0) # 8000a640 <_ZN15MemoryAllocator9fmem_headE>
    FreeMem *prev = nullptr;
    800024e0:	00000693          	li	a3,0
    while (curr != nullptr) {
    800024e4:	04050863          	beqz	a0,80002534 <_ZN15MemoryAllocator11k_mem_allocEm+0x70>
        if (curr->size >= adjusted_size) {
    800024e8:	00853783          	ld	a5,8(a0)
    800024ec:	00e7f863          	bgeu	a5,a4,800024fc <_ZN15MemoryAllocator11k_mem_allocEm+0x38>
                prev->next = curr->next;
            else
                fmem_head = curr->next;
            return (void *) ((char *) curr + sizeof(FreeMem));
        }
        prev = curr;
    800024f0:	00050693          	mv	a3,a0
        curr = curr->next;
    800024f4:	00053503          	ld	a0,0(a0)
    while (curr != nullptr) {
    800024f8:	fedff06f          	j	800024e4 <_ZN15MemoryAllocator11k_mem_allocEm+0x20>
            if (curr->size > adjusted_size) {
    800024fc:	02f77463          	bgeu	a4,a5,80002524 <_ZN15MemoryAllocator11k_mem_allocEm+0x60>
                auto newFree = (FreeMem *) ((char *) curr + adjusted_size + sizeof(FreeMem));
    80002500:	01070613          	addi	a2,a4,16
    80002504:	00c50633          	add	a2,a0,a2
                newFree->size = curr->size - adjusted_size - sizeof(FreeMem);
    80002508:	40e787b3          	sub	a5,a5,a4
    8000250c:	ff078793          	addi	a5,a5,-16
    80002510:	00f63423          	sd	a5,8(a2)
                newFree->next = curr->next;
    80002514:	00053783          	ld	a5,0(a0)
    80002518:	00f63023          	sd	a5,0(a2)
                curr->size = adjusted_size;
    8000251c:	00e53423          	sd	a4,8(a0)
                curr->next = newFree;
    80002520:	00c53023          	sd	a2,0(a0)
            if (prev != nullptr)
    80002524:	00068e63          	beqz	a3,80002540 <_ZN15MemoryAllocator11k_mem_allocEm+0x7c>
                prev->next = curr->next;
    80002528:	00053783          	ld	a5,0(a0)
    8000252c:	00f6b023          	sd	a5,0(a3)
            return (void *) ((char *) curr + sizeof(FreeMem));
    80002530:	01050513          	addi	a0,a0,16
    }
    return nullptr; // didn't find any block
}
    80002534:	00813403          	ld	s0,8(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret
                fmem_head = curr->next;
    80002540:	00053783          	ld	a5,0(a0)
    80002544:	00008717          	auipc	a4,0x8
    80002548:	0ef73e23          	sd	a5,252(a4) # 8000a640 <_ZN15MemoryAllocator9fmem_headE>
    8000254c:	fe5ff06f          	j	80002530 <_ZN15MemoryAllocator11k_mem_allocEm+0x6c>

0000000080002550 <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE>:
    tryToJoin(newSeg);
    tryToJoin(curr);
    return 0;
}
//  helper: try to join curr with curr->next free segment
int MemoryAllocator::tryToJoin(MemoryAllocator::FreeMem *curr) {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    8000255c:	04050663          	beqz	a0,800025a8 <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE+0x58>
    if (curr->next && (char*)curr + curr->size + sizeof(FreeMem) == (char*)(curr->next)) {
    80002560:	00053783          	ld	a5,0(a0)
    80002564:	04078663          	beqz	a5,800025b0 <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE+0x60>
    80002568:	00853683          	ld	a3,8(a0)
    8000256c:	01068713          	addi	a4,a3,16
    80002570:	00e50733          	add	a4,a0,a4
    80002574:	00e78a63          	beq	a5,a4,80002588 <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE+0x38>
        // remove the curr->next segment:
        curr->size += sizeof(FreeMem) + curr->next->size;
        curr->next = curr->next->next;
        return 1;
    } else {
        return 0;
    80002578:	00000513          	li	a0,0
    }
}
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret
        curr->size += sizeof(FreeMem) + curr->next->size;
    80002588:	0087b703          	ld	a4,8(a5)
    8000258c:	00e686b3          	add	a3,a3,a4
    80002590:	01068693          	addi	a3,a3,16
    80002594:	00d53423          	sd	a3,8(a0)
        curr->next = curr->next->next;
    80002598:	0007b783          	ld	a5,0(a5)
    8000259c:	00f53023          	sd	a5,0(a0)
        return 1;
    800025a0:	00100513          	li	a0,1
    800025a4:	fd9ff06f          	j	8000257c <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE+0x2c>
    if (!curr) return 0;
    800025a8:	00000513          	li	a0,0
    800025ac:	fd1ff06f          	j	8000257c <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE+0x2c>
        return 0;
    800025b0:	00000513          	li	a0,0
    800025b4:	fc9ff06f          	j	8000257c <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE+0x2c>

00000000800025b8 <_ZN15MemoryAllocator10k_mem_freeEPv>:
int MemoryAllocator::k_mem_free(void *ptr) {
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	02010413          	addi	s0,sp,32
    800025cc:	00050713          	mv	a4,a0
    if (!fmem_head || (char*)ptr < (char*)fmem_head)
    800025d0:	00008697          	auipc	a3,0x8
    800025d4:	0706b683          	ld	a3,112(a3) # 8000a640 <_ZN15MemoryAllocator9fmem_headE>
    800025d8:	06068663          	beqz	a3,80002644 <_ZN15MemoryAllocator10k_mem_freeEPv+0x8c>
    800025dc:	02d56463          	bltu	a0,a3,80002604 <_ZN15MemoryAllocator10k_mem_freeEPv+0x4c>
        for (curr = fmem_head; curr->next != nullptr && (char*)ptr > (char*)(curr->next); curr = curr->next);
    800025e0:	00068793          	mv	a5,a3
    800025e4:	00078493          	mv	s1,a5
    800025e8:	0007b783          	ld	a5,0(a5)
    800025ec:	00078463          	beqz	a5,800025f4 <_ZN15MemoryAllocator10k_mem_freeEPv+0x3c>
    800025f0:	fee7eae3          	bltu	a5,a4,800025e4 <_ZN15MemoryAllocator10k_mem_freeEPv+0x2c>
    auto* newSeg = (FreeMem*)((char*)ptr - sizeof(FreeMem));
    800025f4:	ff070513          	addi	a0,a4,-16
    if (curr) newSeg->next = curr->next;
    800025f8:	00048a63          	beqz	s1,8000260c <_ZN15MemoryAllocator10k_mem_freeEPv+0x54>
    800025fc:	fef73823          	sd	a5,-16(a4)
    80002600:	0100006f          	j	80002610 <_ZN15MemoryAllocator10k_mem_freeEPv+0x58>
    auto* newSeg = (FreeMem*)((char*)ptr - sizeof(FreeMem));
    80002604:	ff050513          	addi	a0,a0,-16
        curr = nullptr; // insert as first
    80002608:	00000493          	li	s1,0
    else newSeg->next = fmem_head;
    8000260c:	fed73823          	sd	a3,-16(a4)
    if (curr) curr->next = newSeg;
    80002610:	04048063          	beqz	s1,80002650 <_ZN15MemoryAllocator10k_mem_freeEPv+0x98>
    80002614:	00a4b023          	sd	a0,0(s1)
    tryToJoin(newSeg);
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	f38080e7          	jalr	-200(ra) # 80002550 <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE>
    tryToJoin(curr);
    80002620:	00048513          	mv	a0,s1
    80002624:	00000097          	auipc	ra,0x0
    80002628:	f2c080e7          	jalr	-212(ra) # 80002550 <_ZN15MemoryAllocator9tryToJoinEPNS_7FreeMemE>
}
    8000262c:	00000513          	li	a0,0
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	01013403          	ld	s0,16(sp)
    80002638:	00813483          	ld	s1,8(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret
    auto* newSeg = (FreeMem*)((char*)ptr - sizeof(FreeMem));
    80002644:	ff050513          	addi	a0,a0,-16
        curr = nullptr; // insert as first
    80002648:	00068493          	mv	s1,a3
    8000264c:	fc1ff06f          	j	8000260c <_ZN15MemoryAllocator10k_mem_freeEPv+0x54>
    else fmem_head = newSeg;
    80002650:	00008797          	auipc	a5,0x8
    80002654:	fea7b823          	sd	a0,-16(a5) # 8000a640 <_ZN15MemoryAllocator9fmem_headE>
    80002658:	fc1ff06f          	j	80002618 <_ZN15MemoryAllocator10k_mem_freeEPv+0x60>

000000008000265c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000265c:	fe010113          	addi	sp,sp,-32
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	01213023          	sd	s2,0(sp)
    80002670:	02010413          	addi	s0,sp,32
    80002674:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002678:	00000913          	li	s2,0
    8000267c:	00c0006f          	j	80002688 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	ccc080e7          	jalr	-820(ra) # 8000134c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	e44080e7          	jalr	-444(ra) # 800014cc <_Z4getcv>
    80002690:	0005059b          	sext.w	a1,a0
    80002694:	01b00793          	li	a5,27
    80002698:	02f58a63          	beq	a1,a5,800026cc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000269c:	0084b503          	ld	a0,8(s1)
    800026a0:	00003097          	auipc	ra,0x3
    800026a4:	3f4080e7          	jalr	1012(ra) # 80005a94 <_ZN6Buffer3putEi>
        i++;
    800026a8:	0019071b          	addiw	a4,s2,1
    800026ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800026b0:	0004a683          	lw	a3,0(s1)
    800026b4:	0026979b          	slliw	a5,a3,0x2
    800026b8:	00d787bb          	addw	a5,a5,a3
    800026bc:	0017979b          	slliw	a5,a5,0x1
    800026c0:	02f767bb          	remw	a5,a4,a5
    800026c4:	fc0792e3          	bnez	a5,80002688 <_ZL16producerKeyboardPv+0x2c>
    800026c8:	fb9ff06f          	j	80002680 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800026cc:	00100793          	li	a5,1
    800026d0:	00008717          	auipc	a4,0x8
    800026d4:	f6f72c23          	sw	a5,-136(a4) # 8000a648 <_ZL9threadEnd>
    data->buffer->put('!');
    800026d8:	02100593          	li	a1,33
    800026dc:	0084b503          	ld	a0,8(s1)
    800026e0:	00003097          	auipc	ra,0x3
    800026e4:	3b4080e7          	jalr	948(ra) # 80005a94 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800026e8:	0104b503          	ld	a0,16(s1)
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	d38080e7          	jalr	-712(ra) # 80001424 <_Z10sem_signalP3SEM>
}
    800026f4:	01813083          	ld	ra,24(sp)
    800026f8:	01013403          	ld	s0,16(sp)
    800026fc:	00813483          	ld	s1,8(sp)
    80002700:	00013903          	ld	s2,0(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret

000000008000270c <_ZL8producerPv>:

static void producer(void *arg) {
    8000270c:	fe010113          	addi	sp,sp,-32
    80002710:	00113c23          	sd	ra,24(sp)
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00913423          	sd	s1,8(sp)
    8000271c:	01213023          	sd	s2,0(sp)
    80002720:	02010413          	addi	s0,sp,32
    80002724:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002728:	00000913          	li	s2,0
    8000272c:	00c0006f          	j	80002738 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	c1c080e7          	jalr	-996(ra) # 8000134c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002738:	00008797          	auipc	a5,0x8
    8000273c:	f107a783          	lw	a5,-240(a5) # 8000a648 <_ZL9threadEnd>
    80002740:	02079e63          	bnez	a5,8000277c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002744:	0004a583          	lw	a1,0(s1)
    80002748:	0305859b          	addiw	a1,a1,48
    8000274c:	0084b503          	ld	a0,8(s1)
    80002750:	00003097          	auipc	ra,0x3
    80002754:	344080e7          	jalr	836(ra) # 80005a94 <_ZN6Buffer3putEi>
        i++;
    80002758:	0019071b          	addiw	a4,s2,1
    8000275c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002760:	0004a683          	lw	a3,0(s1)
    80002764:	0026979b          	slliw	a5,a3,0x2
    80002768:	00d787bb          	addw	a5,a5,a3
    8000276c:	0017979b          	slliw	a5,a5,0x1
    80002770:	02f767bb          	remw	a5,a4,a5
    80002774:	fc0792e3          	bnez	a5,80002738 <_ZL8producerPv+0x2c>
    80002778:	fb9ff06f          	j	80002730 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000277c:	0104b503          	ld	a0,16(s1)
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	ca4080e7          	jalr	-860(ra) # 80001424 <_Z10sem_signalP3SEM>
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	00013903          	ld	s2,0(sp)
    80002798:	02010113          	addi	sp,sp,32
    8000279c:	00008067          	ret

00000000800027a0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800027a0:	fd010113          	addi	sp,sp,-48
    800027a4:	02113423          	sd	ra,40(sp)
    800027a8:	02813023          	sd	s0,32(sp)
    800027ac:	00913c23          	sd	s1,24(sp)
    800027b0:	01213823          	sd	s2,16(sp)
    800027b4:	01313423          	sd	s3,8(sp)
    800027b8:	03010413          	addi	s0,sp,48
    800027bc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800027c0:	00000993          	li	s3,0
    800027c4:	01c0006f          	j	800027e0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	b84080e7          	jalr	-1148(ra) # 8000134c <_Z15thread_dispatchv>
    800027d0:	0500006f          	j	80002820 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800027d4:	00a00513          	li	a0,10
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	d28080e7          	jalr	-728(ra) # 80001500 <_Z4putcc>
    while (!threadEnd) {
    800027e0:	00008797          	auipc	a5,0x8
    800027e4:	e687a783          	lw	a5,-408(a5) # 8000a648 <_ZL9threadEnd>
    800027e8:	06079063          	bnez	a5,80002848 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800027ec:	00893503          	ld	a0,8(s2)
    800027f0:	00003097          	auipc	ra,0x3
    800027f4:	334080e7          	jalr	820(ra) # 80005b24 <_ZN6Buffer3getEv>
        i++;
    800027f8:	0019849b          	addiw	s1,s3,1
    800027fc:	0004899b          	sext.w	s3,s1
        putc(key);
    80002800:	0ff57513          	andi	a0,a0,255
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	cfc080e7          	jalr	-772(ra) # 80001500 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000280c:	00092703          	lw	a4,0(s2)
    80002810:	0027179b          	slliw	a5,a4,0x2
    80002814:	00e787bb          	addw	a5,a5,a4
    80002818:	02f4e7bb          	remw	a5,s1,a5
    8000281c:	fa0786e3          	beqz	a5,800027c8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002820:	05000793          	li	a5,80
    80002824:	02f4e4bb          	remw	s1,s1,a5
    80002828:	fa049ce3          	bnez	s1,800027e0 <_ZL8consumerPv+0x40>
    8000282c:	fa9ff06f          	j	800027d4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002830:	00893503          	ld	a0,8(s2)
    80002834:	00003097          	auipc	ra,0x3
    80002838:	2f0080e7          	jalr	752(ra) # 80005b24 <_ZN6Buffer3getEv>
        putc(key);
    8000283c:	0ff57513          	andi	a0,a0,255
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	cc0080e7          	jalr	-832(ra) # 80001500 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002848:	00893503          	ld	a0,8(s2)
    8000284c:	00003097          	auipc	ra,0x3
    80002850:	364080e7          	jalr	868(ra) # 80005bb0 <_ZN6Buffer6getCntEv>
    80002854:	fca04ee3          	bgtz	a0,80002830 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002858:	01093503          	ld	a0,16(s2)
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	bc8080e7          	jalr	-1080(ra) # 80001424 <_Z10sem_signalP3SEM>
}
    80002864:	02813083          	ld	ra,40(sp)
    80002868:	02013403          	ld	s0,32(sp)
    8000286c:	01813483          	ld	s1,24(sp)
    80002870:	01013903          	ld	s2,16(sp)
    80002874:	00813983          	ld	s3,8(sp)
    80002878:	03010113          	addi	sp,sp,48
    8000287c:	00008067          	ret

0000000080002880 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002880:	f9010113          	addi	sp,sp,-112
    80002884:	06113423          	sd	ra,104(sp)
    80002888:	06813023          	sd	s0,96(sp)
    8000288c:	04913c23          	sd	s1,88(sp)
    80002890:	05213823          	sd	s2,80(sp)
    80002894:	05313423          	sd	s3,72(sp)
    80002898:	05413023          	sd	s4,64(sp)
    8000289c:	03513c23          	sd	s5,56(sp)
    800028a0:	03613823          	sd	s6,48(sp)
    800028a4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800028a8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800028ac:	00006517          	auipc	a0,0x6
    800028b0:	8cc50513          	addi	a0,a0,-1844 # 80008178 <_ZZ16printIntegerMinemE6digits+0x158>
    800028b4:	00002097          	auipc	ra,0x2
    800028b8:	220080e7          	jalr	544(ra) # 80004ad4 <_Z11printStringPKc>
    getString(input, 30);
    800028bc:	01e00593          	li	a1,30
    800028c0:	fa040493          	addi	s1,s0,-96
    800028c4:	00048513          	mv	a0,s1
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	294080e7          	jalr	660(ra) # 80004b5c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800028d0:	00048513          	mv	a0,s1
    800028d4:	00002097          	auipc	ra,0x2
    800028d8:	360080e7          	jalr	864(ra) # 80004c34 <_Z11stringToIntPKc>
    800028dc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800028e0:	00006517          	auipc	a0,0x6
    800028e4:	8b850513          	addi	a0,a0,-1864 # 80008198 <_ZZ16printIntegerMinemE6digits+0x178>
    800028e8:	00002097          	auipc	ra,0x2
    800028ec:	1ec080e7          	jalr	492(ra) # 80004ad4 <_Z11printStringPKc>
    getString(input, 30);
    800028f0:	01e00593          	li	a1,30
    800028f4:	00048513          	mv	a0,s1
    800028f8:	00002097          	auipc	ra,0x2
    800028fc:	264080e7          	jalr	612(ra) # 80004b5c <_Z9getStringPci>
    n = stringToInt(input);
    80002900:	00048513          	mv	a0,s1
    80002904:	00002097          	auipc	ra,0x2
    80002908:	330080e7          	jalr	816(ra) # 80004c34 <_Z11stringToIntPKc>
    8000290c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002910:	00006517          	auipc	a0,0x6
    80002914:	8a850513          	addi	a0,a0,-1880 # 800081b8 <_ZZ16printIntegerMinemE6digits+0x198>
    80002918:	00002097          	auipc	ra,0x2
    8000291c:	1bc080e7          	jalr	444(ra) # 80004ad4 <_Z11printStringPKc>
    80002920:	00000613          	li	a2,0
    80002924:	00a00593          	li	a1,10
    80002928:	00090513          	mv	a0,s2
    8000292c:	00002097          	auipc	ra,0x2
    80002930:	358080e7          	jalr	856(ra) # 80004c84 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002934:	00006517          	auipc	a0,0x6
    80002938:	89c50513          	addi	a0,a0,-1892 # 800081d0 <_ZZ16printIntegerMinemE6digits+0x1b0>
    8000293c:	00002097          	auipc	ra,0x2
    80002940:	198080e7          	jalr	408(ra) # 80004ad4 <_Z11printStringPKc>
    80002944:	00000613          	li	a2,0
    80002948:	00a00593          	li	a1,10
    8000294c:	00048513          	mv	a0,s1
    80002950:	00002097          	auipc	ra,0x2
    80002954:	334080e7          	jalr	820(ra) # 80004c84 <_Z8printIntiii>
    printString(".\n");
    80002958:	00006517          	auipc	a0,0x6
    8000295c:	89050513          	addi	a0,a0,-1904 # 800081e8 <_ZZ16printIntegerMinemE6digits+0x1c8>
    80002960:	00002097          	auipc	ra,0x2
    80002964:	174080e7          	jalr	372(ra) # 80004ad4 <_Z11printStringPKc>
    if(threadNum > n) {
    80002968:	0324c463          	blt	s1,s2,80002990 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000296c:	03205c63          	blez	s2,800029a4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002970:	03800513          	li	a0,56
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	028080e7          	jalr	40(ra) # 8000199c <_Znwm>
    8000297c:	00050a13          	mv	s4,a0
    80002980:	00048593          	mv	a1,s1
    80002984:	00003097          	auipc	ra,0x3
    80002988:	074080e7          	jalr	116(ra) # 800059f8 <_ZN6BufferC1Ei>
    8000298c:	0300006f          	j	800029bc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002990:	00006517          	auipc	a0,0x6
    80002994:	86050513          	addi	a0,a0,-1952 # 800081f0 <_ZZ16printIntegerMinemE6digits+0x1d0>
    80002998:	00002097          	auipc	ra,0x2
    8000299c:	13c080e7          	jalr	316(ra) # 80004ad4 <_Z11printStringPKc>
        return;
    800029a0:	0140006f          	j	800029b4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800029a4:	00006517          	auipc	a0,0x6
    800029a8:	88c50513          	addi	a0,a0,-1908 # 80008230 <_ZZ16printIntegerMinemE6digits+0x210>
    800029ac:	00002097          	auipc	ra,0x2
    800029b0:	128080e7          	jalr	296(ra) # 80004ad4 <_Z11printStringPKc>
        return;
    800029b4:	000b0113          	mv	sp,s6
    800029b8:	1500006f          	j	80002b08 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800029bc:	00000593          	li	a1,0
    800029c0:	00008517          	auipc	a0,0x8
    800029c4:	c9050513          	addi	a0,a0,-880 # 8000a650 <_ZL10waitForAll>
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	9b0080e7          	jalr	-1616(ra) # 80001378 <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    800029d0:	00391793          	slli	a5,s2,0x3
    800029d4:	00f78793          	addi	a5,a5,15
    800029d8:	ff07f793          	andi	a5,a5,-16
    800029dc:	40f10133          	sub	sp,sp,a5
    800029e0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800029e4:	0019071b          	addiw	a4,s2,1
    800029e8:	00171793          	slli	a5,a4,0x1
    800029ec:	00e787b3          	add	a5,a5,a4
    800029f0:	00379793          	slli	a5,a5,0x3
    800029f4:	00f78793          	addi	a5,a5,15
    800029f8:	ff07f793          	andi	a5,a5,-16
    800029fc:	40f10133          	sub	sp,sp,a5
    80002a00:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002a04:	00191613          	slli	a2,s2,0x1
    80002a08:	012607b3          	add	a5,a2,s2
    80002a0c:	00379793          	slli	a5,a5,0x3
    80002a10:	00f987b3          	add	a5,s3,a5
    80002a14:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002a18:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002a1c:	00008717          	auipc	a4,0x8
    80002a20:	c3473703          	ld	a4,-972(a4) # 8000a650 <_ZL10waitForAll>
    80002a24:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002a28:	00078613          	mv	a2,a5
    80002a2c:	00000597          	auipc	a1,0x0
    80002a30:	d7458593          	addi	a1,a1,-652 # 800027a0 <_ZL8consumerPv>
    80002a34:	f9840513          	addi	a0,s0,-104
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	8a0080e7          	jalr	-1888(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002a40:	00000493          	li	s1,0
    80002a44:	0280006f          	j	80002a6c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002a48:	00000597          	auipc	a1,0x0
    80002a4c:	c1458593          	addi	a1,a1,-1004 # 8000265c <_ZL16producerKeyboardPv>
                      data + i);
    80002a50:	00179613          	slli	a2,a5,0x1
    80002a54:	00f60633          	add	a2,a2,a5
    80002a58:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002a5c:	00c98633          	add	a2,s3,a2
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	878080e7          	jalr	-1928(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002a68:	0014849b          	addiw	s1,s1,1
    80002a6c:	0524d263          	bge	s1,s2,80002ab0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002a70:	00149793          	slli	a5,s1,0x1
    80002a74:	009787b3          	add	a5,a5,s1
    80002a78:	00379793          	slli	a5,a5,0x3
    80002a7c:	00f987b3          	add	a5,s3,a5
    80002a80:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002a84:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002a88:	00008717          	auipc	a4,0x8
    80002a8c:	bc873703          	ld	a4,-1080(a4) # 8000a650 <_ZL10waitForAll>
    80002a90:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002a94:	00048793          	mv	a5,s1
    80002a98:	00349513          	slli	a0,s1,0x3
    80002a9c:	00aa8533          	add	a0,s5,a0
    80002aa0:	fa9054e3          	blez	s1,80002a48 <_Z22producerConsumer_C_APIv+0x1c8>
    80002aa4:	00000597          	auipc	a1,0x0
    80002aa8:	c6858593          	addi	a1,a1,-920 # 8000270c <_ZL8producerPv>
    80002aac:	fa5ff06f          	j	80002a50 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	89c080e7          	jalr	-1892(ra) # 8000134c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002ab8:	00000493          	li	s1,0
    80002abc:	00994e63          	blt	s2,s1,80002ad8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002ac0:	00008517          	auipc	a0,0x8
    80002ac4:	b9053503          	ld	a0,-1136(a0) # 8000a650 <_ZL10waitForAll>
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	924080e7          	jalr	-1756(ra) # 800013ec <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    80002ad0:	0014849b          	addiw	s1,s1,1
    80002ad4:	fe9ff06f          	j	80002abc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002ad8:	00008517          	auipc	a0,0x8
    80002adc:	b7853503          	ld	a0,-1160(a0) # 8000a650 <_ZL10waitForAll>
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	8d4080e7          	jalr	-1836(ra) # 800013b4 <_Z9sem_closeP3SEM>
    delete buffer;
    80002ae8:	000a0e63          	beqz	s4,80002b04 <_Z22producerConsumer_C_APIv+0x284>
    80002aec:	000a0513          	mv	a0,s4
    80002af0:	00003097          	auipc	ra,0x3
    80002af4:	148080e7          	jalr	328(ra) # 80005c38 <_ZN6BufferD1Ev>
    80002af8:	000a0513          	mv	a0,s4
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	ec8080e7          	jalr	-312(ra) # 800019c4 <_ZdlPv>
    80002b04:	000b0113          	mv	sp,s6

}
    80002b08:	f9040113          	addi	sp,s0,-112
    80002b0c:	06813083          	ld	ra,104(sp)
    80002b10:	06013403          	ld	s0,96(sp)
    80002b14:	05813483          	ld	s1,88(sp)
    80002b18:	05013903          	ld	s2,80(sp)
    80002b1c:	04813983          	ld	s3,72(sp)
    80002b20:	04013a03          	ld	s4,64(sp)
    80002b24:	03813a83          	ld	s5,56(sp)
    80002b28:	03013b03          	ld	s6,48(sp)
    80002b2c:	07010113          	addi	sp,sp,112
    80002b30:	00008067          	ret
    80002b34:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002b38:	000a0513          	mv	a0,s4
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	e88080e7          	jalr	-376(ra) # 800019c4 <_ZdlPv>
    80002b44:	00048513          	mv	a0,s1
    80002b48:	00009097          	auipc	ra,0x9
    80002b4c:	c20080e7          	jalr	-992(ra) # 8000b768 <_Unwind_Resume>

0000000080002b50 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00113c23          	sd	ra,24(sp)
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	01213023          	sd	s2,0(sp)
    80002b64:	02010413          	addi	s0,sp,32
    80002b68:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002b6c:	00100793          	li	a5,1
    80002b70:	02a7f863          	bgeu	a5,a0,80002ba0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002b74:	00a00793          	li	a5,10
    80002b78:	02f577b3          	remu	a5,a0,a5
    80002b7c:	02078e63          	beqz	a5,80002bb8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002b80:	fff48513          	addi	a0,s1,-1
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	fcc080e7          	jalr	-52(ra) # 80002b50 <_ZL9fibonaccim>
    80002b8c:	00050913          	mv	s2,a0
    80002b90:	ffe48513          	addi	a0,s1,-2
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	fbc080e7          	jalr	-68(ra) # 80002b50 <_ZL9fibonaccim>
    80002b9c:	00a90533          	add	a0,s2,a0
}
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	01013403          	ld	s0,16(sp)
    80002ba8:	00813483          	ld	s1,8(sp)
    80002bac:	00013903          	ld	s2,0(sp)
    80002bb0:	02010113          	addi	sp,sp,32
    80002bb4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002bb8:	ffffe097          	auipc	ra,0xffffe
    80002bbc:	794080e7          	jalr	1940(ra) # 8000134c <_Z15thread_dispatchv>
    80002bc0:	fc1ff06f          	j	80002b80 <_ZL9fibonaccim+0x30>

0000000080002bc4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002bc4:	fe010113          	addi	sp,sp,-32
    80002bc8:	00113c23          	sd	ra,24(sp)
    80002bcc:	00813823          	sd	s0,16(sp)
    80002bd0:	00913423          	sd	s1,8(sp)
    80002bd4:	01213023          	sd	s2,0(sp)
    80002bd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002bdc:	00000913          	li	s2,0
    80002be0:	0380006f          	j	80002c18 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002be4:	ffffe097          	auipc	ra,0xffffe
    80002be8:	768080e7          	jalr	1896(ra) # 8000134c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002bec:	00148493          	addi	s1,s1,1
    80002bf0:	000027b7          	lui	a5,0x2
    80002bf4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002bf8:	0097ee63          	bltu	a5,s1,80002c14 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bfc:	00000713          	li	a4,0
    80002c00:	000077b7          	lui	a5,0x7
    80002c04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c08:	fce7eee3          	bltu	a5,a4,80002be4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002c0c:	00170713          	addi	a4,a4,1
    80002c10:	ff1ff06f          	j	80002c00 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002c14:	00190913          	addi	s2,s2,1
    80002c18:	00900793          	li	a5,9
    80002c1c:	0527e063          	bltu	a5,s2,80002c5c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002c20:	00005517          	auipc	a0,0x5
    80002c24:	64050513          	addi	a0,a0,1600 # 80008260 <_ZZ16printIntegerMinemE6digits+0x240>
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	eac080e7          	jalr	-340(ra) # 80004ad4 <_Z11printStringPKc>
    80002c30:	00000613          	li	a2,0
    80002c34:	00a00593          	li	a1,10
    80002c38:	0009051b          	sext.w	a0,s2
    80002c3c:	00002097          	auipc	ra,0x2
    80002c40:	048080e7          	jalr	72(ra) # 80004c84 <_Z8printIntiii>
    80002c44:	00006517          	auipc	a0,0x6
    80002c48:	89c50513          	addi	a0,a0,-1892 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002c4c:	00002097          	auipc	ra,0x2
    80002c50:	e88080e7          	jalr	-376(ra) # 80004ad4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c54:	00000493          	li	s1,0
    80002c58:	f99ff06f          	j	80002bf0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002c5c:	00005517          	auipc	a0,0x5
    80002c60:	60c50513          	addi	a0,a0,1548 # 80008268 <_ZZ16printIntegerMinemE6digits+0x248>
    80002c64:	00002097          	auipc	ra,0x2
    80002c68:	e70080e7          	jalr	-400(ra) # 80004ad4 <_Z11printStringPKc>
    finishedA = true;
    80002c6c:	00100793          	li	a5,1
    80002c70:	00008717          	auipc	a4,0x8
    80002c74:	9ef70423          	sb	a5,-1560(a4) # 8000a658 <_ZL9finishedA>
}
    80002c78:	01813083          	ld	ra,24(sp)
    80002c7c:	01013403          	ld	s0,16(sp)
    80002c80:	00813483          	ld	s1,8(sp)
    80002c84:	00013903          	ld	s2,0(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00008067          	ret

0000000080002c90 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002c90:	fe010113          	addi	sp,sp,-32
    80002c94:	00113c23          	sd	ra,24(sp)
    80002c98:	00813823          	sd	s0,16(sp)
    80002c9c:	00913423          	sd	s1,8(sp)
    80002ca0:	01213023          	sd	s2,0(sp)
    80002ca4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ca8:	00000913          	li	s2,0
    80002cac:	0380006f          	j	80002ce4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	69c080e7          	jalr	1692(ra) # 8000134c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002cb8:	00148493          	addi	s1,s1,1
    80002cbc:	000027b7          	lui	a5,0x2
    80002cc0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cc4:	0097ee63          	bltu	a5,s1,80002ce0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cc8:	00000713          	li	a4,0
    80002ccc:	000077b7          	lui	a5,0x7
    80002cd0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002cd4:	fce7eee3          	bltu	a5,a4,80002cb0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002cd8:	00170713          	addi	a4,a4,1
    80002cdc:	ff1ff06f          	j	80002ccc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002ce0:	00190913          	addi	s2,s2,1
    80002ce4:	00f00793          	li	a5,15
    80002ce8:	0527e063          	bltu	a5,s2,80002d28 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002cec:	00005517          	auipc	a0,0x5
    80002cf0:	58c50513          	addi	a0,a0,1420 # 80008278 <_ZZ16printIntegerMinemE6digits+0x258>
    80002cf4:	00002097          	auipc	ra,0x2
    80002cf8:	de0080e7          	jalr	-544(ra) # 80004ad4 <_Z11printStringPKc>
    80002cfc:	00000613          	li	a2,0
    80002d00:	00a00593          	li	a1,10
    80002d04:	0009051b          	sext.w	a0,s2
    80002d08:	00002097          	auipc	ra,0x2
    80002d0c:	f7c080e7          	jalr	-132(ra) # 80004c84 <_Z8printIntiii>
    80002d10:	00005517          	auipc	a0,0x5
    80002d14:	7d050513          	addi	a0,a0,2000 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002d18:	00002097          	auipc	ra,0x2
    80002d1c:	dbc080e7          	jalr	-580(ra) # 80004ad4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d20:	00000493          	li	s1,0
    80002d24:	f99ff06f          	j	80002cbc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002d28:	00005517          	auipc	a0,0x5
    80002d2c:	55850513          	addi	a0,a0,1368 # 80008280 <_ZZ16printIntegerMinemE6digits+0x260>
    80002d30:	00002097          	auipc	ra,0x2
    80002d34:	da4080e7          	jalr	-604(ra) # 80004ad4 <_Z11printStringPKc>
    finishedB = true;
    80002d38:	00100793          	li	a5,1
    80002d3c:	00008717          	auipc	a4,0x8
    80002d40:	90f70ea3          	sb	a5,-1763(a4) # 8000a659 <_ZL9finishedB>
    thread_dispatch();
    80002d44:	ffffe097          	auipc	ra,0xffffe
    80002d48:	608080e7          	jalr	1544(ra) # 8000134c <_Z15thread_dispatchv>
}
    80002d4c:	01813083          	ld	ra,24(sp)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	00813483          	ld	s1,8(sp)
    80002d58:	00013903          	ld	s2,0(sp)
    80002d5c:	02010113          	addi	sp,sp,32
    80002d60:	00008067          	ret

0000000080002d64 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002d64:	fe010113          	addi	sp,sp,-32
    80002d68:	00113c23          	sd	ra,24(sp)
    80002d6c:	00813823          	sd	s0,16(sp)
    80002d70:	00913423          	sd	s1,8(sp)
    80002d74:	01213023          	sd	s2,0(sp)
    80002d78:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002d7c:	00000493          	li	s1,0
    80002d80:	0400006f          	j	80002dc0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d84:	00005517          	auipc	a0,0x5
    80002d88:	50c50513          	addi	a0,a0,1292 # 80008290 <_ZZ16printIntegerMinemE6digits+0x270>
    80002d8c:	00002097          	auipc	ra,0x2
    80002d90:	d48080e7          	jalr	-696(ra) # 80004ad4 <_Z11printStringPKc>
    80002d94:	00000613          	li	a2,0
    80002d98:	00a00593          	li	a1,10
    80002d9c:	00048513          	mv	a0,s1
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	ee4080e7          	jalr	-284(ra) # 80004c84 <_Z8printIntiii>
    80002da8:	00005517          	auipc	a0,0x5
    80002dac:	73850513          	addi	a0,a0,1848 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002db0:	00002097          	auipc	ra,0x2
    80002db4:	d24080e7          	jalr	-732(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002db8:	0014849b          	addiw	s1,s1,1
    80002dbc:	0ff4f493          	andi	s1,s1,255
    80002dc0:	00200793          	li	a5,2
    80002dc4:	fc97f0e3          	bgeu	a5,s1,80002d84 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002dc8:	00005517          	auipc	a0,0x5
    80002dcc:	4d050513          	addi	a0,a0,1232 # 80008298 <_ZZ16printIntegerMinemE6digits+0x278>
    80002dd0:	00002097          	auipc	ra,0x2
    80002dd4:	d04080e7          	jalr	-764(ra) # 80004ad4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002dd8:	00700313          	li	t1,7
    thread_dispatch();
    80002ddc:	ffffe097          	auipc	ra,0xffffe
    80002de0:	570080e7          	jalr	1392(ra) # 8000134c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002de4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002de8:	00005517          	auipc	a0,0x5
    80002dec:	4c050513          	addi	a0,a0,1216 # 800082a8 <_ZZ16printIntegerMinemE6digits+0x288>
    80002df0:	00002097          	auipc	ra,0x2
    80002df4:	ce4080e7          	jalr	-796(ra) # 80004ad4 <_Z11printStringPKc>
    80002df8:	00000613          	li	a2,0
    80002dfc:	00a00593          	li	a1,10
    80002e00:	0009051b          	sext.w	a0,s2
    80002e04:	00002097          	auipc	ra,0x2
    80002e08:	e80080e7          	jalr	-384(ra) # 80004c84 <_Z8printIntiii>
    80002e0c:	00005517          	auipc	a0,0x5
    80002e10:	6d450513          	addi	a0,a0,1748 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002e14:	00002097          	auipc	ra,0x2
    80002e18:	cc0080e7          	jalr	-832(ra) # 80004ad4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002e1c:	00c00513          	li	a0,12
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	d30080e7          	jalr	-720(ra) # 80002b50 <_ZL9fibonaccim>
    80002e28:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002e2c:	00005517          	auipc	a0,0x5
    80002e30:	48450513          	addi	a0,a0,1156 # 800082b0 <_ZZ16printIntegerMinemE6digits+0x290>
    80002e34:	00002097          	auipc	ra,0x2
    80002e38:	ca0080e7          	jalr	-864(ra) # 80004ad4 <_Z11printStringPKc>
    80002e3c:	00000613          	li	a2,0
    80002e40:	00a00593          	li	a1,10
    80002e44:	0009051b          	sext.w	a0,s2
    80002e48:	00002097          	auipc	ra,0x2
    80002e4c:	e3c080e7          	jalr	-452(ra) # 80004c84 <_Z8printIntiii>
    80002e50:	00005517          	auipc	a0,0x5
    80002e54:	69050513          	addi	a0,a0,1680 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002e58:	00002097          	auipc	ra,0x2
    80002e5c:	c7c080e7          	jalr	-900(ra) # 80004ad4 <_Z11printStringPKc>
    80002e60:	0400006f          	j	80002ea0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002e64:	00005517          	auipc	a0,0x5
    80002e68:	42c50513          	addi	a0,a0,1068 # 80008290 <_ZZ16printIntegerMinemE6digits+0x270>
    80002e6c:	00002097          	auipc	ra,0x2
    80002e70:	c68080e7          	jalr	-920(ra) # 80004ad4 <_Z11printStringPKc>
    80002e74:	00000613          	li	a2,0
    80002e78:	00a00593          	li	a1,10
    80002e7c:	00048513          	mv	a0,s1
    80002e80:	00002097          	auipc	ra,0x2
    80002e84:	e04080e7          	jalr	-508(ra) # 80004c84 <_Z8printIntiii>
    80002e88:	00005517          	auipc	a0,0x5
    80002e8c:	65850513          	addi	a0,a0,1624 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002e90:	00002097          	auipc	ra,0x2
    80002e94:	c44080e7          	jalr	-956(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e98:	0014849b          	addiw	s1,s1,1
    80002e9c:	0ff4f493          	andi	s1,s1,255
    80002ea0:	00500793          	li	a5,5
    80002ea4:	fc97f0e3          	bgeu	a5,s1,80002e64 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002ea8:	00005517          	auipc	a0,0x5
    80002eac:	3c050513          	addi	a0,a0,960 # 80008268 <_ZZ16printIntegerMinemE6digits+0x248>
    80002eb0:	00002097          	auipc	ra,0x2
    80002eb4:	c24080e7          	jalr	-988(ra) # 80004ad4 <_Z11printStringPKc>
    finishedC = true;
    80002eb8:	00100793          	li	a5,1
    80002ebc:	00007717          	auipc	a4,0x7
    80002ec0:	78f70f23          	sb	a5,1950(a4) # 8000a65a <_ZL9finishedC>
    thread_dispatch();
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	488080e7          	jalr	1160(ra) # 8000134c <_Z15thread_dispatchv>
}
    80002ecc:	01813083          	ld	ra,24(sp)
    80002ed0:	01013403          	ld	s0,16(sp)
    80002ed4:	00813483          	ld	s1,8(sp)
    80002ed8:	00013903          	ld	s2,0(sp)
    80002edc:	02010113          	addi	sp,sp,32
    80002ee0:	00008067          	ret

0000000080002ee4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002ee4:	fe010113          	addi	sp,sp,-32
    80002ee8:	00113c23          	sd	ra,24(sp)
    80002eec:	00813823          	sd	s0,16(sp)
    80002ef0:	00913423          	sd	s1,8(sp)
    80002ef4:	01213023          	sd	s2,0(sp)
    80002ef8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002efc:	00a00493          	li	s1,10
    80002f00:	0400006f          	j	80002f40 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002f04:	00005517          	auipc	a0,0x5
    80002f08:	3bc50513          	addi	a0,a0,956 # 800082c0 <_ZZ16printIntegerMinemE6digits+0x2a0>
    80002f0c:	00002097          	auipc	ra,0x2
    80002f10:	bc8080e7          	jalr	-1080(ra) # 80004ad4 <_Z11printStringPKc>
    80002f14:	00000613          	li	a2,0
    80002f18:	00a00593          	li	a1,10
    80002f1c:	00048513          	mv	a0,s1
    80002f20:	00002097          	auipc	ra,0x2
    80002f24:	d64080e7          	jalr	-668(ra) # 80004c84 <_Z8printIntiii>
    80002f28:	00005517          	auipc	a0,0x5
    80002f2c:	5b850513          	addi	a0,a0,1464 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002f30:	00002097          	auipc	ra,0x2
    80002f34:	ba4080e7          	jalr	-1116(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002f38:	0014849b          	addiw	s1,s1,1
    80002f3c:	0ff4f493          	andi	s1,s1,255
    80002f40:	00c00793          	li	a5,12
    80002f44:	fc97f0e3          	bgeu	a5,s1,80002f04 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002f48:	00005517          	auipc	a0,0x5
    80002f4c:	38050513          	addi	a0,a0,896 # 800082c8 <_ZZ16printIntegerMinemE6digits+0x2a8>
    80002f50:	00002097          	auipc	ra,0x2
    80002f54:	b84080e7          	jalr	-1148(ra) # 80004ad4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002f58:	00500313          	li	t1,5
    thread_dispatch();
    80002f5c:	ffffe097          	auipc	ra,0xffffe
    80002f60:	3f0080e7          	jalr	1008(ra) # 8000134c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002f64:	01000513          	li	a0,16
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	be8080e7          	jalr	-1048(ra) # 80002b50 <_ZL9fibonaccim>
    80002f70:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002f74:	00005517          	auipc	a0,0x5
    80002f78:	36450513          	addi	a0,a0,868 # 800082d8 <_ZZ16printIntegerMinemE6digits+0x2b8>
    80002f7c:	00002097          	auipc	ra,0x2
    80002f80:	b58080e7          	jalr	-1192(ra) # 80004ad4 <_Z11printStringPKc>
    80002f84:	00000613          	li	a2,0
    80002f88:	00a00593          	li	a1,10
    80002f8c:	0009051b          	sext.w	a0,s2
    80002f90:	00002097          	auipc	ra,0x2
    80002f94:	cf4080e7          	jalr	-780(ra) # 80004c84 <_Z8printIntiii>
    80002f98:	00005517          	auipc	a0,0x5
    80002f9c:	54850513          	addi	a0,a0,1352 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002fa0:	00002097          	auipc	ra,0x2
    80002fa4:	b34080e7          	jalr	-1228(ra) # 80004ad4 <_Z11printStringPKc>
    80002fa8:	0400006f          	j	80002fe8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002fac:	00005517          	auipc	a0,0x5
    80002fb0:	31450513          	addi	a0,a0,788 # 800082c0 <_ZZ16printIntegerMinemE6digits+0x2a0>
    80002fb4:	00002097          	auipc	ra,0x2
    80002fb8:	b20080e7          	jalr	-1248(ra) # 80004ad4 <_Z11printStringPKc>
    80002fbc:	00000613          	li	a2,0
    80002fc0:	00a00593          	li	a1,10
    80002fc4:	00048513          	mv	a0,s1
    80002fc8:	00002097          	auipc	ra,0x2
    80002fcc:	cbc080e7          	jalr	-836(ra) # 80004c84 <_Z8printIntiii>
    80002fd0:	00005517          	auipc	a0,0x5
    80002fd4:	51050513          	addi	a0,a0,1296 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80002fd8:	00002097          	auipc	ra,0x2
    80002fdc:	afc080e7          	jalr	-1284(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002fe0:	0014849b          	addiw	s1,s1,1
    80002fe4:	0ff4f493          	andi	s1,s1,255
    80002fe8:	00f00793          	li	a5,15
    80002fec:	fc97f0e3          	bgeu	a5,s1,80002fac <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002ff0:	00005517          	auipc	a0,0x5
    80002ff4:	2f850513          	addi	a0,a0,760 # 800082e8 <_ZZ16printIntegerMinemE6digits+0x2c8>
    80002ff8:	00002097          	auipc	ra,0x2
    80002ffc:	adc080e7          	jalr	-1316(ra) # 80004ad4 <_Z11printStringPKc>
    finishedD = true;
    80003000:	00100793          	li	a5,1
    80003004:	00007717          	auipc	a4,0x7
    80003008:	64f70ba3          	sb	a5,1623(a4) # 8000a65b <_ZL9finishedD>
    thread_dispatch();
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	340080e7          	jalr	832(ra) # 8000134c <_Z15thread_dispatchv>
}
    80003014:	01813083          	ld	ra,24(sp)
    80003018:	01013403          	ld	s0,16(sp)
    8000301c:	00813483          	ld	s1,8(sp)
    80003020:	00013903          	ld	s2,0(sp)
    80003024:	02010113          	addi	sp,sp,32
    80003028:	00008067          	ret

000000008000302c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000302c:	fc010113          	addi	sp,sp,-64
    80003030:	02113c23          	sd	ra,56(sp)
    80003034:	02813823          	sd	s0,48(sp)
    80003038:	02913423          	sd	s1,40(sp)
    8000303c:	03213023          	sd	s2,32(sp)
    80003040:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003044:	02000513          	li	a0,32
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	954080e7          	jalr	-1708(ra) # 8000199c <_Znwm>
    80003050:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	b14080e7          	jalr	-1260(ra) # 80001b68 <_ZN6ThreadC1Ev>
    8000305c:	00007797          	auipc	a5,0x7
    80003060:	3b478793          	addi	a5,a5,948 # 8000a410 <_ZTV7WorkerA+0x10>
    80003064:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003068:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000306c:	00005517          	auipc	a0,0x5
    80003070:	28c50513          	addi	a0,a0,652 # 800082f8 <_ZZ16printIntegerMinemE6digits+0x2d8>
    80003074:	00002097          	auipc	ra,0x2
    80003078:	a60080e7          	jalr	-1440(ra) # 80004ad4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000307c:	02000513          	li	a0,32
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	91c080e7          	jalr	-1764(ra) # 8000199c <_Znwm>
    80003088:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	adc080e7          	jalr	-1316(ra) # 80001b68 <_ZN6ThreadC1Ev>
    80003094:	00007797          	auipc	a5,0x7
    80003098:	3a478793          	addi	a5,a5,932 # 8000a438 <_ZTV7WorkerB+0x10>
    8000309c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800030a0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800030a4:	00005517          	auipc	a0,0x5
    800030a8:	26c50513          	addi	a0,a0,620 # 80008310 <_ZZ16printIntegerMinemE6digits+0x2f0>
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	a28080e7          	jalr	-1496(ra) # 80004ad4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800030b4:	02000513          	li	a0,32
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	8e4080e7          	jalr	-1820(ra) # 8000199c <_Znwm>
    800030c0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800030c4:	fffff097          	auipc	ra,0xfffff
    800030c8:	aa4080e7          	jalr	-1372(ra) # 80001b68 <_ZN6ThreadC1Ev>
    800030cc:	00007797          	auipc	a5,0x7
    800030d0:	39478793          	addi	a5,a5,916 # 8000a460 <_ZTV7WorkerC+0x10>
    800030d4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800030d8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800030dc:	00005517          	auipc	a0,0x5
    800030e0:	24c50513          	addi	a0,a0,588 # 80008328 <_ZZ16printIntegerMinemE6digits+0x308>
    800030e4:	00002097          	auipc	ra,0x2
    800030e8:	9f0080e7          	jalr	-1552(ra) # 80004ad4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800030ec:	02000513          	li	a0,32
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	8ac080e7          	jalr	-1876(ra) # 8000199c <_Znwm>
    800030f8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	a6c080e7          	jalr	-1428(ra) # 80001b68 <_ZN6ThreadC1Ev>
    80003104:	00007797          	auipc	a5,0x7
    80003108:	38478793          	addi	a5,a5,900 # 8000a488 <_ZTV7WorkerD+0x10>
    8000310c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003110:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003114:	00005517          	auipc	a0,0x5
    80003118:	22c50513          	addi	a0,a0,556 # 80008340 <_ZZ16printIntegerMinemE6digits+0x320>
    8000311c:	00002097          	auipc	ra,0x2
    80003120:	9b8080e7          	jalr	-1608(ra) # 80004ad4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003124:	00000493          	li	s1,0
    80003128:	00300793          	li	a5,3
    8000312c:	0297c663          	blt	a5,s1,80003158 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003130:	00349793          	slli	a5,s1,0x3
    80003134:	fe040713          	addi	a4,s0,-32
    80003138:	00f707b3          	add	a5,a4,a5
    8000313c:	fe07b503          	ld	a0,-32(a5)
    80003140:	fffff097          	auipc	ra,0xfffff
    80003144:	990080e7          	jalr	-1648(ra) # 80001ad0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003148:	0014849b          	addiw	s1,s1,1
    8000314c:	fddff06f          	j	80003128 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	9d4080e7          	jalr	-1580(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003158:	00007797          	auipc	a5,0x7
    8000315c:	5007c783          	lbu	a5,1280(a5) # 8000a658 <_ZL9finishedA>
    80003160:	fe0788e3          	beqz	a5,80003150 <_Z20Threads_CPP_API_testv+0x124>
    80003164:	00007797          	auipc	a5,0x7
    80003168:	4f57c783          	lbu	a5,1269(a5) # 8000a659 <_ZL9finishedB>
    8000316c:	fe0782e3          	beqz	a5,80003150 <_Z20Threads_CPP_API_testv+0x124>
    80003170:	00007797          	auipc	a5,0x7
    80003174:	4ea7c783          	lbu	a5,1258(a5) # 8000a65a <_ZL9finishedC>
    80003178:	fc078ce3          	beqz	a5,80003150 <_Z20Threads_CPP_API_testv+0x124>
    8000317c:	00007797          	auipc	a5,0x7
    80003180:	4df7c783          	lbu	a5,1247(a5) # 8000a65b <_ZL9finishedD>
    80003184:	fc0786e3          	beqz	a5,80003150 <_Z20Threads_CPP_API_testv+0x124>
    80003188:	fc040493          	addi	s1,s0,-64
    8000318c:	0080006f          	j	80003194 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003190:	00848493          	addi	s1,s1,8
    80003194:	fe040793          	addi	a5,s0,-32
    80003198:	08f48663          	beq	s1,a5,80003224 <_Z20Threads_CPP_API_testv+0x1f8>
    8000319c:	0004b503          	ld	a0,0(s1)
    800031a0:	fe0508e3          	beqz	a0,80003190 <_Z20Threads_CPP_API_testv+0x164>
    800031a4:	00053783          	ld	a5,0(a0)
    800031a8:	0087b783          	ld	a5,8(a5)
    800031ac:	000780e7          	jalr	a5
    800031b0:	fe1ff06f          	j	80003190 <_Z20Threads_CPP_API_testv+0x164>
    800031b4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800031b8:	00048513          	mv	a0,s1
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	808080e7          	jalr	-2040(ra) # 800019c4 <_ZdlPv>
    800031c4:	00090513          	mv	a0,s2
    800031c8:	00008097          	auipc	ra,0x8
    800031cc:	5a0080e7          	jalr	1440(ra) # 8000b768 <_Unwind_Resume>
    800031d0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800031d4:	00048513          	mv	a0,s1
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	7ec080e7          	jalr	2028(ra) # 800019c4 <_ZdlPv>
    800031e0:	00090513          	mv	a0,s2
    800031e4:	00008097          	auipc	ra,0x8
    800031e8:	584080e7          	jalr	1412(ra) # 8000b768 <_Unwind_Resume>
    800031ec:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800031f0:	00048513          	mv	a0,s1
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	7d0080e7          	jalr	2000(ra) # 800019c4 <_ZdlPv>
    800031fc:	00090513          	mv	a0,s2
    80003200:	00008097          	auipc	ra,0x8
    80003204:	568080e7          	jalr	1384(ra) # 8000b768 <_Unwind_Resume>
    80003208:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000320c:	00048513          	mv	a0,s1
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	7b4080e7          	jalr	1972(ra) # 800019c4 <_ZdlPv>
    80003218:	00090513          	mv	a0,s2
    8000321c:	00008097          	auipc	ra,0x8
    80003220:	54c080e7          	jalr	1356(ra) # 8000b768 <_Unwind_Resume>
}
    80003224:	03813083          	ld	ra,56(sp)
    80003228:	03013403          	ld	s0,48(sp)
    8000322c:	02813483          	ld	s1,40(sp)
    80003230:	02013903          	ld	s2,32(sp)
    80003234:	04010113          	addi	sp,sp,64
    80003238:	00008067          	ret

000000008000323c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000323c:	ff010113          	addi	sp,sp,-16
    80003240:	00113423          	sd	ra,8(sp)
    80003244:	00813023          	sd	s0,0(sp)
    80003248:	01010413          	addi	s0,sp,16
    8000324c:	00007797          	auipc	a5,0x7
    80003250:	1c478793          	addi	a5,a5,452 # 8000a410 <_ZTV7WorkerA+0x10>
    80003254:	00f53023          	sd	a5,0(a0)
    80003258:	ffffe097          	auipc	ra,0xffffe
    8000325c:	6c0080e7          	jalr	1728(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003260:	00813083          	ld	ra,8(sp)
    80003264:	00013403          	ld	s0,0(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret

0000000080003270 <_ZN7WorkerAD0Ev>:
    80003270:	fe010113          	addi	sp,sp,-32
    80003274:	00113c23          	sd	ra,24(sp)
    80003278:	00813823          	sd	s0,16(sp)
    8000327c:	00913423          	sd	s1,8(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	00050493          	mv	s1,a0
    80003288:	00007797          	auipc	a5,0x7
    8000328c:	18878793          	addi	a5,a5,392 # 8000a410 <_ZTV7WorkerA+0x10>
    80003290:	00f53023          	sd	a5,0(a0)
    80003294:	ffffe097          	auipc	ra,0xffffe
    80003298:	684080e7          	jalr	1668(ra) # 80001918 <_ZN6ThreadD1Ev>
    8000329c:	00048513          	mv	a0,s1
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	724080e7          	jalr	1828(ra) # 800019c4 <_ZdlPv>
    800032a8:	01813083          	ld	ra,24(sp)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	00813483          	ld	s1,8(sp)
    800032b4:	02010113          	addi	sp,sp,32
    800032b8:	00008067          	ret

00000000800032bc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00113423          	sd	ra,8(sp)
    800032c4:	00813023          	sd	s0,0(sp)
    800032c8:	01010413          	addi	s0,sp,16
    800032cc:	00007797          	auipc	a5,0x7
    800032d0:	16c78793          	addi	a5,a5,364 # 8000a438 <_ZTV7WorkerB+0x10>
    800032d4:	00f53023          	sd	a5,0(a0)
    800032d8:	ffffe097          	auipc	ra,0xffffe
    800032dc:	640080e7          	jalr	1600(ra) # 80001918 <_ZN6ThreadD1Ev>
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00013403          	ld	s0,0(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZN7WorkerBD0Ev>:
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	00050493          	mv	s1,a0
    80003308:	00007797          	auipc	a5,0x7
    8000330c:	13078793          	addi	a5,a5,304 # 8000a438 <_ZTV7WorkerB+0x10>
    80003310:	00f53023          	sd	a5,0(a0)
    80003314:	ffffe097          	auipc	ra,0xffffe
    80003318:	604080e7          	jalr	1540(ra) # 80001918 <_ZN6ThreadD1Ev>
    8000331c:	00048513          	mv	a0,s1
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	6a4080e7          	jalr	1700(ra) # 800019c4 <_ZdlPv>
    80003328:	01813083          	ld	ra,24(sp)
    8000332c:	01013403          	ld	s0,16(sp)
    80003330:	00813483          	ld	s1,8(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret

000000008000333c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00113423          	sd	ra,8(sp)
    80003344:	00813023          	sd	s0,0(sp)
    80003348:	01010413          	addi	s0,sp,16
    8000334c:	00007797          	auipc	a5,0x7
    80003350:	11478793          	addi	a5,a5,276 # 8000a460 <_ZTV7WorkerC+0x10>
    80003354:	00f53023          	sd	a5,0(a0)
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	5c0080e7          	jalr	1472(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003360:	00813083          	ld	ra,8(sp)
    80003364:	00013403          	ld	s0,0(sp)
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00008067          	ret

0000000080003370 <_ZN7WorkerCD0Ev>:
    80003370:	fe010113          	addi	sp,sp,-32
    80003374:	00113c23          	sd	ra,24(sp)
    80003378:	00813823          	sd	s0,16(sp)
    8000337c:	00913423          	sd	s1,8(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	00050493          	mv	s1,a0
    80003388:	00007797          	auipc	a5,0x7
    8000338c:	0d878793          	addi	a5,a5,216 # 8000a460 <_ZTV7WorkerC+0x10>
    80003390:	00f53023          	sd	a5,0(a0)
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	584080e7          	jalr	1412(ra) # 80001918 <_ZN6ThreadD1Ev>
    8000339c:	00048513          	mv	a0,s1
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	624080e7          	jalr	1572(ra) # 800019c4 <_ZdlPv>
    800033a8:	01813083          	ld	ra,24(sp)
    800033ac:	01013403          	ld	s0,16(sp)
    800033b0:	00813483          	ld	s1,8(sp)
    800033b4:	02010113          	addi	sp,sp,32
    800033b8:	00008067          	ret

00000000800033bc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00113423          	sd	ra,8(sp)
    800033c4:	00813023          	sd	s0,0(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	00007797          	auipc	a5,0x7
    800033d0:	0bc78793          	addi	a5,a5,188 # 8000a488 <_ZTV7WorkerD+0x10>
    800033d4:	00f53023          	sd	a5,0(a0)
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	540080e7          	jalr	1344(ra) # 80001918 <_ZN6ThreadD1Ev>
    800033e0:	00813083          	ld	ra,8(sp)
    800033e4:	00013403          	ld	s0,0(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret

00000000800033f0 <_ZN7WorkerDD0Ev>:
    800033f0:	fe010113          	addi	sp,sp,-32
    800033f4:	00113c23          	sd	ra,24(sp)
    800033f8:	00813823          	sd	s0,16(sp)
    800033fc:	00913423          	sd	s1,8(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	00050493          	mv	s1,a0
    80003408:	00007797          	auipc	a5,0x7
    8000340c:	08078793          	addi	a5,a5,128 # 8000a488 <_ZTV7WorkerD+0x10>
    80003410:	00f53023          	sd	a5,0(a0)
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	504080e7          	jalr	1284(ra) # 80001918 <_ZN6ThreadD1Ev>
    8000341c:	00048513          	mv	a0,s1
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	5a4080e7          	jalr	1444(ra) # 800019c4 <_ZdlPv>
    80003428:	01813083          	ld	ra,24(sp)
    8000342c:	01013403          	ld	s0,16(sp)
    80003430:	00813483          	ld	s1,8(sp)
    80003434:	02010113          	addi	sp,sp,32
    80003438:	00008067          	ret

000000008000343c <_ZN7WorkerA3runEv>:
    void run() override {
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00113423          	sd	ra,8(sp)
    80003444:	00813023          	sd	s0,0(sp)
    80003448:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000344c:	00000593          	li	a1,0
    80003450:	fffff097          	auipc	ra,0xfffff
    80003454:	774080e7          	jalr	1908(ra) # 80002bc4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003458:	00813083          	ld	ra,8(sp)
    8000345c:	00013403          	ld	s0,0(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret

0000000080003468 <_ZN7WorkerB3runEv>:
    void run() override {
    80003468:	ff010113          	addi	sp,sp,-16
    8000346c:	00113423          	sd	ra,8(sp)
    80003470:	00813023          	sd	s0,0(sp)
    80003474:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003478:	00000593          	li	a1,0
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	814080e7          	jalr	-2028(ra) # 80002c90 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003484:	00813083          	ld	ra,8(sp)
    80003488:	00013403          	ld	s0,0(sp)
    8000348c:	01010113          	addi	sp,sp,16
    80003490:	00008067          	ret

0000000080003494 <_ZN7WorkerC3runEv>:
    void run() override {
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00113423          	sd	ra,8(sp)
    8000349c:	00813023          	sd	s0,0(sp)
    800034a0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800034a4:	00000593          	li	a1,0
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	8bc080e7          	jalr	-1860(ra) # 80002d64 <_ZN7WorkerC11workerBodyCEPv>
    }
    800034b0:	00813083          	ld	ra,8(sp)
    800034b4:	00013403          	ld	s0,0(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <_ZN7WorkerD3runEv>:
    void run() override {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00113423          	sd	ra,8(sp)
    800034c8:	00813023          	sd	s0,0(sp)
    800034cc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800034d0:	00000593          	li	a1,0
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	a10080e7          	jalr	-1520(ra) # 80002ee4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret

00000000800034ec <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800034ec:	f8010113          	addi	sp,sp,-128
    800034f0:	06113c23          	sd	ra,120(sp)
    800034f4:	06813823          	sd	s0,112(sp)
    800034f8:	06913423          	sd	s1,104(sp)
    800034fc:	07213023          	sd	s2,96(sp)
    80003500:	05313c23          	sd	s3,88(sp)
    80003504:	05413823          	sd	s4,80(sp)
    80003508:	05513423          	sd	s5,72(sp)
    8000350c:	05613023          	sd	s6,64(sp)
    80003510:	03713c23          	sd	s7,56(sp)
    80003514:	03813823          	sd	s8,48(sp)
    80003518:	03913423          	sd	s9,40(sp)
    8000351c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003520:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003524:	00005517          	auipc	a0,0x5
    80003528:	c5450513          	addi	a0,a0,-940 # 80008178 <_ZZ16printIntegerMinemE6digits+0x158>
    8000352c:	00001097          	auipc	ra,0x1
    80003530:	5a8080e7          	jalr	1448(ra) # 80004ad4 <_Z11printStringPKc>
    getString(input, 30);
    80003534:	01e00593          	li	a1,30
    80003538:	f8040493          	addi	s1,s0,-128
    8000353c:	00048513          	mv	a0,s1
    80003540:	00001097          	auipc	ra,0x1
    80003544:	61c080e7          	jalr	1564(ra) # 80004b5c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003548:	00048513          	mv	a0,s1
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	6e8080e7          	jalr	1768(ra) # 80004c34 <_Z11stringToIntPKc>
    80003554:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003558:	00005517          	auipc	a0,0x5
    8000355c:	c4050513          	addi	a0,a0,-960 # 80008198 <_ZZ16printIntegerMinemE6digits+0x178>
    80003560:	00001097          	auipc	ra,0x1
    80003564:	574080e7          	jalr	1396(ra) # 80004ad4 <_Z11printStringPKc>
    getString(input, 30);
    80003568:	01e00593          	li	a1,30
    8000356c:	00048513          	mv	a0,s1
    80003570:	00001097          	auipc	ra,0x1
    80003574:	5ec080e7          	jalr	1516(ra) # 80004b5c <_Z9getStringPci>
    n = stringToInt(input);
    80003578:	00048513          	mv	a0,s1
    8000357c:	00001097          	auipc	ra,0x1
    80003580:	6b8080e7          	jalr	1720(ra) # 80004c34 <_Z11stringToIntPKc>
    80003584:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003588:	00005517          	auipc	a0,0x5
    8000358c:	c3050513          	addi	a0,a0,-976 # 800081b8 <_ZZ16printIntegerMinemE6digits+0x198>
    80003590:	00001097          	auipc	ra,0x1
    80003594:	544080e7          	jalr	1348(ra) # 80004ad4 <_Z11printStringPKc>
    printInt(threadNum);
    80003598:	00000613          	li	a2,0
    8000359c:	00a00593          	li	a1,10
    800035a0:	00098513          	mv	a0,s3
    800035a4:	00001097          	auipc	ra,0x1
    800035a8:	6e0080e7          	jalr	1760(ra) # 80004c84 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800035ac:	00005517          	auipc	a0,0x5
    800035b0:	c2450513          	addi	a0,a0,-988 # 800081d0 <_ZZ16printIntegerMinemE6digits+0x1b0>
    800035b4:	00001097          	auipc	ra,0x1
    800035b8:	520080e7          	jalr	1312(ra) # 80004ad4 <_Z11printStringPKc>
    printInt(n);
    800035bc:	00000613          	li	a2,0
    800035c0:	00a00593          	li	a1,10
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00001097          	auipc	ra,0x1
    800035cc:	6bc080e7          	jalr	1724(ra) # 80004c84 <_Z8printIntiii>
    printString(".\n");
    800035d0:	00005517          	auipc	a0,0x5
    800035d4:	c1850513          	addi	a0,a0,-1000 # 800081e8 <_ZZ16printIntegerMinemE6digits+0x1c8>
    800035d8:	00001097          	auipc	ra,0x1
    800035dc:	4fc080e7          	jalr	1276(ra) # 80004ad4 <_Z11printStringPKc>
    if (threadNum > n) {
    800035e0:	0334c463          	blt	s1,s3,80003608 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800035e4:	03305c63          	blez	s3,8000361c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800035e8:	03800513          	li	a0,56
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	3b0080e7          	jalr	944(ra) # 8000199c <_Znwm>
    800035f4:	00050a93          	mv	s5,a0
    800035f8:	00048593          	mv	a1,s1
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	7a8080e7          	jalr	1960(ra) # 80004da4 <_ZN9BufferCPPC1Ei>
    80003604:	0300006f          	j	80003634 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003608:	00005517          	auipc	a0,0x5
    8000360c:	be850513          	addi	a0,a0,-1048 # 800081f0 <_ZZ16printIntegerMinemE6digits+0x1d0>
    80003610:	00001097          	auipc	ra,0x1
    80003614:	4c4080e7          	jalr	1220(ra) # 80004ad4 <_Z11printStringPKc>
        return;
    80003618:	0140006f          	j	8000362c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000361c:	00005517          	auipc	a0,0x5
    80003620:	c1450513          	addi	a0,a0,-1004 # 80008230 <_ZZ16printIntegerMinemE6digits+0x210>
    80003624:	00001097          	auipc	ra,0x1
    80003628:	4b0080e7          	jalr	1200(ra) # 80004ad4 <_Z11printStringPKc>
        return;
    8000362c:	000c0113          	mv	sp,s8
    80003630:	2140006f          	j	80003844 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003634:	01000513          	li	a0,16
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	364080e7          	jalr	868(ra) # 8000199c <_Znwm>
    80003640:	00050913          	mv	s2,a0
    80003644:	00000593          	li	a1,0
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	550080e7          	jalr	1360(ra) # 80001b98 <_ZN9SemaphoreC1Ej>
    80003650:	00007797          	auipc	a5,0x7
    80003654:	0127bc23          	sd	s2,24(a5) # 8000a668 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003658:	00399793          	slli	a5,s3,0x3
    8000365c:	00f78793          	addi	a5,a5,15
    80003660:	ff07f793          	andi	a5,a5,-16
    80003664:	40f10133          	sub	sp,sp,a5
    80003668:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000366c:	0019871b          	addiw	a4,s3,1
    80003670:	00171793          	slli	a5,a4,0x1
    80003674:	00e787b3          	add	a5,a5,a4
    80003678:	00379793          	slli	a5,a5,0x3
    8000367c:	00f78793          	addi	a5,a5,15
    80003680:	ff07f793          	andi	a5,a5,-16
    80003684:	40f10133          	sub	sp,sp,a5
    80003688:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000368c:	00199493          	slli	s1,s3,0x1
    80003690:	013484b3          	add	s1,s1,s3
    80003694:	00349493          	slli	s1,s1,0x3
    80003698:	009b04b3          	add	s1,s6,s1
    8000369c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800036a0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800036a4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800036a8:	02800513          	li	a0,40
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	2f0080e7          	jalr	752(ra) # 8000199c <_Znwm>
    800036b4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	4b0080e7          	jalr	1200(ra) # 80001b68 <_ZN6ThreadC1Ev>
    800036c0:	00007797          	auipc	a5,0x7
    800036c4:	e4078793          	addi	a5,a5,-448 # 8000a500 <_ZTV8Consumer+0x10>
    800036c8:	00fbb023          	sd	a5,0(s7)
    800036cc:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800036d0:	000b8513          	mv	a0,s7
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	3fc080e7          	jalr	1020(ra) # 80001ad0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800036dc:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800036e0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800036e4:	00007797          	auipc	a5,0x7
    800036e8:	f847b783          	ld	a5,-124(a5) # 8000a668 <_ZL10waitForAll>
    800036ec:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800036f0:	02800513          	li	a0,40
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	2a8080e7          	jalr	680(ra) # 8000199c <_Znwm>
    800036fc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	468080e7          	jalr	1128(ra) # 80001b68 <_ZN6ThreadC1Ev>
    80003708:	00007797          	auipc	a5,0x7
    8000370c:	da878793          	addi	a5,a5,-600 # 8000a4b0 <_ZTV16ProducerKeyborad+0x10>
    80003710:	00f4b023          	sd	a5,0(s1)
    80003714:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003718:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000371c:	00048513          	mv	a0,s1
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	3b0080e7          	jalr	944(ra) # 80001ad0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003728:	00100913          	li	s2,1
    8000372c:	0300006f          	j	8000375c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003730:	00007797          	auipc	a5,0x7
    80003734:	da878793          	addi	a5,a5,-600 # 8000a4d8 <_ZTV8Producer+0x10>
    80003738:	00fcb023          	sd	a5,0(s9)
    8000373c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003740:	00391793          	slli	a5,s2,0x3
    80003744:	00fa07b3          	add	a5,s4,a5
    80003748:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000374c:	000c8513          	mv	a0,s9
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	380080e7          	jalr	896(ra) # 80001ad0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003758:	0019091b          	addiw	s2,s2,1
    8000375c:	05395263          	bge	s2,s3,800037a0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003760:	00191493          	slli	s1,s2,0x1
    80003764:	012484b3          	add	s1,s1,s2
    80003768:	00349493          	slli	s1,s1,0x3
    8000376c:	009b04b3          	add	s1,s6,s1
    80003770:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003774:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003778:	00007797          	auipc	a5,0x7
    8000377c:	ef07b783          	ld	a5,-272(a5) # 8000a668 <_ZL10waitForAll>
    80003780:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003784:	02800513          	li	a0,40
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	214080e7          	jalr	532(ra) # 8000199c <_Znwm>
    80003790:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	3d4080e7          	jalr	980(ra) # 80001b68 <_ZN6ThreadC1Ev>
    8000379c:	f95ff06f          	j	80003730 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	384080e7          	jalr	900(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800037a8:	00000493          	li	s1,0
    800037ac:	0099ce63          	blt	s3,s1,800037c8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800037b0:	00007517          	auipc	a0,0x7
    800037b4:	eb853503          	ld	a0,-328(a0) # 8000a668 <_ZL10waitForAll>
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	418080e7          	jalr	1048(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800037c0:	0014849b          	addiw	s1,s1,1
    800037c4:	fe9ff06f          	j	800037ac <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800037c8:	00007517          	auipc	a0,0x7
    800037cc:	ea053503          	ld	a0,-352(a0) # 8000a668 <_ZL10waitForAll>
    800037d0:	00050863          	beqz	a0,800037e0 <_Z20testConsumerProducerv+0x2f4>
    800037d4:	00053783          	ld	a5,0(a0)
    800037d8:	0087b783          	ld	a5,8(a5)
    800037dc:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800037e0:	00000493          	li	s1,0
    800037e4:	0080006f          	j	800037ec <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800037e8:	0014849b          	addiw	s1,s1,1
    800037ec:	0334d263          	bge	s1,s3,80003810 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800037f0:	00349793          	slli	a5,s1,0x3
    800037f4:	00fa07b3          	add	a5,s4,a5
    800037f8:	0007b503          	ld	a0,0(a5)
    800037fc:	fe0506e3          	beqz	a0,800037e8 <_Z20testConsumerProducerv+0x2fc>
    80003800:	00053783          	ld	a5,0(a0)
    80003804:	0087b783          	ld	a5,8(a5)
    80003808:	000780e7          	jalr	a5
    8000380c:	fddff06f          	j	800037e8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003810:	000b8a63          	beqz	s7,80003824 <_Z20testConsumerProducerv+0x338>
    80003814:	000bb783          	ld	a5,0(s7)
    80003818:	0087b783          	ld	a5,8(a5)
    8000381c:	000b8513          	mv	a0,s7
    80003820:	000780e7          	jalr	a5
    delete buffer;
    80003824:	000a8e63          	beqz	s5,80003840 <_Z20testConsumerProducerv+0x354>
    80003828:	000a8513          	mv	a0,s5
    8000382c:	00002097          	auipc	ra,0x2
    80003830:	870080e7          	jalr	-1936(ra) # 8000509c <_ZN9BufferCPPD1Ev>
    80003834:	000a8513          	mv	a0,s5
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	18c080e7          	jalr	396(ra) # 800019c4 <_ZdlPv>
    80003840:	000c0113          	mv	sp,s8
}
    80003844:	f8040113          	addi	sp,s0,-128
    80003848:	07813083          	ld	ra,120(sp)
    8000384c:	07013403          	ld	s0,112(sp)
    80003850:	06813483          	ld	s1,104(sp)
    80003854:	06013903          	ld	s2,96(sp)
    80003858:	05813983          	ld	s3,88(sp)
    8000385c:	05013a03          	ld	s4,80(sp)
    80003860:	04813a83          	ld	s5,72(sp)
    80003864:	04013b03          	ld	s6,64(sp)
    80003868:	03813b83          	ld	s7,56(sp)
    8000386c:	03013c03          	ld	s8,48(sp)
    80003870:	02813c83          	ld	s9,40(sp)
    80003874:	08010113          	addi	sp,sp,128
    80003878:	00008067          	ret
    8000387c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003880:	000a8513          	mv	a0,s5
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	140080e7          	jalr	320(ra) # 800019c4 <_ZdlPv>
    8000388c:	00048513          	mv	a0,s1
    80003890:	00008097          	auipc	ra,0x8
    80003894:	ed8080e7          	jalr	-296(ra) # 8000b768 <_Unwind_Resume>
    80003898:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000389c:	00090513          	mv	a0,s2
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	124080e7          	jalr	292(ra) # 800019c4 <_ZdlPv>
    800038a8:	00048513          	mv	a0,s1
    800038ac:	00008097          	auipc	ra,0x8
    800038b0:	ebc080e7          	jalr	-324(ra) # 8000b768 <_Unwind_Resume>
    800038b4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800038b8:	000b8513          	mv	a0,s7
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	108080e7          	jalr	264(ra) # 800019c4 <_ZdlPv>
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00008097          	auipc	ra,0x8
    800038cc:	ea0080e7          	jalr	-352(ra) # 8000b768 <_Unwind_Resume>
    800038d0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800038d4:	00048513          	mv	a0,s1
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	0ec080e7          	jalr	236(ra) # 800019c4 <_ZdlPv>
    800038e0:	00090513          	mv	a0,s2
    800038e4:	00008097          	auipc	ra,0x8
    800038e8:	e84080e7          	jalr	-380(ra) # 8000b768 <_Unwind_Resume>
    800038ec:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800038f0:	000c8513          	mv	a0,s9
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	0d0080e7          	jalr	208(ra) # 800019c4 <_ZdlPv>
    800038fc:	00048513          	mv	a0,s1
    80003900:	00008097          	auipc	ra,0x8
    80003904:	e68080e7          	jalr	-408(ra) # 8000b768 <_Unwind_Resume>

0000000080003908 <_ZN8Consumer3runEv>:
    void run() override {
    80003908:	fd010113          	addi	sp,sp,-48
    8000390c:	02113423          	sd	ra,40(sp)
    80003910:	02813023          	sd	s0,32(sp)
    80003914:	00913c23          	sd	s1,24(sp)
    80003918:	01213823          	sd	s2,16(sp)
    8000391c:	01313423          	sd	s3,8(sp)
    80003920:	03010413          	addi	s0,sp,48
    80003924:	00050913          	mv	s2,a0
        int i = 0;
    80003928:	00000993          	li	s3,0
    8000392c:	0100006f          	j	8000393c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003930:	00a00513          	li	a0,10
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	3bc080e7          	jalr	956(ra) # 80001cf0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000393c:	00007797          	auipc	a5,0x7
    80003940:	d247a783          	lw	a5,-732(a5) # 8000a660 <_ZL9threadEnd>
    80003944:	04079a63          	bnez	a5,80003998 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003948:	02093783          	ld	a5,32(s2)
    8000394c:	0087b503          	ld	a0,8(a5)
    80003950:	00001097          	auipc	ra,0x1
    80003954:	638080e7          	jalr	1592(ra) # 80004f88 <_ZN9BufferCPP3getEv>
            i++;
    80003958:	0019849b          	addiw	s1,s3,1
    8000395c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003960:	0ff57513          	andi	a0,a0,255
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	38c080e7          	jalr	908(ra) # 80001cf0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000396c:	05000793          	li	a5,80
    80003970:	02f4e4bb          	remw	s1,s1,a5
    80003974:	fc0494e3          	bnez	s1,8000393c <_ZN8Consumer3runEv+0x34>
    80003978:	fb9ff06f          	j	80003930 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000397c:	02093783          	ld	a5,32(s2)
    80003980:	0087b503          	ld	a0,8(a5)
    80003984:	00001097          	auipc	ra,0x1
    80003988:	604080e7          	jalr	1540(ra) # 80004f88 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000398c:	0ff57513          	andi	a0,a0,255
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	360080e7          	jalr	864(ra) # 80001cf0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003998:	02093783          	ld	a5,32(s2)
    8000399c:	0087b503          	ld	a0,8(a5)
    800039a0:	00001097          	auipc	ra,0x1
    800039a4:	674080e7          	jalr	1652(ra) # 80005014 <_ZN9BufferCPP6getCntEv>
    800039a8:	fca04ae3          	bgtz	a0,8000397c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800039ac:	02093783          	ld	a5,32(s2)
    800039b0:	0107b503          	ld	a0,16(a5)
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	248080e7          	jalr	584(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    }
    800039bc:	02813083          	ld	ra,40(sp)
    800039c0:	02013403          	ld	s0,32(sp)
    800039c4:	01813483          	ld	s1,24(sp)
    800039c8:	01013903          	ld	s2,16(sp)
    800039cc:	00813983          	ld	s3,8(sp)
    800039d0:	03010113          	addi	sp,sp,48
    800039d4:	00008067          	ret

00000000800039d8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00007797          	auipc	a5,0x7
    800039ec:	b1878793          	addi	a5,a5,-1256 # 8000a500 <_ZTV8Consumer+0x10>
    800039f0:	00f53023          	sd	a5,0(a0)
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	f24080e7          	jalr	-220(ra) # 80001918 <_ZN6ThreadD1Ev>
    800039fc:	00813083          	ld	ra,8(sp)
    80003a00:	00013403          	ld	s0,0(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <_ZN8ConsumerD0Ev>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
    80003a24:	00007797          	auipc	a5,0x7
    80003a28:	adc78793          	addi	a5,a5,-1316 # 8000a500 <_ZTV8Consumer+0x10>
    80003a2c:	00f53023          	sd	a5,0(a0)
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	ee8080e7          	jalr	-280(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	f88080e7          	jalr	-120(ra) # 800019c4 <_ZdlPv>
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret

0000000080003a58 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00007797          	auipc	a5,0x7
    80003a6c:	a4878793          	addi	a5,a5,-1464 # 8000a4b0 <_ZTV16ProducerKeyborad+0x10>
    80003a70:	00f53023          	sd	a5,0(a0)
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	ea4080e7          	jalr	-348(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003a7c:	00813083          	ld	ra,8(sp)
    80003a80:	00013403          	ld	s0,0(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <_ZN16ProducerKeyboradD0Ev>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00050493          	mv	s1,a0
    80003aa4:	00007797          	auipc	a5,0x7
    80003aa8:	a0c78793          	addi	a5,a5,-1524 # 8000a4b0 <_ZTV16ProducerKeyborad+0x10>
    80003aac:	00f53023          	sd	a5,0(a0)
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	e68080e7          	jalr	-408(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	f08080e7          	jalr	-248(ra) # 800019c4 <_ZdlPv>
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00113423          	sd	ra,8(sp)
    80003ae0:	00813023          	sd	s0,0(sp)
    80003ae4:	01010413          	addi	s0,sp,16
    80003ae8:	00007797          	auipc	a5,0x7
    80003aec:	9f078793          	addi	a5,a5,-1552 # 8000a4d8 <_ZTV8Producer+0x10>
    80003af0:	00f53023          	sd	a5,0(a0)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	e24080e7          	jalr	-476(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN8ProducerD0Ev>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00007797          	auipc	a5,0x7
    80003b28:	9b478793          	addi	a5,a5,-1612 # 8000a4d8 <_ZTV8Producer+0x10>
    80003b2c:	00f53023          	sd	a5,0(a0)
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	de8080e7          	jalr	-536(ra) # 80001918 <_ZN6ThreadD1Ev>
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	e88080e7          	jalr	-376(ra) # 800019c4 <_ZdlPv>
    80003b44:	01813083          	ld	ra,24(sp)
    80003b48:	01013403          	ld	s0,16(sp)
    80003b4c:	00813483          	ld	s1,8(sp)
    80003b50:	02010113          	addi	sp,sp,32
    80003b54:	00008067          	ret

0000000080003b58 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003b58:	fe010113          	addi	sp,sp,-32
    80003b5c:	00113c23          	sd	ra,24(sp)
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	02010413          	addi	s0,sp,32
    80003b6c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	95c080e7          	jalr	-1700(ra) # 800014cc <_Z4getcv>
    80003b78:	0005059b          	sext.w	a1,a0
    80003b7c:	01b00793          	li	a5,27
    80003b80:	00f58c63          	beq	a1,a5,80003b98 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003b84:	0204b783          	ld	a5,32(s1)
    80003b88:	0087b503          	ld	a0,8(a5)
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	36c080e7          	jalr	876(ra) # 80004ef8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003b94:	fddff06f          	j	80003b70 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003b98:	00100793          	li	a5,1
    80003b9c:	00007717          	auipc	a4,0x7
    80003ba0:	acf72223          	sw	a5,-1340(a4) # 8000a660 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ba4:	0204b783          	ld	a5,32(s1)
    80003ba8:	02100593          	li	a1,33
    80003bac:	0087b503          	ld	a0,8(a5)
    80003bb0:	00001097          	auipc	ra,0x1
    80003bb4:	348080e7          	jalr	840(ra) # 80004ef8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003bb8:	0204b783          	ld	a5,32(s1)
    80003bbc:	0107b503          	ld	a0,16(a5)
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	03c080e7          	jalr	60(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    }
    80003bc8:	01813083          	ld	ra,24(sp)
    80003bcc:	01013403          	ld	s0,16(sp)
    80003bd0:	00813483          	ld	s1,8(sp)
    80003bd4:	02010113          	addi	sp,sp,32
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN8Producer3runEv>:
    void run() override {
    80003bdc:	fe010113          	addi	sp,sp,-32
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	01213023          	sd	s2,0(sp)
    80003bf0:	02010413          	addi	s0,sp,32
    80003bf4:	00050493          	mv	s1,a0
        int i = 0;
    80003bf8:	00000913          	li	s2,0
        while (!threadEnd) {
    80003bfc:	00007797          	auipc	a5,0x7
    80003c00:	a647a783          	lw	a5,-1436(a5) # 8000a660 <_ZL9threadEnd>
    80003c04:	04079263          	bnez	a5,80003c48 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003c08:	0204b783          	ld	a5,32(s1)
    80003c0c:	0007a583          	lw	a1,0(a5)
    80003c10:	0305859b          	addiw	a1,a1,48
    80003c14:	0087b503          	ld	a0,8(a5)
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	2e0080e7          	jalr	736(ra) # 80004ef8 <_ZN9BufferCPP3putEi>
            i++;
    80003c20:	0019071b          	addiw	a4,s2,1
    80003c24:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003c28:	0204b783          	ld	a5,32(s1)
    80003c2c:	0007a783          	lw	a5,0(a5)
    80003c30:	00e787bb          	addw	a5,a5,a4
    80003c34:	00500513          	li	a0,5
    80003c38:	02a7e53b          	remw	a0,a5,a0
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	f10080e7          	jalr	-240(ra) # 80001b4c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003c44:	fb9ff06f          	j	80003bfc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003c48:	0204b783          	ld	a5,32(s1)
    80003c4c:	0107b503          	ld	a0,16(a5)
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	fac080e7          	jalr	-84(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    }
    80003c58:	01813083          	ld	ra,24(sp)
    80003c5c:	01013403          	ld	s0,16(sp)
    80003c60:	00813483          	ld	s1,8(sp)
    80003c64:	00013903          	ld	s2,0(sp)
    80003c68:	02010113          	addi	sp,sp,32
    80003c6c:	00008067          	ret

0000000080003c70 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	00813823          	sd	s0,16(sp)
    80003c7c:	00913423          	sd	s1,8(sp)
    80003c80:	01213023          	sd	s2,0(sp)
    80003c84:	02010413          	addi	s0,sp,32
    80003c88:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c8c:	00100793          	li	a5,1
    80003c90:	02a7f863          	bgeu	a5,a0,80003cc0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c94:	00a00793          	li	a5,10
    80003c98:	02f577b3          	remu	a5,a0,a5
    80003c9c:	02078e63          	beqz	a5,80003cd8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003ca0:	fff48513          	addi	a0,s1,-1
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	fcc080e7          	jalr	-52(ra) # 80003c70 <_ZL9fibonaccim>
    80003cac:	00050913          	mv	s2,a0
    80003cb0:	ffe48513          	addi	a0,s1,-2
    80003cb4:	00000097          	auipc	ra,0x0
    80003cb8:	fbc080e7          	jalr	-68(ra) # 80003c70 <_ZL9fibonaccim>
    80003cbc:	00a90533          	add	a0,s2,a0
}
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	00013903          	ld	s2,0(sp)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003cd8:	ffffd097          	auipc	ra,0xffffd
    80003cdc:	674080e7          	jalr	1652(ra) # 8000134c <_Z15thread_dispatchv>
    80003ce0:	fc1ff06f          	j	80003ca0 <_ZL9fibonaccim+0x30>

0000000080003ce4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003ce4:	fe010113          	addi	sp,sp,-32
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00913423          	sd	s1,8(sp)
    80003cf4:	01213023          	sd	s2,0(sp)
    80003cf8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003cfc:	00a00493          	li	s1,10
    80003d00:	0400006f          	j	80003d40 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d04:	00004517          	auipc	a0,0x4
    80003d08:	5bc50513          	addi	a0,a0,1468 # 800082c0 <_ZZ16printIntegerMinemE6digits+0x2a0>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	dc8080e7          	jalr	-568(ra) # 80004ad4 <_Z11printStringPKc>
    80003d14:	00000613          	li	a2,0
    80003d18:	00a00593          	li	a1,10
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	00001097          	auipc	ra,0x1
    80003d24:	f64080e7          	jalr	-156(ra) # 80004c84 <_Z8printIntiii>
    80003d28:	00004517          	auipc	a0,0x4
    80003d2c:	7b850513          	addi	a0,a0,1976 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003d30:	00001097          	auipc	ra,0x1
    80003d34:	da4080e7          	jalr	-604(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003d38:	0014849b          	addiw	s1,s1,1
    80003d3c:	0ff4f493          	andi	s1,s1,255
    80003d40:	00c00793          	li	a5,12
    80003d44:	fc97f0e3          	bgeu	a5,s1,80003d04 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003d48:	00004517          	auipc	a0,0x4
    80003d4c:	58050513          	addi	a0,a0,1408 # 800082c8 <_ZZ16printIntegerMinemE6digits+0x2a8>
    80003d50:	00001097          	auipc	ra,0x1
    80003d54:	d84080e7          	jalr	-636(ra) # 80004ad4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003d58:	00500313          	li	t1,5
    thread_dispatch();
    80003d5c:	ffffd097          	auipc	ra,0xffffd
    80003d60:	5f0080e7          	jalr	1520(ra) # 8000134c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d64:	01000513          	li	a0,16
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	f08080e7          	jalr	-248(ra) # 80003c70 <_ZL9fibonaccim>
    80003d70:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d74:	00004517          	auipc	a0,0x4
    80003d78:	56450513          	addi	a0,a0,1380 # 800082d8 <_ZZ16printIntegerMinemE6digits+0x2b8>
    80003d7c:	00001097          	auipc	ra,0x1
    80003d80:	d58080e7          	jalr	-680(ra) # 80004ad4 <_Z11printStringPKc>
    80003d84:	00000613          	li	a2,0
    80003d88:	00a00593          	li	a1,10
    80003d8c:	0009051b          	sext.w	a0,s2
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	ef4080e7          	jalr	-268(ra) # 80004c84 <_Z8printIntiii>
    80003d98:	00004517          	auipc	a0,0x4
    80003d9c:	74850513          	addi	a0,a0,1864 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003da0:	00001097          	auipc	ra,0x1
    80003da4:	d34080e7          	jalr	-716(ra) # 80004ad4 <_Z11printStringPKc>
    80003da8:	0400006f          	j	80003de8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003dac:	00004517          	auipc	a0,0x4
    80003db0:	51450513          	addi	a0,a0,1300 # 800082c0 <_ZZ16printIntegerMinemE6digits+0x2a0>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	d20080e7          	jalr	-736(ra) # 80004ad4 <_Z11printStringPKc>
    80003dbc:	00000613          	li	a2,0
    80003dc0:	00a00593          	li	a1,10
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	ebc080e7          	jalr	-324(ra) # 80004c84 <_Z8printIntiii>
    80003dd0:	00004517          	auipc	a0,0x4
    80003dd4:	71050513          	addi	a0,a0,1808 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	cfc080e7          	jalr	-772(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003de0:	0014849b          	addiw	s1,s1,1
    80003de4:	0ff4f493          	andi	s1,s1,255
    80003de8:	00f00793          	li	a5,15
    80003dec:	fc97f0e3          	bgeu	a5,s1,80003dac <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003df0:	00004517          	auipc	a0,0x4
    80003df4:	4f850513          	addi	a0,a0,1272 # 800082e8 <_ZZ16printIntegerMinemE6digits+0x2c8>
    80003df8:	00001097          	auipc	ra,0x1
    80003dfc:	cdc080e7          	jalr	-804(ra) # 80004ad4 <_Z11printStringPKc>
    finishedD = true;
    80003e00:	00100793          	li	a5,1
    80003e04:	00007717          	auipc	a4,0x7
    80003e08:	86f70623          	sb	a5,-1940(a4) # 8000a670 <_ZL9finishedD>
    thread_dispatch();
    80003e0c:	ffffd097          	auipc	ra,0xffffd
    80003e10:	540080e7          	jalr	1344(ra) # 8000134c <_Z15thread_dispatchv>
}
    80003e14:	01813083          	ld	ra,24(sp)
    80003e18:	01013403          	ld	s0,16(sp)
    80003e1c:	00813483          	ld	s1,8(sp)
    80003e20:	00013903          	ld	s2,0(sp)
    80003e24:	02010113          	addi	sp,sp,32
    80003e28:	00008067          	ret

0000000080003e2c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00113c23          	sd	ra,24(sp)
    80003e34:	00813823          	sd	s0,16(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	01213023          	sd	s2,0(sp)
    80003e40:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003e44:	00000493          	li	s1,0
    80003e48:	0400006f          	j	80003e88 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003e4c:	00004517          	auipc	a0,0x4
    80003e50:	44450513          	addi	a0,a0,1092 # 80008290 <_ZZ16printIntegerMinemE6digits+0x270>
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	c80080e7          	jalr	-896(ra) # 80004ad4 <_Z11printStringPKc>
    80003e5c:	00000613          	li	a2,0
    80003e60:	00a00593          	li	a1,10
    80003e64:	00048513          	mv	a0,s1
    80003e68:	00001097          	auipc	ra,0x1
    80003e6c:	e1c080e7          	jalr	-484(ra) # 80004c84 <_Z8printIntiii>
    80003e70:	00004517          	auipc	a0,0x4
    80003e74:	67050513          	addi	a0,a0,1648 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	c5c080e7          	jalr	-932(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e80:	0014849b          	addiw	s1,s1,1
    80003e84:	0ff4f493          	andi	s1,s1,255
    80003e88:	00200793          	li	a5,2
    80003e8c:	fc97f0e3          	bgeu	a5,s1,80003e4c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003e90:	00004517          	auipc	a0,0x4
    80003e94:	40850513          	addi	a0,a0,1032 # 80008298 <_ZZ16printIntegerMinemE6digits+0x278>
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	c3c080e7          	jalr	-964(ra) # 80004ad4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003ea0:	00700313          	li	t1,7
    thread_dispatch();
    80003ea4:	ffffd097          	auipc	ra,0xffffd
    80003ea8:	4a8080e7          	jalr	1192(ra) # 8000134c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003eac:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003eb0:	00004517          	auipc	a0,0x4
    80003eb4:	3f850513          	addi	a0,a0,1016 # 800082a8 <_ZZ16printIntegerMinemE6digits+0x288>
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	c1c080e7          	jalr	-996(ra) # 80004ad4 <_Z11printStringPKc>
    80003ec0:	00000613          	li	a2,0
    80003ec4:	00a00593          	li	a1,10
    80003ec8:	0009051b          	sext.w	a0,s2
    80003ecc:	00001097          	auipc	ra,0x1
    80003ed0:	db8080e7          	jalr	-584(ra) # 80004c84 <_Z8printIntiii>
    80003ed4:	00004517          	auipc	a0,0x4
    80003ed8:	60c50513          	addi	a0,a0,1548 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003edc:	00001097          	auipc	ra,0x1
    80003ee0:	bf8080e7          	jalr	-1032(ra) # 80004ad4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003ee4:	00c00513          	li	a0,12
    80003ee8:	00000097          	auipc	ra,0x0
    80003eec:	d88080e7          	jalr	-632(ra) # 80003c70 <_ZL9fibonaccim>
    80003ef0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ef4:	00004517          	auipc	a0,0x4
    80003ef8:	3bc50513          	addi	a0,a0,956 # 800082b0 <_ZZ16printIntegerMinemE6digits+0x290>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	bd8080e7          	jalr	-1064(ra) # 80004ad4 <_Z11printStringPKc>
    80003f04:	00000613          	li	a2,0
    80003f08:	00a00593          	li	a1,10
    80003f0c:	0009051b          	sext.w	a0,s2
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	d74080e7          	jalr	-652(ra) # 80004c84 <_Z8printIntiii>
    80003f18:	00004517          	auipc	a0,0x4
    80003f1c:	5c850513          	addi	a0,a0,1480 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	bb4080e7          	jalr	-1100(ra) # 80004ad4 <_Z11printStringPKc>
    80003f28:	0400006f          	j	80003f68 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003f2c:	00004517          	auipc	a0,0x4
    80003f30:	36450513          	addi	a0,a0,868 # 80008290 <_ZZ16printIntegerMinemE6digits+0x270>
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	ba0080e7          	jalr	-1120(ra) # 80004ad4 <_Z11printStringPKc>
    80003f3c:	00000613          	li	a2,0
    80003f40:	00a00593          	li	a1,10
    80003f44:	00048513          	mv	a0,s1
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	d3c080e7          	jalr	-708(ra) # 80004c84 <_Z8printIntiii>
    80003f50:	00004517          	auipc	a0,0x4
    80003f54:	59050513          	addi	a0,a0,1424 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	b7c080e7          	jalr	-1156(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f60:	0014849b          	addiw	s1,s1,1
    80003f64:	0ff4f493          	andi	s1,s1,255
    80003f68:	00500793          	li	a5,5
    80003f6c:	fc97f0e3          	bgeu	a5,s1,80003f2c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003f70:	00004517          	auipc	a0,0x4
    80003f74:	2f850513          	addi	a0,a0,760 # 80008268 <_ZZ16printIntegerMinemE6digits+0x248>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	b5c080e7          	jalr	-1188(ra) # 80004ad4 <_Z11printStringPKc>
    finishedC = true;
    80003f80:	00100793          	li	a5,1
    80003f84:	00006717          	auipc	a4,0x6
    80003f88:	6ef706a3          	sb	a5,1773(a4) # 8000a671 <_ZL9finishedC>
    thread_dispatch();
    80003f8c:	ffffd097          	auipc	ra,0xffffd
    80003f90:	3c0080e7          	jalr	960(ra) # 8000134c <_Z15thread_dispatchv>
}
    80003f94:	01813083          	ld	ra,24(sp)
    80003f98:	01013403          	ld	s0,16(sp)
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	00013903          	ld	s2,0(sp)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00008067          	ret

0000000080003fac <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003fac:	fe010113          	addi	sp,sp,-32
    80003fb0:	00113c23          	sd	ra,24(sp)
    80003fb4:	00813823          	sd	s0,16(sp)
    80003fb8:	00913423          	sd	s1,8(sp)
    80003fbc:	01213023          	sd	s2,0(sp)
    80003fc0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fc4:	00000913          	li	s2,0
    80003fc8:	0380006f          	j	80004000 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003fcc:	ffffd097          	auipc	ra,0xffffd
    80003fd0:	380080e7          	jalr	896(ra) # 8000134c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fd4:	00148493          	addi	s1,s1,1
    80003fd8:	000027b7          	lui	a5,0x2
    80003fdc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fe0:	0097ee63          	bltu	a5,s1,80003ffc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fe4:	00000713          	li	a4,0
    80003fe8:	000077b7          	lui	a5,0x7
    80003fec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ff0:	fce7eee3          	bltu	a5,a4,80003fcc <_ZL11workerBodyBPv+0x20>
    80003ff4:	00170713          	addi	a4,a4,1
    80003ff8:	ff1ff06f          	j	80003fe8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ffc:	00190913          	addi	s2,s2,1
    80004000:	00f00793          	li	a5,15
    80004004:	0527e063          	bltu	a5,s2,80004044 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004008:	00004517          	auipc	a0,0x4
    8000400c:	27050513          	addi	a0,a0,624 # 80008278 <_ZZ16printIntegerMinemE6digits+0x258>
    80004010:	00001097          	auipc	ra,0x1
    80004014:	ac4080e7          	jalr	-1340(ra) # 80004ad4 <_Z11printStringPKc>
    80004018:	00000613          	li	a2,0
    8000401c:	00a00593          	li	a1,10
    80004020:	0009051b          	sext.w	a0,s2
    80004024:	00001097          	auipc	ra,0x1
    80004028:	c60080e7          	jalr	-928(ra) # 80004c84 <_Z8printIntiii>
    8000402c:	00004517          	auipc	a0,0x4
    80004030:	4b450513          	addi	a0,a0,1204 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80004034:	00001097          	auipc	ra,0x1
    80004038:	aa0080e7          	jalr	-1376(ra) # 80004ad4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000403c:	00000493          	li	s1,0
    80004040:	f99ff06f          	j	80003fd8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004044:	00004517          	auipc	a0,0x4
    80004048:	23c50513          	addi	a0,a0,572 # 80008280 <_ZZ16printIntegerMinemE6digits+0x260>
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	a88080e7          	jalr	-1400(ra) # 80004ad4 <_Z11printStringPKc>
    finishedB = true;
    80004054:	00100793          	li	a5,1
    80004058:	00006717          	auipc	a4,0x6
    8000405c:	60f70d23          	sb	a5,1562(a4) # 8000a672 <_ZL9finishedB>
    thread_dispatch();
    80004060:	ffffd097          	auipc	ra,0xffffd
    80004064:	2ec080e7          	jalr	748(ra) # 8000134c <_Z15thread_dispatchv>
}
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	01013403          	ld	s0,16(sp)
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	00013903          	ld	s2,0(sp)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00008067          	ret

0000000080004080 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004080:	fe010113          	addi	sp,sp,-32
    80004084:	00113c23          	sd	ra,24(sp)
    80004088:	00813823          	sd	s0,16(sp)
    8000408c:	00913423          	sd	s1,8(sp)
    80004090:	01213023          	sd	s2,0(sp)
    80004094:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004098:	00000913          	li	s2,0
    8000409c:	0380006f          	j	800040d4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800040a0:	ffffd097          	auipc	ra,0xffffd
    800040a4:	2ac080e7          	jalr	684(ra) # 8000134c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800040a8:	00148493          	addi	s1,s1,1
    800040ac:	000027b7          	lui	a5,0x2
    800040b0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040b4:	0097ee63          	bltu	a5,s1,800040d0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040b8:	00000713          	li	a4,0
    800040bc:	000077b7          	lui	a5,0x7
    800040c0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040c4:	fce7eee3          	bltu	a5,a4,800040a0 <_ZL11workerBodyAPv+0x20>
    800040c8:	00170713          	addi	a4,a4,1
    800040cc:	ff1ff06f          	j	800040bc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800040d0:	00190913          	addi	s2,s2,1
    800040d4:	00900793          	li	a5,9
    800040d8:	0527e063          	bltu	a5,s2,80004118 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800040dc:	00004517          	auipc	a0,0x4
    800040e0:	18450513          	addi	a0,a0,388 # 80008260 <_ZZ16printIntegerMinemE6digits+0x240>
    800040e4:	00001097          	auipc	ra,0x1
    800040e8:	9f0080e7          	jalr	-1552(ra) # 80004ad4 <_Z11printStringPKc>
    800040ec:	00000613          	li	a2,0
    800040f0:	00a00593          	li	a1,10
    800040f4:	0009051b          	sext.w	a0,s2
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	b8c080e7          	jalr	-1140(ra) # 80004c84 <_Z8printIntiii>
    80004100:	00004517          	auipc	a0,0x4
    80004104:	3e050513          	addi	a0,a0,992 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	9cc080e7          	jalr	-1588(ra) # 80004ad4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004110:	00000493          	li	s1,0
    80004114:	f99ff06f          	j	800040ac <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004118:	00004517          	auipc	a0,0x4
    8000411c:	15050513          	addi	a0,a0,336 # 80008268 <_ZZ16printIntegerMinemE6digits+0x248>
    80004120:	00001097          	auipc	ra,0x1
    80004124:	9b4080e7          	jalr	-1612(ra) # 80004ad4 <_Z11printStringPKc>
    finishedA = true;
    80004128:	00100793          	li	a5,1
    8000412c:	00006717          	auipc	a4,0x6
    80004130:	54f703a3          	sb	a5,1351(a4) # 8000a673 <_ZL9finishedA>
}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	00013903          	ld	s2,0(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000414c:	fd010113          	addi	sp,sp,-48
    80004150:	02113423          	sd	ra,40(sp)
    80004154:	02813023          	sd	s0,32(sp)
    80004158:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000415c:	00000613          	li	a2,0
    80004160:	00000597          	auipc	a1,0x0
    80004164:	f2058593          	addi	a1,a1,-224 # 80004080 <_ZL11workerBodyAPv>
    80004168:	fd040513          	addi	a0,s0,-48
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	16c080e7          	jalr	364(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004174:	00004517          	auipc	a0,0x4
    80004178:	18450513          	addi	a0,a0,388 # 800082f8 <_ZZ16printIntegerMinemE6digits+0x2d8>
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	958080e7          	jalr	-1704(ra) # 80004ad4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004184:	00000613          	li	a2,0
    80004188:	00000597          	auipc	a1,0x0
    8000418c:	e2458593          	addi	a1,a1,-476 # 80003fac <_ZL11workerBodyBPv>
    80004190:	fd840513          	addi	a0,s0,-40
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	144080e7          	jalr	324(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000419c:	00004517          	auipc	a0,0x4
    800041a0:	17450513          	addi	a0,a0,372 # 80008310 <_ZZ16printIntegerMinemE6digits+0x2f0>
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	930080e7          	jalr	-1744(ra) # 80004ad4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800041ac:	00000613          	li	a2,0
    800041b0:	00000597          	auipc	a1,0x0
    800041b4:	c7c58593          	addi	a1,a1,-900 # 80003e2c <_ZL11workerBodyCPv>
    800041b8:	fe040513          	addi	a0,s0,-32
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	11c080e7          	jalr	284(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800041c4:	00004517          	auipc	a0,0x4
    800041c8:	16450513          	addi	a0,a0,356 # 80008328 <_ZZ16printIntegerMinemE6digits+0x308>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	908080e7          	jalr	-1784(ra) # 80004ad4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800041d4:	00000613          	li	a2,0
    800041d8:	00000597          	auipc	a1,0x0
    800041dc:	b0c58593          	addi	a1,a1,-1268 # 80003ce4 <_ZL11workerBodyDPv>
    800041e0:	fe840513          	addi	a0,s0,-24
    800041e4:	ffffd097          	auipc	ra,0xffffd
    800041e8:	0f4080e7          	jalr	244(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800041ec:	00004517          	auipc	a0,0x4
    800041f0:	15450513          	addi	a0,a0,340 # 80008340 <_ZZ16printIntegerMinemE6digits+0x320>
    800041f4:	00001097          	auipc	ra,0x1
    800041f8:	8e0080e7          	jalr	-1824(ra) # 80004ad4 <_Z11printStringPKc>
    800041fc:	00c0006f          	j	80004208 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004200:	ffffd097          	auipc	ra,0xffffd
    80004204:	14c080e7          	jalr	332(ra) # 8000134c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004208:	00006797          	auipc	a5,0x6
    8000420c:	46b7c783          	lbu	a5,1131(a5) # 8000a673 <_ZL9finishedA>
    80004210:	fe0788e3          	beqz	a5,80004200 <_Z18Threads_C_API_testv+0xb4>
    80004214:	00006797          	auipc	a5,0x6
    80004218:	45e7c783          	lbu	a5,1118(a5) # 8000a672 <_ZL9finishedB>
    8000421c:	fe0782e3          	beqz	a5,80004200 <_Z18Threads_C_API_testv+0xb4>
    80004220:	00006797          	auipc	a5,0x6
    80004224:	4517c783          	lbu	a5,1105(a5) # 8000a671 <_ZL9finishedC>
    80004228:	fc078ce3          	beqz	a5,80004200 <_Z18Threads_C_API_testv+0xb4>
    8000422c:	00006797          	auipc	a5,0x6
    80004230:	4447c783          	lbu	a5,1092(a5) # 8000a670 <_ZL9finishedD>
    80004234:	fc0786e3          	beqz	a5,80004200 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004238:	02813083          	ld	ra,40(sp)
    8000423c:	02013403          	ld	s0,32(sp)
    80004240:	03010113          	addi	sp,sp,48
    80004244:	00008067          	ret

0000000080004248 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004248:	fd010113          	addi	sp,sp,-48
    8000424c:	02113423          	sd	ra,40(sp)
    80004250:	02813023          	sd	s0,32(sp)
    80004254:	00913c23          	sd	s1,24(sp)
    80004258:	01213823          	sd	s2,16(sp)
    8000425c:	01313423          	sd	s3,8(sp)
    80004260:	03010413          	addi	s0,sp,48
    80004264:	00050993          	mv	s3,a0
    80004268:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000426c:	00000913          	li	s2,0
    80004270:	00c0006f          	j	8000427c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	8b0080e7          	jalr	-1872(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000427c:	ffffd097          	auipc	ra,0xffffd
    80004280:	250080e7          	jalr	592(ra) # 800014cc <_Z4getcv>
    80004284:	0005059b          	sext.w	a1,a0
    80004288:	01b00793          	li	a5,27
    8000428c:	02f58a63          	beq	a1,a5,800042c0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004290:	0084b503          	ld	a0,8(s1)
    80004294:	00001097          	auipc	ra,0x1
    80004298:	c64080e7          	jalr	-924(ra) # 80004ef8 <_ZN9BufferCPP3putEi>
        i++;
    8000429c:	0019071b          	addiw	a4,s2,1
    800042a0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800042a4:	0004a683          	lw	a3,0(s1)
    800042a8:	0026979b          	slliw	a5,a3,0x2
    800042ac:	00d787bb          	addw	a5,a5,a3
    800042b0:	0017979b          	slliw	a5,a5,0x1
    800042b4:	02f767bb          	remw	a5,a4,a5
    800042b8:	fc0792e3          	bnez	a5,8000427c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800042bc:	fb9ff06f          	j	80004274 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800042c0:	00100793          	li	a5,1
    800042c4:	00006717          	auipc	a4,0x6
    800042c8:	3af72a23          	sw	a5,948(a4) # 8000a678 <_ZL9threadEnd>
    td->buffer->put('!');
    800042cc:	0209b783          	ld	a5,32(s3)
    800042d0:	02100593          	li	a1,33
    800042d4:	0087b503          	ld	a0,8(a5)
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	c20080e7          	jalr	-992(ra) # 80004ef8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800042e0:	0104b503          	ld	a0,16(s1)
    800042e4:	ffffe097          	auipc	ra,0xffffe
    800042e8:	918080e7          	jalr	-1768(ra) # 80001bfc <_ZN9Semaphore6signalEv>
}
    800042ec:	02813083          	ld	ra,40(sp)
    800042f0:	02013403          	ld	s0,32(sp)
    800042f4:	01813483          	ld	s1,24(sp)
    800042f8:	01013903          	ld	s2,16(sp)
    800042fc:	00813983          	ld	s3,8(sp)
    80004300:	03010113          	addi	sp,sp,48
    80004304:	00008067          	ret

0000000080004308 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004308:	fe010113          	addi	sp,sp,-32
    8000430c:	00113c23          	sd	ra,24(sp)
    80004310:	00813823          	sd	s0,16(sp)
    80004314:	00913423          	sd	s1,8(sp)
    80004318:	01213023          	sd	s2,0(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004324:	00000913          	li	s2,0
    80004328:	00c0006f          	j	80004334 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000432c:	ffffd097          	auipc	ra,0xffffd
    80004330:	7f8080e7          	jalr	2040(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004334:	00006797          	auipc	a5,0x6
    80004338:	3447a783          	lw	a5,836(a5) # 8000a678 <_ZL9threadEnd>
    8000433c:	02079e63          	bnez	a5,80004378 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004340:	0004a583          	lw	a1,0(s1)
    80004344:	0305859b          	addiw	a1,a1,48
    80004348:	0084b503          	ld	a0,8(s1)
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	bac080e7          	jalr	-1108(ra) # 80004ef8 <_ZN9BufferCPP3putEi>
        i++;
    80004354:	0019071b          	addiw	a4,s2,1
    80004358:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000435c:	0004a683          	lw	a3,0(s1)
    80004360:	0026979b          	slliw	a5,a3,0x2
    80004364:	00d787bb          	addw	a5,a5,a3
    80004368:	0017979b          	slliw	a5,a5,0x1
    8000436c:	02f767bb          	remw	a5,a4,a5
    80004370:	fc0792e3          	bnez	a5,80004334 <_ZN12ProducerSync8producerEPv+0x2c>
    80004374:	fb9ff06f          	j	8000432c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004378:	0104b503          	ld	a0,16(s1)
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	880080e7          	jalr	-1920(ra) # 80001bfc <_ZN9Semaphore6signalEv>
}
    80004384:	01813083          	ld	ra,24(sp)
    80004388:	01013403          	ld	s0,16(sp)
    8000438c:	00813483          	ld	s1,8(sp)
    80004390:	00013903          	ld	s2,0(sp)
    80004394:	02010113          	addi	sp,sp,32
    80004398:	00008067          	ret

000000008000439c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000439c:	fd010113          	addi	sp,sp,-48
    800043a0:	02113423          	sd	ra,40(sp)
    800043a4:	02813023          	sd	s0,32(sp)
    800043a8:	00913c23          	sd	s1,24(sp)
    800043ac:	01213823          	sd	s2,16(sp)
    800043b0:	01313423          	sd	s3,8(sp)
    800043b4:	01413023          	sd	s4,0(sp)
    800043b8:	03010413          	addi	s0,sp,48
    800043bc:	00050993          	mv	s3,a0
    800043c0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800043c4:	00000a13          	li	s4,0
    800043c8:	01c0006f          	j	800043e4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800043cc:	ffffd097          	auipc	ra,0xffffd
    800043d0:	758080e7          	jalr	1880(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    800043d4:	0500006f          	j	80004424 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800043d8:	00a00513          	li	a0,10
    800043dc:	ffffd097          	auipc	ra,0xffffd
    800043e0:	124080e7          	jalr	292(ra) # 80001500 <_Z4putcc>
    while (!threadEnd) {
    800043e4:	00006797          	auipc	a5,0x6
    800043e8:	2947a783          	lw	a5,660(a5) # 8000a678 <_ZL9threadEnd>
    800043ec:	06079263          	bnez	a5,80004450 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800043f0:	00893503          	ld	a0,8(s2)
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	b94080e7          	jalr	-1132(ra) # 80004f88 <_ZN9BufferCPP3getEv>
        i++;
    800043fc:	001a049b          	addiw	s1,s4,1
    80004400:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004404:	0ff57513          	andi	a0,a0,255
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	0f8080e7          	jalr	248(ra) # 80001500 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004410:	00092703          	lw	a4,0(s2)
    80004414:	0027179b          	slliw	a5,a4,0x2
    80004418:	00e787bb          	addw	a5,a5,a4
    8000441c:	02f4e7bb          	remw	a5,s1,a5
    80004420:	fa0786e3          	beqz	a5,800043cc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004424:	05000793          	li	a5,80
    80004428:	02f4e4bb          	remw	s1,s1,a5
    8000442c:	fa049ce3          	bnez	s1,800043e4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004430:	fa9ff06f          	j	800043d8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004434:	0209b783          	ld	a5,32(s3)
    80004438:	0087b503          	ld	a0,8(a5)
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	b4c080e7          	jalr	-1204(ra) # 80004f88 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004444:	0ff57513          	andi	a0,a0,255
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	8a8080e7          	jalr	-1880(ra) # 80001cf0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004450:	0209b783          	ld	a5,32(s3)
    80004454:	0087b503          	ld	a0,8(a5)
    80004458:	00001097          	auipc	ra,0x1
    8000445c:	bbc080e7          	jalr	-1092(ra) # 80005014 <_ZN9BufferCPP6getCntEv>
    80004460:	fca04ae3          	bgtz	a0,80004434 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004464:	01093503          	ld	a0,16(s2)
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	794080e7          	jalr	1940(ra) # 80001bfc <_ZN9Semaphore6signalEv>
}
    80004470:	02813083          	ld	ra,40(sp)
    80004474:	02013403          	ld	s0,32(sp)
    80004478:	01813483          	ld	s1,24(sp)
    8000447c:	01013903          	ld	s2,16(sp)
    80004480:	00813983          	ld	s3,8(sp)
    80004484:	00013a03          	ld	s4,0(sp)
    80004488:	03010113          	addi	sp,sp,48
    8000448c:	00008067          	ret

0000000080004490 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004490:	f8010113          	addi	sp,sp,-128
    80004494:	06113c23          	sd	ra,120(sp)
    80004498:	06813823          	sd	s0,112(sp)
    8000449c:	06913423          	sd	s1,104(sp)
    800044a0:	07213023          	sd	s2,96(sp)
    800044a4:	05313c23          	sd	s3,88(sp)
    800044a8:	05413823          	sd	s4,80(sp)
    800044ac:	05513423          	sd	s5,72(sp)
    800044b0:	05613023          	sd	s6,64(sp)
    800044b4:	03713c23          	sd	s7,56(sp)
    800044b8:	03813823          	sd	s8,48(sp)
    800044bc:	03913423          	sd	s9,40(sp)
    800044c0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800044c4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800044c8:	00004517          	auipc	a0,0x4
    800044cc:	cb050513          	addi	a0,a0,-848 # 80008178 <_ZZ16printIntegerMinemE6digits+0x158>
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	604080e7          	jalr	1540(ra) # 80004ad4 <_Z11printStringPKc>
    getString(input, 30);
    800044d8:	01e00593          	li	a1,30
    800044dc:	f8040493          	addi	s1,s0,-128
    800044e0:	00048513          	mv	a0,s1
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	678080e7          	jalr	1656(ra) # 80004b5c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800044ec:	00048513          	mv	a0,s1
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	744080e7          	jalr	1860(ra) # 80004c34 <_Z11stringToIntPKc>
    800044f8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800044fc:	00004517          	auipc	a0,0x4
    80004500:	c9c50513          	addi	a0,a0,-868 # 80008198 <_ZZ16printIntegerMinemE6digits+0x178>
    80004504:	00000097          	auipc	ra,0x0
    80004508:	5d0080e7          	jalr	1488(ra) # 80004ad4 <_Z11printStringPKc>
    getString(input, 30);
    8000450c:	01e00593          	li	a1,30
    80004510:	00048513          	mv	a0,s1
    80004514:	00000097          	auipc	ra,0x0
    80004518:	648080e7          	jalr	1608(ra) # 80004b5c <_Z9getStringPci>
    n = stringToInt(input);
    8000451c:	00048513          	mv	a0,s1
    80004520:	00000097          	auipc	ra,0x0
    80004524:	714080e7          	jalr	1812(ra) # 80004c34 <_Z11stringToIntPKc>
    80004528:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000452c:	00004517          	auipc	a0,0x4
    80004530:	c8c50513          	addi	a0,a0,-884 # 800081b8 <_ZZ16printIntegerMinemE6digits+0x198>
    80004534:	00000097          	auipc	ra,0x0
    80004538:	5a0080e7          	jalr	1440(ra) # 80004ad4 <_Z11printStringPKc>
    8000453c:	00000613          	li	a2,0
    80004540:	00a00593          	li	a1,10
    80004544:	00090513          	mv	a0,s2
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	73c080e7          	jalr	1852(ra) # 80004c84 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004550:	00004517          	auipc	a0,0x4
    80004554:	c8050513          	addi	a0,a0,-896 # 800081d0 <_ZZ16printIntegerMinemE6digits+0x1b0>
    80004558:	00000097          	auipc	ra,0x0
    8000455c:	57c080e7          	jalr	1404(ra) # 80004ad4 <_Z11printStringPKc>
    80004560:	00000613          	li	a2,0
    80004564:	00a00593          	li	a1,10
    80004568:	00048513          	mv	a0,s1
    8000456c:	00000097          	auipc	ra,0x0
    80004570:	718080e7          	jalr	1816(ra) # 80004c84 <_Z8printIntiii>
    printString(".\n");
    80004574:	00004517          	auipc	a0,0x4
    80004578:	c7450513          	addi	a0,a0,-908 # 800081e8 <_ZZ16printIntegerMinemE6digits+0x1c8>
    8000457c:	00000097          	auipc	ra,0x0
    80004580:	558080e7          	jalr	1368(ra) # 80004ad4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004584:	0324c463          	blt	s1,s2,800045ac <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004588:	03205c63          	blez	s2,800045c0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000458c:	03800513          	li	a0,56
    80004590:	ffffd097          	auipc	ra,0xffffd
    80004594:	40c080e7          	jalr	1036(ra) # 8000199c <_Znwm>
    80004598:	00050a93          	mv	s5,a0
    8000459c:	00048593          	mv	a1,s1
    800045a0:	00001097          	auipc	ra,0x1
    800045a4:	804080e7          	jalr	-2044(ra) # 80004da4 <_ZN9BufferCPPC1Ei>
    800045a8:	0300006f          	j	800045d8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800045ac:	00004517          	auipc	a0,0x4
    800045b0:	c4450513          	addi	a0,a0,-956 # 800081f0 <_ZZ16printIntegerMinemE6digits+0x1d0>
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	520080e7          	jalr	1312(ra) # 80004ad4 <_Z11printStringPKc>
        return;
    800045bc:	0140006f          	j	800045d0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800045c0:	00004517          	auipc	a0,0x4
    800045c4:	c7050513          	addi	a0,a0,-912 # 80008230 <_ZZ16printIntegerMinemE6digits+0x210>
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	50c080e7          	jalr	1292(ra) # 80004ad4 <_Z11printStringPKc>
        return;
    800045d0:	000b8113          	mv	sp,s7
    800045d4:	2380006f          	j	8000480c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800045d8:	01000513          	li	a0,16
    800045dc:	ffffd097          	auipc	ra,0xffffd
    800045e0:	3c0080e7          	jalr	960(ra) # 8000199c <_Znwm>
    800045e4:	00050493          	mv	s1,a0
    800045e8:	00000593          	li	a1,0
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	5ac080e7          	jalr	1452(ra) # 80001b98 <_ZN9SemaphoreC1Ej>
    800045f4:	00006797          	auipc	a5,0x6
    800045f8:	0897b623          	sd	s1,140(a5) # 8000a680 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800045fc:	00391793          	slli	a5,s2,0x3
    80004600:	00f78793          	addi	a5,a5,15
    80004604:	ff07f793          	andi	a5,a5,-16
    80004608:	40f10133          	sub	sp,sp,a5
    8000460c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004610:	0019071b          	addiw	a4,s2,1
    80004614:	00171793          	slli	a5,a4,0x1
    80004618:	00e787b3          	add	a5,a5,a4
    8000461c:	00379793          	slli	a5,a5,0x3
    80004620:	00f78793          	addi	a5,a5,15
    80004624:	ff07f793          	andi	a5,a5,-16
    80004628:	40f10133          	sub	sp,sp,a5
    8000462c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004630:	00191c13          	slli	s8,s2,0x1
    80004634:	012c07b3          	add	a5,s8,s2
    80004638:	00379793          	slli	a5,a5,0x3
    8000463c:	00fa07b3          	add	a5,s4,a5
    80004640:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004644:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004648:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000464c:	02800513          	li	a0,40
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	34c080e7          	jalr	844(ra) # 8000199c <_Znwm>
    80004658:	00050b13          	mv	s6,a0
    8000465c:	012c0c33          	add	s8,s8,s2
    80004660:	003c1c13          	slli	s8,s8,0x3
    80004664:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	500080e7          	jalr	1280(ra) # 80001b68 <_ZN6ThreadC1Ev>
    80004670:	00006797          	auipc	a5,0x6
    80004674:	f0878793          	addi	a5,a5,-248 # 8000a578 <_ZTV12ConsumerSync+0x10>
    80004678:	00fb3023          	sd	a5,0(s6)
    8000467c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004680:	000b0513          	mv	a0,s6
    80004684:	ffffd097          	auipc	ra,0xffffd
    80004688:	44c080e7          	jalr	1100(ra) # 80001ad0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000468c:	00000493          	li	s1,0
    80004690:	0380006f          	j	800046c8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004694:	00006797          	auipc	a5,0x6
    80004698:	ebc78793          	addi	a5,a5,-324 # 8000a550 <_ZTV12ProducerSync+0x10>
    8000469c:	00fcb023          	sd	a5,0(s9)
    800046a0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800046a4:	00349793          	slli	a5,s1,0x3
    800046a8:	00f987b3          	add	a5,s3,a5
    800046ac:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800046b0:	00349793          	slli	a5,s1,0x3
    800046b4:	00f987b3          	add	a5,s3,a5
    800046b8:	0007b503          	ld	a0,0(a5)
    800046bc:	ffffd097          	auipc	ra,0xffffd
    800046c0:	414080e7          	jalr	1044(ra) # 80001ad0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800046c4:	0014849b          	addiw	s1,s1,1
    800046c8:	0b24d063          	bge	s1,s2,80004768 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800046cc:	00149793          	slli	a5,s1,0x1
    800046d0:	009787b3          	add	a5,a5,s1
    800046d4:	00379793          	slli	a5,a5,0x3
    800046d8:	00fa07b3          	add	a5,s4,a5
    800046dc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800046e0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800046e4:	00006717          	auipc	a4,0x6
    800046e8:	f9c73703          	ld	a4,-100(a4) # 8000a680 <_ZL10waitForAll>
    800046ec:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800046f0:	02905863          	blez	s1,80004720 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800046f4:	02800513          	li	a0,40
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	2a4080e7          	jalr	676(ra) # 8000199c <_Znwm>
    80004700:	00050c93          	mv	s9,a0
    80004704:	00149c13          	slli	s8,s1,0x1
    80004708:	009c0c33          	add	s8,s8,s1
    8000470c:	003c1c13          	slli	s8,s8,0x3
    80004710:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004714:	ffffd097          	auipc	ra,0xffffd
    80004718:	454080e7          	jalr	1108(ra) # 80001b68 <_ZN6ThreadC1Ev>
    8000471c:	f79ff06f          	j	80004694 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004720:	02800513          	li	a0,40
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	278080e7          	jalr	632(ra) # 8000199c <_Znwm>
    8000472c:	00050c93          	mv	s9,a0
    80004730:	00149c13          	slli	s8,s1,0x1
    80004734:	009c0c33          	add	s8,s8,s1
    80004738:	003c1c13          	slli	s8,s8,0x3
    8000473c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	428080e7          	jalr	1064(ra) # 80001b68 <_ZN6ThreadC1Ev>
    80004748:	00006797          	auipc	a5,0x6
    8000474c:	de078793          	addi	a5,a5,-544 # 8000a528 <_ZTV16ProducerKeyboard+0x10>
    80004750:	00fcb023          	sd	a5,0(s9)
    80004754:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004758:	00349793          	slli	a5,s1,0x3
    8000475c:	00f987b3          	add	a5,s3,a5
    80004760:	0197b023          	sd	s9,0(a5)
    80004764:	f4dff06f          	j	800046b0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	3bc080e7          	jalr	956(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004770:	00000493          	li	s1,0
    80004774:	00994e63          	blt	s2,s1,80004790 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004778:	00006517          	auipc	a0,0x6
    8000477c:	f0853503          	ld	a0,-248(a0) # 8000a680 <_ZL10waitForAll>
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	450080e7          	jalr	1104(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004788:	0014849b          	addiw	s1,s1,1
    8000478c:	fe9ff06f          	j	80004774 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004790:	00000493          	li	s1,0
    80004794:	0080006f          	j	8000479c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004798:	0014849b          	addiw	s1,s1,1
    8000479c:	0324d263          	bge	s1,s2,800047c0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800047a0:	00349793          	slli	a5,s1,0x3
    800047a4:	00f987b3          	add	a5,s3,a5
    800047a8:	0007b503          	ld	a0,0(a5)
    800047ac:	fe0506e3          	beqz	a0,80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800047b0:	00053783          	ld	a5,0(a0)
    800047b4:	0087b783          	ld	a5,8(a5)
    800047b8:	000780e7          	jalr	a5
    800047bc:	fddff06f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800047c0:	000b0a63          	beqz	s6,800047d4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800047c4:	000b3783          	ld	a5,0(s6)
    800047c8:	0087b783          	ld	a5,8(a5)
    800047cc:	000b0513          	mv	a0,s6
    800047d0:	000780e7          	jalr	a5
    delete waitForAll;
    800047d4:	00006517          	auipc	a0,0x6
    800047d8:	eac53503          	ld	a0,-340(a0) # 8000a680 <_ZL10waitForAll>
    800047dc:	00050863          	beqz	a0,800047ec <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800047e0:	00053783          	ld	a5,0(a0)
    800047e4:	0087b783          	ld	a5,8(a5)
    800047e8:	000780e7          	jalr	a5
    delete buffer;
    800047ec:	000a8e63          	beqz	s5,80004808 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800047f0:	000a8513          	mv	a0,s5
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	8a8080e7          	jalr	-1880(ra) # 8000509c <_ZN9BufferCPPD1Ev>
    800047fc:	000a8513          	mv	a0,s5
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	1c4080e7          	jalr	452(ra) # 800019c4 <_ZdlPv>
    80004808:	000b8113          	mv	sp,s7

}
    8000480c:	f8040113          	addi	sp,s0,-128
    80004810:	07813083          	ld	ra,120(sp)
    80004814:	07013403          	ld	s0,112(sp)
    80004818:	06813483          	ld	s1,104(sp)
    8000481c:	06013903          	ld	s2,96(sp)
    80004820:	05813983          	ld	s3,88(sp)
    80004824:	05013a03          	ld	s4,80(sp)
    80004828:	04813a83          	ld	s5,72(sp)
    8000482c:	04013b03          	ld	s6,64(sp)
    80004830:	03813b83          	ld	s7,56(sp)
    80004834:	03013c03          	ld	s8,48(sp)
    80004838:	02813c83          	ld	s9,40(sp)
    8000483c:	08010113          	addi	sp,sp,128
    80004840:	00008067          	ret
    80004844:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004848:	000a8513          	mv	a0,s5
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	178080e7          	jalr	376(ra) # 800019c4 <_ZdlPv>
    80004854:	00048513          	mv	a0,s1
    80004858:	00007097          	auipc	ra,0x7
    8000485c:	f10080e7          	jalr	-240(ra) # 8000b768 <_Unwind_Resume>
    80004860:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004864:	00048513          	mv	a0,s1
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	15c080e7          	jalr	348(ra) # 800019c4 <_ZdlPv>
    80004870:	00090513          	mv	a0,s2
    80004874:	00007097          	auipc	ra,0x7
    80004878:	ef4080e7          	jalr	-268(ra) # 8000b768 <_Unwind_Resume>
    8000487c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004880:	000b0513          	mv	a0,s6
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	140080e7          	jalr	320(ra) # 800019c4 <_ZdlPv>
    8000488c:	00048513          	mv	a0,s1
    80004890:	00007097          	auipc	ra,0x7
    80004894:	ed8080e7          	jalr	-296(ra) # 8000b768 <_Unwind_Resume>
    80004898:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000489c:	000c8513          	mv	a0,s9
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	124080e7          	jalr	292(ra) # 800019c4 <_ZdlPv>
    800048a8:	00048513          	mv	a0,s1
    800048ac:	00007097          	auipc	ra,0x7
    800048b0:	ebc080e7          	jalr	-324(ra) # 8000b768 <_Unwind_Resume>
    800048b4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800048b8:	000c8513          	mv	a0,s9
    800048bc:	ffffd097          	auipc	ra,0xffffd
    800048c0:	108080e7          	jalr	264(ra) # 800019c4 <_ZdlPv>
    800048c4:	00048513          	mv	a0,s1
    800048c8:	00007097          	auipc	ra,0x7
    800048cc:	ea0080e7          	jalr	-352(ra) # 8000b768 <_Unwind_Resume>

00000000800048d0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800048d0:	ff010113          	addi	sp,sp,-16
    800048d4:	00113423          	sd	ra,8(sp)
    800048d8:	00813023          	sd	s0,0(sp)
    800048dc:	01010413          	addi	s0,sp,16
    800048e0:	00006797          	auipc	a5,0x6
    800048e4:	c9878793          	addi	a5,a5,-872 # 8000a578 <_ZTV12ConsumerSync+0x10>
    800048e8:	00f53023          	sd	a5,0(a0)
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	02c080e7          	jalr	44(ra) # 80001918 <_ZN6ThreadD1Ev>
    800048f4:	00813083          	ld	ra,8(sp)
    800048f8:	00013403          	ld	s0,0(sp)
    800048fc:	01010113          	addi	sp,sp,16
    80004900:	00008067          	ret

0000000080004904 <_ZN12ConsumerSyncD0Ev>:
    80004904:	fe010113          	addi	sp,sp,-32
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00813823          	sd	s0,16(sp)
    80004910:	00913423          	sd	s1,8(sp)
    80004914:	02010413          	addi	s0,sp,32
    80004918:	00050493          	mv	s1,a0
    8000491c:	00006797          	auipc	a5,0x6
    80004920:	c5c78793          	addi	a5,a5,-932 # 8000a578 <_ZTV12ConsumerSync+0x10>
    80004924:	00f53023          	sd	a5,0(a0)
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	ff0080e7          	jalr	-16(ra) # 80001918 <_ZN6ThreadD1Ev>
    80004930:	00048513          	mv	a0,s1
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	090080e7          	jalr	144(ra) # 800019c4 <_ZdlPv>
    8000493c:	01813083          	ld	ra,24(sp)
    80004940:	01013403          	ld	s0,16(sp)
    80004944:	00813483          	ld	s1,8(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret

0000000080004950 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004950:	ff010113          	addi	sp,sp,-16
    80004954:	00113423          	sd	ra,8(sp)
    80004958:	00813023          	sd	s0,0(sp)
    8000495c:	01010413          	addi	s0,sp,16
    80004960:	00006797          	auipc	a5,0x6
    80004964:	bf078793          	addi	a5,a5,-1040 # 8000a550 <_ZTV12ProducerSync+0x10>
    80004968:	00f53023          	sd	a5,0(a0)
    8000496c:	ffffd097          	auipc	ra,0xffffd
    80004970:	fac080e7          	jalr	-84(ra) # 80001918 <_ZN6ThreadD1Ev>
    80004974:	00813083          	ld	ra,8(sp)
    80004978:	00013403          	ld	s0,0(sp)
    8000497c:	01010113          	addi	sp,sp,16
    80004980:	00008067          	ret

0000000080004984 <_ZN12ProducerSyncD0Ev>:
    80004984:	fe010113          	addi	sp,sp,-32
    80004988:	00113c23          	sd	ra,24(sp)
    8000498c:	00813823          	sd	s0,16(sp)
    80004990:	00913423          	sd	s1,8(sp)
    80004994:	02010413          	addi	s0,sp,32
    80004998:	00050493          	mv	s1,a0
    8000499c:	00006797          	auipc	a5,0x6
    800049a0:	bb478793          	addi	a5,a5,-1100 # 8000a550 <_ZTV12ProducerSync+0x10>
    800049a4:	00f53023          	sd	a5,0(a0)
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	f70080e7          	jalr	-144(ra) # 80001918 <_ZN6ThreadD1Ev>
    800049b0:	00048513          	mv	a0,s1
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	010080e7          	jalr	16(ra) # 800019c4 <_ZdlPv>
    800049bc:	01813083          	ld	ra,24(sp)
    800049c0:	01013403          	ld	s0,16(sp)
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	00008067          	ret

00000000800049d0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800049d0:	ff010113          	addi	sp,sp,-16
    800049d4:	00113423          	sd	ra,8(sp)
    800049d8:	00813023          	sd	s0,0(sp)
    800049dc:	01010413          	addi	s0,sp,16
    800049e0:	00006797          	auipc	a5,0x6
    800049e4:	b4878793          	addi	a5,a5,-1208 # 8000a528 <_ZTV16ProducerKeyboard+0x10>
    800049e8:	00f53023          	sd	a5,0(a0)
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	f2c080e7          	jalr	-212(ra) # 80001918 <_ZN6ThreadD1Ev>
    800049f4:	00813083          	ld	ra,8(sp)
    800049f8:	00013403          	ld	s0,0(sp)
    800049fc:	01010113          	addi	sp,sp,16
    80004a00:	00008067          	ret

0000000080004a04 <_ZN16ProducerKeyboardD0Ev>:
    80004a04:	fe010113          	addi	sp,sp,-32
    80004a08:	00113c23          	sd	ra,24(sp)
    80004a0c:	00813823          	sd	s0,16(sp)
    80004a10:	00913423          	sd	s1,8(sp)
    80004a14:	02010413          	addi	s0,sp,32
    80004a18:	00050493          	mv	s1,a0
    80004a1c:	00006797          	auipc	a5,0x6
    80004a20:	b0c78793          	addi	a5,a5,-1268 # 8000a528 <_ZTV16ProducerKeyboard+0x10>
    80004a24:	00f53023          	sd	a5,0(a0)
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	ef0080e7          	jalr	-272(ra) # 80001918 <_ZN6ThreadD1Ev>
    80004a30:	00048513          	mv	a0,s1
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	f90080e7          	jalr	-112(ra) # 800019c4 <_ZdlPv>
    80004a3c:	01813083          	ld	ra,24(sp)
    80004a40:	01013403          	ld	s0,16(sp)
    80004a44:	00813483          	ld	s1,8(sp)
    80004a48:	02010113          	addi	sp,sp,32
    80004a4c:	00008067          	ret

0000000080004a50 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004a50:	ff010113          	addi	sp,sp,-16
    80004a54:	00113423          	sd	ra,8(sp)
    80004a58:	00813023          	sd	s0,0(sp)
    80004a5c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004a60:	02053583          	ld	a1,32(a0)
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	7e4080e7          	jalr	2020(ra) # 80004248 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004a6c:	00813083          	ld	ra,8(sp)
    80004a70:	00013403          	ld	s0,0(sp)
    80004a74:	01010113          	addi	sp,sp,16
    80004a78:	00008067          	ret

0000000080004a7c <_ZN12ProducerSync3runEv>:
    void run() override {
    80004a7c:	ff010113          	addi	sp,sp,-16
    80004a80:	00113423          	sd	ra,8(sp)
    80004a84:	00813023          	sd	s0,0(sp)
    80004a88:	01010413          	addi	s0,sp,16
        producer(td);
    80004a8c:	02053583          	ld	a1,32(a0)
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	878080e7          	jalr	-1928(ra) # 80004308 <_ZN12ProducerSync8producerEPv>
    }
    80004a98:	00813083          	ld	ra,8(sp)
    80004a9c:	00013403          	ld	s0,0(sp)
    80004aa0:	01010113          	addi	sp,sp,16
    80004aa4:	00008067          	ret

0000000080004aa8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004aa8:	ff010113          	addi	sp,sp,-16
    80004aac:	00113423          	sd	ra,8(sp)
    80004ab0:	00813023          	sd	s0,0(sp)
    80004ab4:	01010413          	addi	s0,sp,16
        consumer(td);
    80004ab8:	02053583          	ld	a1,32(a0)
    80004abc:	00000097          	auipc	ra,0x0
    80004ac0:	8e0080e7          	jalr	-1824(ra) # 8000439c <_ZN12ConsumerSync8consumerEPv>
    }
    80004ac4:	00813083          	ld	ra,8(sp)
    80004ac8:	00013403          	ld	s0,0(sp)
    80004acc:	01010113          	addi	sp,sp,16
    80004ad0:	00008067          	ret

0000000080004ad4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004ad4:	fe010113          	addi	sp,sp,-32
    80004ad8:	00113c23          	sd	ra,24(sp)
    80004adc:	00813823          	sd	s0,16(sp)
    80004ae0:	00913423          	sd	s1,8(sp)
    80004ae4:	02010413          	addi	s0,sp,32
    80004ae8:	00050493          	mv	s1,a0
    LOCK();
    80004aec:	00100613          	li	a2,1
    80004af0:	00000593          	li	a1,0
    80004af4:	00006517          	auipc	a0,0x6
    80004af8:	b9450513          	addi	a0,a0,-1132 # 8000a688 <lockPrint>
    80004afc:	ffffc097          	auipc	ra,0xffffc
    80004b00:	718080e7          	jalr	1816(ra) # 80001214 <copy_and_swap>
    80004b04:	00050863          	beqz	a0,80004b14 <_Z11printStringPKc+0x40>
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	844080e7          	jalr	-1980(ra) # 8000134c <_Z15thread_dispatchv>
    80004b10:	fddff06f          	j	80004aec <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004b14:	0004c503          	lbu	a0,0(s1)
    80004b18:	00050a63          	beqz	a0,80004b2c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	9e4080e7          	jalr	-1564(ra) # 80001500 <_Z4putcc>
        string++;
    80004b24:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004b28:	fedff06f          	j	80004b14 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004b2c:	00000613          	li	a2,0
    80004b30:	00100593          	li	a1,1
    80004b34:	00006517          	auipc	a0,0x6
    80004b38:	b5450513          	addi	a0,a0,-1196 # 8000a688 <lockPrint>
    80004b3c:	ffffc097          	auipc	ra,0xffffc
    80004b40:	6d8080e7          	jalr	1752(ra) # 80001214 <copy_and_swap>
    80004b44:	fe0514e3          	bnez	a0,80004b2c <_Z11printStringPKc+0x58>
}
    80004b48:	01813083          	ld	ra,24(sp)
    80004b4c:	01013403          	ld	s0,16(sp)
    80004b50:	00813483          	ld	s1,8(sp)
    80004b54:	02010113          	addi	sp,sp,32
    80004b58:	00008067          	ret

0000000080004b5c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004b5c:	fd010113          	addi	sp,sp,-48
    80004b60:	02113423          	sd	ra,40(sp)
    80004b64:	02813023          	sd	s0,32(sp)
    80004b68:	00913c23          	sd	s1,24(sp)
    80004b6c:	01213823          	sd	s2,16(sp)
    80004b70:	01313423          	sd	s3,8(sp)
    80004b74:	01413023          	sd	s4,0(sp)
    80004b78:	03010413          	addi	s0,sp,48
    80004b7c:	00050993          	mv	s3,a0
    80004b80:	00058a13          	mv	s4,a1
    LOCK();
    80004b84:	00100613          	li	a2,1
    80004b88:	00000593          	li	a1,0
    80004b8c:	00006517          	auipc	a0,0x6
    80004b90:	afc50513          	addi	a0,a0,-1284 # 8000a688 <lockPrint>
    80004b94:	ffffc097          	auipc	ra,0xffffc
    80004b98:	680080e7          	jalr	1664(ra) # 80001214 <copy_and_swap>
    80004b9c:	00050863          	beqz	a0,80004bac <_Z9getStringPci+0x50>
    80004ba0:	ffffc097          	auipc	ra,0xffffc
    80004ba4:	7ac080e7          	jalr	1964(ra) # 8000134c <_Z15thread_dispatchv>
    80004ba8:	fddff06f          	j	80004b84 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004bac:	00000913          	li	s2,0
    80004bb0:	00090493          	mv	s1,s2
    80004bb4:	0019091b          	addiw	s2,s2,1
    80004bb8:	03495a63          	bge	s2,s4,80004bec <_Z9getStringPci+0x90>
        cc = getc();
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	910080e7          	jalr	-1776(ra) # 800014cc <_Z4getcv>
        if(cc < 1)
    80004bc4:	02050463          	beqz	a0,80004bec <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004bc8:	009984b3          	add	s1,s3,s1
    80004bcc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004bd0:	00a00793          	li	a5,10
    80004bd4:	00f50a63          	beq	a0,a5,80004be8 <_Z9getStringPci+0x8c>
    80004bd8:	00d00793          	li	a5,13
    80004bdc:	fcf51ae3          	bne	a0,a5,80004bb0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004be0:	00090493          	mv	s1,s2
    80004be4:	0080006f          	j	80004bec <_Z9getStringPci+0x90>
    80004be8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004bec:	009984b3          	add	s1,s3,s1
    80004bf0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004bf4:	00000613          	li	a2,0
    80004bf8:	00100593          	li	a1,1
    80004bfc:	00006517          	auipc	a0,0x6
    80004c00:	a8c50513          	addi	a0,a0,-1396 # 8000a688 <lockPrint>
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	610080e7          	jalr	1552(ra) # 80001214 <copy_and_swap>
    80004c0c:	fe0514e3          	bnez	a0,80004bf4 <_Z9getStringPci+0x98>
    return buf;
}
    80004c10:	00098513          	mv	a0,s3
    80004c14:	02813083          	ld	ra,40(sp)
    80004c18:	02013403          	ld	s0,32(sp)
    80004c1c:	01813483          	ld	s1,24(sp)
    80004c20:	01013903          	ld	s2,16(sp)
    80004c24:	00813983          	ld	s3,8(sp)
    80004c28:	00013a03          	ld	s4,0(sp)
    80004c2c:	03010113          	addi	sp,sp,48
    80004c30:	00008067          	ret

0000000080004c34 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004c34:	ff010113          	addi	sp,sp,-16
    80004c38:	00813423          	sd	s0,8(sp)
    80004c3c:	01010413          	addi	s0,sp,16
    80004c40:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004c44:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004c48:	0006c603          	lbu	a2,0(a3)
    80004c4c:	fd06071b          	addiw	a4,a2,-48
    80004c50:	0ff77713          	andi	a4,a4,255
    80004c54:	00900793          	li	a5,9
    80004c58:	02e7e063          	bltu	a5,a4,80004c78 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004c5c:	0025179b          	slliw	a5,a0,0x2
    80004c60:	00a787bb          	addw	a5,a5,a0
    80004c64:	0017979b          	slliw	a5,a5,0x1
    80004c68:	00168693          	addi	a3,a3,1
    80004c6c:	00c787bb          	addw	a5,a5,a2
    80004c70:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004c74:	fd5ff06f          	j	80004c48 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004c78:	00813403          	ld	s0,8(sp)
    80004c7c:	01010113          	addi	sp,sp,16
    80004c80:	00008067          	ret

0000000080004c84 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004c84:	fc010113          	addi	sp,sp,-64
    80004c88:	02113c23          	sd	ra,56(sp)
    80004c8c:	02813823          	sd	s0,48(sp)
    80004c90:	02913423          	sd	s1,40(sp)
    80004c94:	03213023          	sd	s2,32(sp)
    80004c98:	01313c23          	sd	s3,24(sp)
    80004c9c:	04010413          	addi	s0,sp,64
    80004ca0:	00050493          	mv	s1,a0
    80004ca4:	00058913          	mv	s2,a1
    80004ca8:	00060993          	mv	s3,a2
    LOCK();
    80004cac:	00100613          	li	a2,1
    80004cb0:	00000593          	li	a1,0
    80004cb4:	00006517          	auipc	a0,0x6
    80004cb8:	9d450513          	addi	a0,a0,-1580 # 8000a688 <lockPrint>
    80004cbc:	ffffc097          	auipc	ra,0xffffc
    80004cc0:	558080e7          	jalr	1368(ra) # 80001214 <copy_and_swap>
    80004cc4:	00050863          	beqz	a0,80004cd4 <_Z8printIntiii+0x50>
    80004cc8:	ffffc097          	auipc	ra,0xffffc
    80004ccc:	684080e7          	jalr	1668(ra) # 8000134c <_Z15thread_dispatchv>
    80004cd0:	fddff06f          	j	80004cac <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004cd4:	00098463          	beqz	s3,80004cdc <_Z8printIntiii+0x58>
    80004cd8:	0804c463          	bltz	s1,80004d60 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004cdc:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004ce0:	00000593          	li	a1,0
    }

    i = 0;
    80004ce4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004ce8:	0009079b          	sext.w	a5,s2
    80004cec:	0325773b          	remuw	a4,a0,s2
    80004cf0:	00048613          	mv	a2,s1
    80004cf4:	0014849b          	addiw	s1,s1,1
    80004cf8:	02071693          	slli	a3,a4,0x20
    80004cfc:	0206d693          	srli	a3,a3,0x20
    80004d00:	00006717          	auipc	a4,0x6
    80004d04:	89070713          	addi	a4,a4,-1904 # 8000a590 <digits>
    80004d08:	00d70733          	add	a4,a4,a3
    80004d0c:	00074683          	lbu	a3,0(a4)
    80004d10:	fd040713          	addi	a4,s0,-48
    80004d14:	00c70733          	add	a4,a4,a2
    80004d18:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004d1c:	0005071b          	sext.w	a4,a0
    80004d20:	0325553b          	divuw	a0,a0,s2
    80004d24:	fcf772e3          	bgeu	a4,a5,80004ce8 <_Z8printIntiii+0x64>
    if(neg)
    80004d28:	00058c63          	beqz	a1,80004d40 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004d2c:	fd040793          	addi	a5,s0,-48
    80004d30:	009784b3          	add	s1,a5,s1
    80004d34:	02d00793          	li	a5,45
    80004d38:	fef48823          	sb	a5,-16(s1)
    80004d3c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004d40:	fff4849b          	addiw	s1,s1,-1
    80004d44:	0204c463          	bltz	s1,80004d6c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004d48:	fd040793          	addi	a5,s0,-48
    80004d4c:	009787b3          	add	a5,a5,s1
    80004d50:	ff07c503          	lbu	a0,-16(a5)
    80004d54:	ffffc097          	auipc	ra,0xffffc
    80004d58:	7ac080e7          	jalr	1964(ra) # 80001500 <_Z4putcc>
    80004d5c:	fe5ff06f          	j	80004d40 <_Z8printIntiii+0xbc>
        x = -xx;
    80004d60:	4090053b          	negw	a0,s1
        neg = 1;
    80004d64:	00100593          	li	a1,1
        x = -xx;
    80004d68:	f7dff06f          	j	80004ce4 <_Z8printIntiii+0x60>

    UNLOCK();
    80004d6c:	00000613          	li	a2,0
    80004d70:	00100593          	li	a1,1
    80004d74:	00006517          	auipc	a0,0x6
    80004d78:	91450513          	addi	a0,a0,-1772 # 8000a688 <lockPrint>
    80004d7c:	ffffc097          	auipc	ra,0xffffc
    80004d80:	498080e7          	jalr	1176(ra) # 80001214 <copy_and_swap>
    80004d84:	fe0514e3          	bnez	a0,80004d6c <_Z8printIntiii+0xe8>
    80004d88:	03813083          	ld	ra,56(sp)
    80004d8c:	03013403          	ld	s0,48(sp)
    80004d90:	02813483          	ld	s1,40(sp)
    80004d94:	02013903          	ld	s2,32(sp)
    80004d98:	01813983          	ld	s3,24(sp)
    80004d9c:	04010113          	addi	sp,sp,64
    80004da0:	00008067          	ret

0000000080004da4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004da4:	fd010113          	addi	sp,sp,-48
    80004da8:	02113423          	sd	ra,40(sp)
    80004dac:	02813023          	sd	s0,32(sp)
    80004db0:	00913c23          	sd	s1,24(sp)
    80004db4:	01213823          	sd	s2,16(sp)
    80004db8:	01313423          	sd	s3,8(sp)
    80004dbc:	03010413          	addi	s0,sp,48
    80004dc0:	00050493          	mv	s1,a0
    80004dc4:	00058913          	mv	s2,a1
    80004dc8:	0015879b          	addiw	a5,a1,1
    80004dcc:	0007851b          	sext.w	a0,a5
    80004dd0:	00f4a023          	sw	a5,0(s1)
    80004dd4:	0004a823          	sw	zero,16(s1)
    80004dd8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004ddc:	00251513          	slli	a0,a0,0x2
    80004de0:	ffffc097          	auipc	ra,0xffffc
    80004de4:	48c080e7          	jalr	1164(ra) # 8000126c <_Z9mem_allocm>
    80004de8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004dec:	01000513          	li	a0,16
    80004df0:	ffffd097          	auipc	ra,0xffffd
    80004df4:	bac080e7          	jalr	-1108(ra) # 8000199c <_Znwm>
    80004df8:	00050993          	mv	s3,a0
    80004dfc:	00000593          	li	a1,0
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	d98080e7          	jalr	-616(ra) # 80001b98 <_ZN9SemaphoreC1Ej>
    80004e08:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004e0c:	01000513          	li	a0,16
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	b8c080e7          	jalr	-1140(ra) # 8000199c <_Znwm>
    80004e18:	00050993          	mv	s3,a0
    80004e1c:	00090593          	mv	a1,s2
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	d78080e7          	jalr	-648(ra) # 80001b98 <_ZN9SemaphoreC1Ej>
    80004e28:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004e2c:	01000513          	li	a0,16
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	b6c080e7          	jalr	-1172(ra) # 8000199c <_Znwm>
    80004e38:	00050913          	mv	s2,a0
    80004e3c:	00100593          	li	a1,1
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	d58080e7          	jalr	-680(ra) # 80001b98 <_ZN9SemaphoreC1Ej>
    80004e48:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004e4c:	01000513          	li	a0,16
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	b4c080e7          	jalr	-1204(ra) # 8000199c <_Znwm>
    80004e58:	00050913          	mv	s2,a0
    80004e5c:	00100593          	li	a1,1
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	d38080e7          	jalr	-712(ra) # 80001b98 <_ZN9SemaphoreC1Ej>
    80004e68:	0324b823          	sd	s2,48(s1)
}
    80004e6c:	02813083          	ld	ra,40(sp)
    80004e70:	02013403          	ld	s0,32(sp)
    80004e74:	01813483          	ld	s1,24(sp)
    80004e78:	01013903          	ld	s2,16(sp)
    80004e7c:	00813983          	ld	s3,8(sp)
    80004e80:	03010113          	addi	sp,sp,48
    80004e84:	00008067          	ret
    80004e88:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004e8c:	00098513          	mv	a0,s3
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	b34080e7          	jalr	-1228(ra) # 800019c4 <_ZdlPv>
    80004e98:	00048513          	mv	a0,s1
    80004e9c:	00007097          	auipc	ra,0x7
    80004ea0:	8cc080e7          	jalr	-1844(ra) # 8000b768 <_Unwind_Resume>
    80004ea4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004ea8:	00098513          	mv	a0,s3
    80004eac:	ffffd097          	auipc	ra,0xffffd
    80004eb0:	b18080e7          	jalr	-1256(ra) # 800019c4 <_ZdlPv>
    80004eb4:	00048513          	mv	a0,s1
    80004eb8:	00007097          	auipc	ra,0x7
    80004ebc:	8b0080e7          	jalr	-1872(ra) # 8000b768 <_Unwind_Resume>
    80004ec0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004ec4:	00090513          	mv	a0,s2
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	afc080e7          	jalr	-1284(ra) # 800019c4 <_ZdlPv>
    80004ed0:	00048513          	mv	a0,s1
    80004ed4:	00007097          	auipc	ra,0x7
    80004ed8:	894080e7          	jalr	-1900(ra) # 8000b768 <_Unwind_Resume>
    80004edc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004ee0:	00090513          	mv	a0,s2
    80004ee4:	ffffd097          	auipc	ra,0xffffd
    80004ee8:	ae0080e7          	jalr	-1312(ra) # 800019c4 <_ZdlPv>
    80004eec:	00048513          	mv	a0,s1
    80004ef0:	00007097          	auipc	ra,0x7
    80004ef4:	878080e7          	jalr	-1928(ra) # 8000b768 <_Unwind_Resume>

0000000080004ef8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004ef8:	fe010113          	addi	sp,sp,-32
    80004efc:	00113c23          	sd	ra,24(sp)
    80004f00:	00813823          	sd	s0,16(sp)
    80004f04:	00913423          	sd	s1,8(sp)
    80004f08:	01213023          	sd	s2,0(sp)
    80004f0c:	02010413          	addi	s0,sp,32
    80004f10:	00050493          	mv	s1,a0
    80004f14:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004f18:	01853503          	ld	a0,24(a0)
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	cb4080e7          	jalr	-844(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004f24:	0304b503          	ld	a0,48(s1)
    80004f28:	ffffd097          	auipc	ra,0xffffd
    80004f2c:	ca8080e7          	jalr	-856(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004f30:	0084b783          	ld	a5,8(s1)
    80004f34:	0144a703          	lw	a4,20(s1)
    80004f38:	00271713          	slli	a4,a4,0x2
    80004f3c:	00e787b3          	add	a5,a5,a4
    80004f40:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004f44:	0144a783          	lw	a5,20(s1)
    80004f48:	0017879b          	addiw	a5,a5,1
    80004f4c:	0004a703          	lw	a4,0(s1)
    80004f50:	02e7e7bb          	remw	a5,a5,a4
    80004f54:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004f58:	0304b503          	ld	a0,48(s1)
    80004f5c:	ffffd097          	auipc	ra,0xffffd
    80004f60:	ca0080e7          	jalr	-864(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004f64:	0204b503          	ld	a0,32(s1)
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	c94080e7          	jalr	-876(ra) # 80001bfc <_ZN9Semaphore6signalEv>

}
    80004f70:	01813083          	ld	ra,24(sp)
    80004f74:	01013403          	ld	s0,16(sp)
    80004f78:	00813483          	ld	s1,8(sp)
    80004f7c:	00013903          	ld	s2,0(sp)
    80004f80:	02010113          	addi	sp,sp,32
    80004f84:	00008067          	ret

0000000080004f88 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004f88:	fe010113          	addi	sp,sp,-32
    80004f8c:	00113c23          	sd	ra,24(sp)
    80004f90:	00813823          	sd	s0,16(sp)
    80004f94:	00913423          	sd	s1,8(sp)
    80004f98:	01213023          	sd	s2,0(sp)
    80004f9c:	02010413          	addi	s0,sp,32
    80004fa0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004fa4:	02053503          	ld	a0,32(a0)
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	c28080e7          	jalr	-984(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004fb0:	0284b503          	ld	a0,40(s1)
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	c1c080e7          	jalr	-996(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004fbc:	0084b703          	ld	a4,8(s1)
    80004fc0:	0104a783          	lw	a5,16(s1)
    80004fc4:	00279693          	slli	a3,a5,0x2
    80004fc8:	00d70733          	add	a4,a4,a3
    80004fcc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004fd0:	0017879b          	addiw	a5,a5,1
    80004fd4:	0004a703          	lw	a4,0(s1)
    80004fd8:	02e7e7bb          	remw	a5,a5,a4
    80004fdc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004fe0:	0284b503          	ld	a0,40(s1)
    80004fe4:	ffffd097          	auipc	ra,0xffffd
    80004fe8:	c18080e7          	jalr	-1000(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004fec:	0184b503          	ld	a0,24(s1)
    80004ff0:	ffffd097          	auipc	ra,0xffffd
    80004ff4:	c0c080e7          	jalr	-1012(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ff8:	00090513          	mv	a0,s2
    80004ffc:	01813083          	ld	ra,24(sp)
    80005000:	01013403          	ld	s0,16(sp)
    80005004:	00813483          	ld	s1,8(sp)
    80005008:	00013903          	ld	s2,0(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005014:	fe010113          	addi	sp,sp,-32
    80005018:	00113c23          	sd	ra,24(sp)
    8000501c:	00813823          	sd	s0,16(sp)
    80005020:	00913423          	sd	s1,8(sp)
    80005024:	01213023          	sd	s2,0(sp)
    80005028:	02010413          	addi	s0,sp,32
    8000502c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005030:	02853503          	ld	a0,40(a0)
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	b9c080e7          	jalr	-1124(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000503c:	0304b503          	ld	a0,48(s1)
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	b90080e7          	jalr	-1136(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005048:	0144a783          	lw	a5,20(s1)
    8000504c:	0104a903          	lw	s2,16(s1)
    80005050:	0327ce63          	blt	a5,s2,8000508c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005054:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005058:	0304b503          	ld	a0,48(s1)
    8000505c:	ffffd097          	auipc	ra,0xffffd
    80005060:	ba0080e7          	jalr	-1120(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005064:	0284b503          	ld	a0,40(s1)
    80005068:	ffffd097          	auipc	ra,0xffffd
    8000506c:	b94080e7          	jalr	-1132(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005070:	00090513          	mv	a0,s2
    80005074:	01813083          	ld	ra,24(sp)
    80005078:	01013403          	ld	s0,16(sp)
    8000507c:	00813483          	ld	s1,8(sp)
    80005080:	00013903          	ld	s2,0(sp)
    80005084:	02010113          	addi	sp,sp,32
    80005088:	00008067          	ret
        ret = cap - head + tail;
    8000508c:	0004a703          	lw	a4,0(s1)
    80005090:	4127093b          	subw	s2,a4,s2
    80005094:	00f9093b          	addw	s2,s2,a5
    80005098:	fc1ff06f          	j	80005058 <_ZN9BufferCPP6getCntEv+0x44>

000000008000509c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000509c:	fe010113          	addi	sp,sp,-32
    800050a0:	00113c23          	sd	ra,24(sp)
    800050a4:	00813823          	sd	s0,16(sp)
    800050a8:	00913423          	sd	s1,8(sp)
    800050ac:	02010413          	addi	s0,sp,32
    800050b0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800050b4:	00a00513          	li	a0,10
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	c38080e7          	jalr	-968(ra) # 80001cf0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800050c0:	00003517          	auipc	a0,0x3
    800050c4:	29850513          	addi	a0,a0,664 # 80008358 <_ZZ16printIntegerMinemE6digits+0x338>
    800050c8:	00000097          	auipc	ra,0x0
    800050cc:	a0c080e7          	jalr	-1524(ra) # 80004ad4 <_Z11printStringPKc>
    while (getCnt()) {
    800050d0:	00048513          	mv	a0,s1
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	f40080e7          	jalr	-192(ra) # 80005014 <_ZN9BufferCPP6getCntEv>
    800050dc:	02050c63          	beqz	a0,80005114 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800050e0:	0084b783          	ld	a5,8(s1)
    800050e4:	0104a703          	lw	a4,16(s1)
    800050e8:	00271713          	slli	a4,a4,0x2
    800050ec:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800050f0:	0007c503          	lbu	a0,0(a5)
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	bfc080e7          	jalr	-1028(ra) # 80001cf0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800050fc:	0104a783          	lw	a5,16(s1)
    80005100:	0017879b          	addiw	a5,a5,1
    80005104:	0004a703          	lw	a4,0(s1)
    80005108:	02e7e7bb          	remw	a5,a5,a4
    8000510c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005110:	fc1ff06f          	j	800050d0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005114:	02100513          	li	a0,33
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	bd8080e7          	jalr	-1064(ra) # 80001cf0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005120:	00a00513          	li	a0,10
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	bcc080e7          	jalr	-1076(ra) # 80001cf0 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000512c:	0084b503          	ld	a0,8(s1)
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	170080e7          	jalr	368(ra) # 800012a0 <_Z8mem_freePv>
    delete itemAvailable;
    80005138:	0204b503          	ld	a0,32(s1)
    8000513c:	00050863          	beqz	a0,8000514c <_ZN9BufferCPPD1Ev+0xb0>
    80005140:	00053783          	ld	a5,0(a0)
    80005144:	0087b783          	ld	a5,8(a5)
    80005148:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000514c:	0184b503          	ld	a0,24(s1)
    80005150:	00050863          	beqz	a0,80005160 <_ZN9BufferCPPD1Ev+0xc4>
    80005154:	00053783          	ld	a5,0(a0)
    80005158:	0087b783          	ld	a5,8(a5)
    8000515c:	000780e7          	jalr	a5
    delete mutexTail;
    80005160:	0304b503          	ld	a0,48(s1)
    80005164:	00050863          	beqz	a0,80005174 <_ZN9BufferCPPD1Ev+0xd8>
    80005168:	00053783          	ld	a5,0(a0)
    8000516c:	0087b783          	ld	a5,8(a5)
    80005170:	000780e7          	jalr	a5
    delete mutexHead;
    80005174:	0284b503          	ld	a0,40(s1)
    80005178:	00050863          	beqz	a0,80005188 <_ZN9BufferCPPD1Ev+0xec>
    8000517c:	00053783          	ld	a5,0(a0)
    80005180:	0087b783          	ld	a5,8(a5)
    80005184:	000780e7          	jalr	a5
}
    80005188:	01813083          	ld	ra,24(sp)
    8000518c:	01013403          	ld	s0,16(sp)
    80005190:	00813483          	ld	s1,8(sp)
    80005194:	02010113          	addi	sp,sp,32
    80005198:	00008067          	ret

000000008000519c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000519c:	fe010113          	addi	sp,sp,-32
    800051a0:	00113c23          	sd	ra,24(sp)
    800051a4:	00813823          	sd	s0,16(sp)
    800051a8:	00913423          	sd	s1,8(sp)
    800051ac:	01213023          	sd	s2,0(sp)
    800051b0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800051b4:	00003517          	auipc	a0,0x3
    800051b8:	1bc50513          	addi	a0,a0,444 # 80008370 <_ZZ16printIntegerMinemE6digits+0x350>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	918080e7          	jalr	-1768(ra) # 80004ad4 <_Z11printStringPKc>
    int test = getc() - '0';
    800051c4:	ffffc097          	auipc	ra,0xffffc
    800051c8:	308080e7          	jalr	776(ra) # 800014cc <_Z4getcv>
    800051cc:	00050913          	mv	s2,a0
    800051d0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800051d4:	ffffc097          	auipc	ra,0xffffc
    800051d8:	2f8080e7          	jalr	760(ra) # 800014cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800051dc:	fcb9091b          	addiw	s2,s2,-53
    800051e0:	00100793          	li	a5,1
    800051e4:	0327f463          	bgeu	a5,s2,8000520c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800051e8:	00700793          	li	a5,7
    800051ec:	0e97e263          	bltu	a5,s1,800052d0 <_Z8userMainv+0x134>
    800051f0:	00249493          	slli	s1,s1,0x2
    800051f4:	00003717          	auipc	a4,0x3
    800051f8:	39470713          	addi	a4,a4,916 # 80008588 <_ZZ16printIntegerMinemE6digits+0x568>
    800051fc:	00e484b3          	add	s1,s1,a4
    80005200:	0004a783          	lw	a5,0(s1)
    80005204:	00e787b3          	add	a5,a5,a4
    80005208:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000520c:	00003517          	auipc	a0,0x3
    80005210:	18450513          	addi	a0,a0,388 # 80008390 <_ZZ16printIntegerMinemE6digits+0x370>
    80005214:	00000097          	auipc	ra,0x0
    80005218:	8c0080e7          	jalr	-1856(ra) # 80004ad4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000521c:	01813083          	ld	ra,24(sp)
    80005220:	01013403          	ld	s0,16(sp)
    80005224:	00813483          	ld	s1,8(sp)
    80005228:	00013903          	ld	s2,0(sp)
    8000522c:	02010113          	addi	sp,sp,32
    80005230:	00008067          	ret
            Threads_C_API_test();
    80005234:	fffff097          	auipc	ra,0xfffff
    80005238:	f18080e7          	jalr	-232(ra) # 8000414c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000523c:	00003517          	auipc	a0,0x3
    80005240:	18450513          	addi	a0,a0,388 # 800083c0 <_ZZ16printIntegerMinemE6digits+0x3a0>
    80005244:	00000097          	auipc	ra,0x0
    80005248:	890080e7          	jalr	-1904(ra) # 80004ad4 <_Z11printStringPKc>
            break;
    8000524c:	fd1ff06f          	j	8000521c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005250:	ffffe097          	auipc	ra,0xffffe
    80005254:	ddc080e7          	jalr	-548(ra) # 8000302c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005258:	00003517          	auipc	a0,0x3
    8000525c:	1a850513          	addi	a0,a0,424 # 80008400 <_ZZ16printIntegerMinemE6digits+0x3e0>
    80005260:	00000097          	auipc	ra,0x0
    80005264:	874080e7          	jalr	-1932(ra) # 80004ad4 <_Z11printStringPKc>
            break;
    80005268:	fb5ff06f          	j	8000521c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000526c:	ffffd097          	auipc	ra,0xffffd
    80005270:	614080e7          	jalr	1556(ra) # 80002880 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005274:	00003517          	auipc	a0,0x3
    80005278:	1cc50513          	addi	a0,a0,460 # 80008440 <_ZZ16printIntegerMinemE6digits+0x420>
    8000527c:	00000097          	auipc	ra,0x0
    80005280:	858080e7          	jalr	-1960(ra) # 80004ad4 <_Z11printStringPKc>
            break;
    80005284:	f99ff06f          	j	8000521c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	208080e7          	jalr	520(ra) # 80004490 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005290:	00003517          	auipc	a0,0x3
    80005294:	20050513          	addi	a0,a0,512 # 80008490 <_ZZ16printIntegerMinemE6digits+0x470>
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	83c080e7          	jalr	-1988(ra) # 80004ad4 <_Z11printStringPKc>
            break;
    800052a0:	f7dff06f          	j	8000521c <_Z8userMainv+0x80>
            System_Mode_test();
    800052a4:	00000097          	auipc	ra,0x0
    800052a8:	658080e7          	jalr	1624(ra) # 800058fc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800052ac:	00003517          	auipc	a0,0x3
    800052b0:	23c50513          	addi	a0,a0,572 # 800084e8 <_ZZ16printIntegerMinemE6digits+0x4c8>
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	820080e7          	jalr	-2016(ra) # 80004ad4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800052bc:	00003517          	auipc	a0,0x3
    800052c0:	24c50513          	addi	a0,a0,588 # 80008508 <_ZZ16printIntegerMinemE6digits+0x4e8>
    800052c4:	00000097          	auipc	ra,0x0
    800052c8:	810080e7          	jalr	-2032(ra) # 80004ad4 <_Z11printStringPKc>
            break;
    800052cc:	f51ff06f          	j	8000521c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800052d0:	00003517          	auipc	a0,0x3
    800052d4:	29050513          	addi	a0,a0,656 # 80008560 <_ZZ16printIntegerMinemE6digits+0x540>
    800052d8:	fffff097          	auipc	ra,0xfffff
    800052dc:	7fc080e7          	jalr	2044(ra) # 80004ad4 <_Z11printStringPKc>
    800052e0:	f3dff06f          	j	8000521c <_Z8userMainv+0x80>

00000000800052e4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	01213023          	sd	s2,0(sp)
    800052f8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800052fc:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005300:	00600493          	li	s1,6
    while (--i > 0) {
    80005304:	fff4849b          	addiw	s1,s1,-1
    80005308:	04905463          	blez	s1,80005350 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000530c:	00003517          	auipc	a0,0x3
    80005310:	29c50513          	addi	a0,a0,668 # 800085a8 <_ZZ16printIntegerMinemE6digits+0x588>
    80005314:	fffff097          	auipc	ra,0xfffff
    80005318:	7c0080e7          	jalr	1984(ra) # 80004ad4 <_Z11printStringPKc>
        printInt(sleep_time);
    8000531c:	00000613          	li	a2,0
    80005320:	00a00593          	li	a1,10
    80005324:	0009051b          	sext.w	a0,s2
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	95c080e7          	jalr	-1700(ra) # 80004c84 <_Z8printIntiii>
        printString(" !\n");
    80005330:	00003517          	auipc	a0,0x3
    80005334:	28050513          	addi	a0,a0,640 # 800085b0 <_ZZ16printIntegerMinemE6digits+0x590>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	79c080e7          	jalr	1948(ra) # 80004ad4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005340:	00090513          	mv	a0,s2
    80005344:	ffffc097          	auipc	ra,0xffffc
    80005348:	16c080e7          	jalr	364(ra) # 800014b0 <_Z10time_sleepm>
    while (--i > 0) {
    8000534c:	fb9ff06f          	j	80005304 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005350:	00a00793          	li	a5,10
    80005354:	02f95933          	divu	s2,s2,a5
    80005358:	fff90913          	addi	s2,s2,-1
    8000535c:	00005797          	auipc	a5,0x5
    80005360:	33478793          	addi	a5,a5,820 # 8000a690 <_ZL8finished>
    80005364:	01278933          	add	s2,a5,s2
    80005368:	00100793          	li	a5,1
    8000536c:	00f90023          	sb	a5,0(s2)
}
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	00813483          	ld	s1,8(sp)
    8000537c:	00013903          	ld	s2,0(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret

0000000080005388 <_Z12testSleepingv>:

void testSleeping() {
    80005388:	fc010113          	addi	sp,sp,-64
    8000538c:	02113c23          	sd	ra,56(sp)
    80005390:	02813823          	sd	s0,48(sp)
    80005394:	02913423          	sd	s1,40(sp)
    80005398:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000539c:	00a00793          	li	a5,10
    800053a0:	fcf43823          	sd	a5,-48(s0)
    800053a4:	01400793          	li	a5,20
    800053a8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800053ac:	00000493          	li	s1,0
    800053b0:	02c0006f          	j	800053dc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800053b4:	00349793          	slli	a5,s1,0x3
    800053b8:	fd040613          	addi	a2,s0,-48
    800053bc:	00f60633          	add	a2,a2,a5
    800053c0:	00000597          	auipc	a1,0x0
    800053c4:	f2458593          	addi	a1,a1,-220 # 800052e4 <_ZL9sleepyRunPv>
    800053c8:	fc040513          	addi	a0,s0,-64
    800053cc:	00f50533          	add	a0,a0,a5
    800053d0:	ffffc097          	auipc	ra,0xffffc
    800053d4:	f08080e7          	jalr	-248(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800053d8:	0014849b          	addiw	s1,s1,1
    800053dc:	00100793          	li	a5,1
    800053e0:	fc97dae3          	bge	a5,s1,800053b4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800053e4:	00005797          	auipc	a5,0x5
    800053e8:	2ac7c783          	lbu	a5,684(a5) # 8000a690 <_ZL8finished>
    800053ec:	fe078ce3          	beqz	a5,800053e4 <_Z12testSleepingv+0x5c>
    800053f0:	00005797          	auipc	a5,0x5
    800053f4:	2a17c783          	lbu	a5,673(a5) # 8000a691 <_ZL8finished+0x1>
    800053f8:	fe0786e3          	beqz	a5,800053e4 <_Z12testSleepingv+0x5c>
}
    800053fc:	03813083          	ld	ra,56(sp)
    80005400:	03013403          	ld	s0,48(sp)
    80005404:	02813483          	ld	s1,40(sp)
    80005408:	04010113          	addi	sp,sp,64
    8000540c:	00008067          	ret

0000000080005410 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005410:	fe010113          	addi	sp,sp,-32
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	00813823          	sd	s0,16(sp)
    8000541c:	00913423          	sd	s1,8(sp)
    80005420:	01213023          	sd	s2,0(sp)
    80005424:	02010413          	addi	s0,sp,32
    80005428:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000542c:	00100793          	li	a5,1
    80005430:	02a7f863          	bgeu	a5,a0,80005460 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005434:	00a00793          	li	a5,10
    80005438:	02f577b3          	remu	a5,a0,a5
    8000543c:	02078e63          	beqz	a5,80005478 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005440:	fff48513          	addi	a0,s1,-1
    80005444:	00000097          	auipc	ra,0x0
    80005448:	fcc080e7          	jalr	-52(ra) # 80005410 <_ZL9fibonaccim>
    8000544c:	00050913          	mv	s2,a0
    80005450:	ffe48513          	addi	a0,s1,-2
    80005454:	00000097          	auipc	ra,0x0
    80005458:	fbc080e7          	jalr	-68(ra) # 80005410 <_ZL9fibonaccim>
    8000545c:	00a90533          	add	a0,s2,a0
}
    80005460:	01813083          	ld	ra,24(sp)
    80005464:	01013403          	ld	s0,16(sp)
    80005468:	00813483          	ld	s1,8(sp)
    8000546c:	00013903          	ld	s2,0(sp)
    80005470:	02010113          	addi	sp,sp,32
    80005474:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005478:	ffffc097          	auipc	ra,0xffffc
    8000547c:	ed4080e7          	jalr	-300(ra) # 8000134c <_Z15thread_dispatchv>
    80005480:	fc1ff06f          	j	80005440 <_ZL9fibonaccim+0x30>

0000000080005484 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005484:	fe010113          	addi	sp,sp,-32
    80005488:	00113c23          	sd	ra,24(sp)
    8000548c:	00813823          	sd	s0,16(sp)
    80005490:	00913423          	sd	s1,8(sp)
    80005494:	01213023          	sd	s2,0(sp)
    80005498:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000549c:	00a00493          	li	s1,10
    800054a0:	0400006f          	j	800054e0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054a4:	00003517          	auipc	a0,0x3
    800054a8:	e1c50513          	addi	a0,a0,-484 # 800082c0 <_ZZ16printIntegerMinemE6digits+0x2a0>
    800054ac:	fffff097          	auipc	ra,0xfffff
    800054b0:	628080e7          	jalr	1576(ra) # 80004ad4 <_Z11printStringPKc>
    800054b4:	00000613          	li	a2,0
    800054b8:	00a00593          	li	a1,10
    800054bc:	00048513          	mv	a0,s1
    800054c0:	fffff097          	auipc	ra,0xfffff
    800054c4:	7c4080e7          	jalr	1988(ra) # 80004c84 <_Z8printIntiii>
    800054c8:	00003517          	auipc	a0,0x3
    800054cc:	01850513          	addi	a0,a0,24 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    800054d0:	fffff097          	auipc	ra,0xfffff
    800054d4:	604080e7          	jalr	1540(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800054d8:	0014849b          	addiw	s1,s1,1
    800054dc:	0ff4f493          	andi	s1,s1,255
    800054e0:	00c00793          	li	a5,12
    800054e4:	fc97f0e3          	bgeu	a5,s1,800054a4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800054e8:	00003517          	auipc	a0,0x3
    800054ec:	de050513          	addi	a0,a0,-544 # 800082c8 <_ZZ16printIntegerMinemE6digits+0x2a8>
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	5e4080e7          	jalr	1508(ra) # 80004ad4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800054f8:	00500313          	li	t1,5
    thread_dispatch();
    800054fc:	ffffc097          	auipc	ra,0xffffc
    80005500:	e50080e7          	jalr	-432(ra) # 8000134c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005504:	01000513          	li	a0,16
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	f08080e7          	jalr	-248(ra) # 80005410 <_ZL9fibonaccim>
    80005510:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005514:	00003517          	auipc	a0,0x3
    80005518:	dc450513          	addi	a0,a0,-572 # 800082d8 <_ZZ16printIntegerMinemE6digits+0x2b8>
    8000551c:	fffff097          	auipc	ra,0xfffff
    80005520:	5b8080e7          	jalr	1464(ra) # 80004ad4 <_Z11printStringPKc>
    80005524:	00000613          	li	a2,0
    80005528:	00a00593          	li	a1,10
    8000552c:	0009051b          	sext.w	a0,s2
    80005530:	fffff097          	auipc	ra,0xfffff
    80005534:	754080e7          	jalr	1876(ra) # 80004c84 <_Z8printIntiii>
    80005538:	00003517          	auipc	a0,0x3
    8000553c:	fa850513          	addi	a0,a0,-88 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80005540:	fffff097          	auipc	ra,0xfffff
    80005544:	594080e7          	jalr	1428(ra) # 80004ad4 <_Z11printStringPKc>
    80005548:	0400006f          	j	80005588 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000554c:	00003517          	auipc	a0,0x3
    80005550:	d7450513          	addi	a0,a0,-652 # 800082c0 <_ZZ16printIntegerMinemE6digits+0x2a0>
    80005554:	fffff097          	auipc	ra,0xfffff
    80005558:	580080e7          	jalr	1408(ra) # 80004ad4 <_Z11printStringPKc>
    8000555c:	00000613          	li	a2,0
    80005560:	00a00593          	li	a1,10
    80005564:	00048513          	mv	a0,s1
    80005568:	fffff097          	auipc	ra,0xfffff
    8000556c:	71c080e7          	jalr	1820(ra) # 80004c84 <_Z8printIntiii>
    80005570:	00003517          	auipc	a0,0x3
    80005574:	f7050513          	addi	a0,a0,-144 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80005578:	fffff097          	auipc	ra,0xfffff
    8000557c:	55c080e7          	jalr	1372(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005580:	0014849b          	addiw	s1,s1,1
    80005584:	0ff4f493          	andi	s1,s1,255
    80005588:	00f00793          	li	a5,15
    8000558c:	fc97f0e3          	bgeu	a5,s1,8000554c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005590:	00003517          	auipc	a0,0x3
    80005594:	d5850513          	addi	a0,a0,-680 # 800082e8 <_ZZ16printIntegerMinemE6digits+0x2c8>
    80005598:	fffff097          	auipc	ra,0xfffff
    8000559c:	53c080e7          	jalr	1340(ra) # 80004ad4 <_Z11printStringPKc>
    finishedD = true;
    800055a0:	00100793          	li	a5,1
    800055a4:	00005717          	auipc	a4,0x5
    800055a8:	0ef70723          	sb	a5,238(a4) # 8000a692 <_ZL9finishedD>
    thread_dispatch();
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	da0080e7          	jalr	-608(ra) # 8000134c <_Z15thread_dispatchv>
}
    800055b4:	01813083          	ld	ra,24(sp)
    800055b8:	01013403          	ld	s0,16(sp)
    800055bc:	00813483          	ld	s1,8(sp)
    800055c0:	00013903          	ld	s2,0(sp)
    800055c4:	02010113          	addi	sp,sp,32
    800055c8:	00008067          	ret

00000000800055cc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800055cc:	fe010113          	addi	sp,sp,-32
    800055d0:	00113c23          	sd	ra,24(sp)
    800055d4:	00813823          	sd	s0,16(sp)
    800055d8:	00913423          	sd	s1,8(sp)
    800055dc:	01213023          	sd	s2,0(sp)
    800055e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800055e4:	00000493          	li	s1,0
    800055e8:	0400006f          	j	80005628 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800055ec:	00003517          	auipc	a0,0x3
    800055f0:	ca450513          	addi	a0,a0,-860 # 80008290 <_ZZ16printIntegerMinemE6digits+0x270>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	4e0080e7          	jalr	1248(ra) # 80004ad4 <_Z11printStringPKc>
    800055fc:	00000613          	li	a2,0
    80005600:	00a00593          	li	a1,10
    80005604:	00048513          	mv	a0,s1
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	67c080e7          	jalr	1660(ra) # 80004c84 <_Z8printIntiii>
    80005610:	00003517          	auipc	a0,0x3
    80005614:	ed050513          	addi	a0,a0,-304 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80005618:	fffff097          	auipc	ra,0xfffff
    8000561c:	4bc080e7          	jalr	1212(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005620:	0014849b          	addiw	s1,s1,1
    80005624:	0ff4f493          	andi	s1,s1,255
    80005628:	00200793          	li	a5,2
    8000562c:	fc97f0e3          	bgeu	a5,s1,800055ec <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005630:	00003517          	auipc	a0,0x3
    80005634:	c6850513          	addi	a0,a0,-920 # 80008298 <_ZZ16printIntegerMinemE6digits+0x278>
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	49c080e7          	jalr	1180(ra) # 80004ad4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005640:	00700313          	li	t1,7
    thread_dispatch();
    80005644:	ffffc097          	auipc	ra,0xffffc
    80005648:	d08080e7          	jalr	-760(ra) # 8000134c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000564c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005650:	00003517          	auipc	a0,0x3
    80005654:	c5850513          	addi	a0,a0,-936 # 800082a8 <_ZZ16printIntegerMinemE6digits+0x288>
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	47c080e7          	jalr	1148(ra) # 80004ad4 <_Z11printStringPKc>
    80005660:	00000613          	li	a2,0
    80005664:	00a00593          	li	a1,10
    80005668:	0009051b          	sext.w	a0,s2
    8000566c:	fffff097          	auipc	ra,0xfffff
    80005670:	618080e7          	jalr	1560(ra) # 80004c84 <_Z8printIntiii>
    80005674:	00003517          	auipc	a0,0x3
    80005678:	e6c50513          	addi	a0,a0,-404 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    8000567c:	fffff097          	auipc	ra,0xfffff
    80005680:	458080e7          	jalr	1112(ra) # 80004ad4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005684:	00c00513          	li	a0,12
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	d88080e7          	jalr	-632(ra) # 80005410 <_ZL9fibonaccim>
    80005690:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005694:	00003517          	auipc	a0,0x3
    80005698:	c1c50513          	addi	a0,a0,-996 # 800082b0 <_ZZ16printIntegerMinemE6digits+0x290>
    8000569c:	fffff097          	auipc	ra,0xfffff
    800056a0:	438080e7          	jalr	1080(ra) # 80004ad4 <_Z11printStringPKc>
    800056a4:	00000613          	li	a2,0
    800056a8:	00a00593          	li	a1,10
    800056ac:	0009051b          	sext.w	a0,s2
    800056b0:	fffff097          	auipc	ra,0xfffff
    800056b4:	5d4080e7          	jalr	1492(ra) # 80004c84 <_Z8printIntiii>
    800056b8:	00003517          	auipc	a0,0x3
    800056bc:	e2850513          	addi	a0,a0,-472 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    800056c0:	fffff097          	auipc	ra,0xfffff
    800056c4:	414080e7          	jalr	1044(ra) # 80004ad4 <_Z11printStringPKc>
    800056c8:	0400006f          	j	80005708 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800056cc:	00003517          	auipc	a0,0x3
    800056d0:	bc450513          	addi	a0,a0,-1084 # 80008290 <_ZZ16printIntegerMinemE6digits+0x270>
    800056d4:	fffff097          	auipc	ra,0xfffff
    800056d8:	400080e7          	jalr	1024(ra) # 80004ad4 <_Z11printStringPKc>
    800056dc:	00000613          	li	a2,0
    800056e0:	00a00593          	li	a1,10
    800056e4:	00048513          	mv	a0,s1
    800056e8:	fffff097          	auipc	ra,0xfffff
    800056ec:	59c080e7          	jalr	1436(ra) # 80004c84 <_Z8printIntiii>
    800056f0:	00003517          	auipc	a0,0x3
    800056f4:	df050513          	addi	a0,a0,-528 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    800056f8:	fffff097          	auipc	ra,0xfffff
    800056fc:	3dc080e7          	jalr	988(ra) # 80004ad4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005700:	0014849b          	addiw	s1,s1,1
    80005704:	0ff4f493          	andi	s1,s1,255
    80005708:	00500793          	li	a5,5
    8000570c:	fc97f0e3          	bgeu	a5,s1,800056cc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005710:	00003517          	auipc	a0,0x3
    80005714:	b5850513          	addi	a0,a0,-1192 # 80008268 <_ZZ16printIntegerMinemE6digits+0x248>
    80005718:	fffff097          	auipc	ra,0xfffff
    8000571c:	3bc080e7          	jalr	956(ra) # 80004ad4 <_Z11printStringPKc>
    finishedC = true;
    80005720:	00100793          	li	a5,1
    80005724:	00005717          	auipc	a4,0x5
    80005728:	f6f707a3          	sb	a5,-145(a4) # 8000a693 <_ZL9finishedC>
    thread_dispatch();
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	c20080e7          	jalr	-992(ra) # 8000134c <_Z15thread_dispatchv>
}
    80005734:	01813083          	ld	ra,24(sp)
    80005738:	01013403          	ld	s0,16(sp)
    8000573c:	00813483          	ld	s1,8(sp)
    80005740:	00013903          	ld	s2,0(sp)
    80005744:	02010113          	addi	sp,sp,32
    80005748:	00008067          	ret

000000008000574c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000574c:	fe010113          	addi	sp,sp,-32
    80005750:	00113c23          	sd	ra,24(sp)
    80005754:	00813823          	sd	s0,16(sp)
    80005758:	00913423          	sd	s1,8(sp)
    8000575c:	01213023          	sd	s2,0(sp)
    80005760:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005764:	00000913          	li	s2,0
    80005768:	0400006f          	j	800057a8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	be0080e7          	jalr	-1056(ra) # 8000134c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005774:	00148493          	addi	s1,s1,1
    80005778:	000027b7          	lui	a5,0x2
    8000577c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005780:	0097ee63          	bltu	a5,s1,8000579c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005784:	00000713          	li	a4,0
    80005788:	000077b7          	lui	a5,0x7
    8000578c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005790:	fce7eee3          	bltu	a5,a4,8000576c <_ZL11workerBodyBPv+0x20>
    80005794:	00170713          	addi	a4,a4,1
    80005798:	ff1ff06f          	j	80005788 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000579c:	00a00793          	li	a5,10
    800057a0:	04f90663          	beq	s2,a5,800057ec <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800057a4:	00190913          	addi	s2,s2,1
    800057a8:	00f00793          	li	a5,15
    800057ac:	0527e463          	bltu	a5,s2,800057f4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800057b0:	00003517          	auipc	a0,0x3
    800057b4:	ac850513          	addi	a0,a0,-1336 # 80008278 <_ZZ16printIntegerMinemE6digits+0x258>
    800057b8:	fffff097          	auipc	ra,0xfffff
    800057bc:	31c080e7          	jalr	796(ra) # 80004ad4 <_Z11printStringPKc>
    800057c0:	00000613          	li	a2,0
    800057c4:	00a00593          	li	a1,10
    800057c8:	0009051b          	sext.w	a0,s2
    800057cc:	fffff097          	auipc	ra,0xfffff
    800057d0:	4b8080e7          	jalr	1208(ra) # 80004c84 <_Z8printIntiii>
    800057d4:	00003517          	auipc	a0,0x3
    800057d8:	d0c50513          	addi	a0,a0,-756 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    800057dc:	fffff097          	auipc	ra,0xfffff
    800057e0:	2f8080e7          	jalr	760(ra) # 80004ad4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057e4:	00000493          	li	s1,0
    800057e8:	f91ff06f          	j	80005778 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800057ec:	14102ff3          	csrr	t6,sepc
    800057f0:	fb5ff06f          	j	800057a4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800057f4:	00003517          	auipc	a0,0x3
    800057f8:	a8c50513          	addi	a0,a0,-1396 # 80008280 <_ZZ16printIntegerMinemE6digits+0x260>
    800057fc:	fffff097          	auipc	ra,0xfffff
    80005800:	2d8080e7          	jalr	728(ra) # 80004ad4 <_Z11printStringPKc>
    finishedB = true;
    80005804:	00100793          	li	a5,1
    80005808:	00005717          	auipc	a4,0x5
    8000580c:	e8f70623          	sb	a5,-372(a4) # 8000a694 <_ZL9finishedB>
    thread_dispatch();
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	b3c080e7          	jalr	-1220(ra) # 8000134c <_Z15thread_dispatchv>
}
    80005818:	01813083          	ld	ra,24(sp)
    8000581c:	01013403          	ld	s0,16(sp)
    80005820:	00813483          	ld	s1,8(sp)
    80005824:	00013903          	ld	s2,0(sp)
    80005828:	02010113          	addi	sp,sp,32
    8000582c:	00008067          	ret

0000000080005830 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005830:	fe010113          	addi	sp,sp,-32
    80005834:	00113c23          	sd	ra,24(sp)
    80005838:	00813823          	sd	s0,16(sp)
    8000583c:	00913423          	sd	s1,8(sp)
    80005840:	01213023          	sd	s2,0(sp)
    80005844:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005848:	00000913          	li	s2,0
    8000584c:	0380006f          	j	80005884 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005850:	ffffc097          	auipc	ra,0xffffc
    80005854:	afc080e7          	jalr	-1284(ra) # 8000134c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005858:	00148493          	addi	s1,s1,1
    8000585c:	000027b7          	lui	a5,0x2
    80005860:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005864:	0097ee63          	bltu	a5,s1,80005880 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005868:	00000713          	li	a4,0
    8000586c:	000077b7          	lui	a5,0x7
    80005870:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005874:	fce7eee3          	bltu	a5,a4,80005850 <_ZL11workerBodyAPv+0x20>
    80005878:	00170713          	addi	a4,a4,1
    8000587c:	ff1ff06f          	j	8000586c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005880:	00190913          	addi	s2,s2,1
    80005884:	00900793          	li	a5,9
    80005888:	0527e063          	bltu	a5,s2,800058c8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000588c:	00003517          	auipc	a0,0x3
    80005890:	9d450513          	addi	a0,a0,-1580 # 80008260 <_ZZ16printIntegerMinemE6digits+0x240>
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	240080e7          	jalr	576(ra) # 80004ad4 <_Z11printStringPKc>
    8000589c:	00000613          	li	a2,0
    800058a0:	00a00593          	li	a1,10
    800058a4:	0009051b          	sext.w	a0,s2
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	3dc080e7          	jalr	988(ra) # 80004c84 <_Z8printIntiii>
    800058b0:	00003517          	auipc	a0,0x3
    800058b4:	c3050513          	addi	a0,a0,-976 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    800058b8:	fffff097          	auipc	ra,0xfffff
    800058bc:	21c080e7          	jalr	540(ra) # 80004ad4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058c0:	00000493          	li	s1,0
    800058c4:	f99ff06f          	j	8000585c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800058c8:	00003517          	auipc	a0,0x3
    800058cc:	9a050513          	addi	a0,a0,-1632 # 80008268 <_ZZ16printIntegerMinemE6digits+0x248>
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	204080e7          	jalr	516(ra) # 80004ad4 <_Z11printStringPKc>
    finishedA = true;
    800058d8:	00100793          	li	a5,1
    800058dc:	00005717          	auipc	a4,0x5
    800058e0:	daf70ca3          	sb	a5,-583(a4) # 8000a695 <_ZL9finishedA>
}
    800058e4:	01813083          	ld	ra,24(sp)
    800058e8:	01013403          	ld	s0,16(sp)
    800058ec:	00813483          	ld	s1,8(sp)
    800058f0:	00013903          	ld	s2,0(sp)
    800058f4:	02010113          	addi	sp,sp,32
    800058f8:	00008067          	ret

00000000800058fc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800058fc:	fd010113          	addi	sp,sp,-48
    80005900:	02113423          	sd	ra,40(sp)
    80005904:	02813023          	sd	s0,32(sp)
    80005908:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000590c:	00000613          	li	a2,0
    80005910:	00000597          	auipc	a1,0x0
    80005914:	f2058593          	addi	a1,a1,-224 # 80005830 <_ZL11workerBodyAPv>
    80005918:	fd040513          	addi	a0,s0,-48
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	9bc080e7          	jalr	-1604(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005924:	00003517          	auipc	a0,0x3
    80005928:	9d450513          	addi	a0,a0,-1580 # 800082f8 <_ZZ16printIntegerMinemE6digits+0x2d8>
    8000592c:	fffff097          	auipc	ra,0xfffff
    80005930:	1a8080e7          	jalr	424(ra) # 80004ad4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005934:	00000613          	li	a2,0
    80005938:	00000597          	auipc	a1,0x0
    8000593c:	e1458593          	addi	a1,a1,-492 # 8000574c <_ZL11workerBodyBPv>
    80005940:	fd840513          	addi	a0,s0,-40
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	994080e7          	jalr	-1644(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000594c:	00003517          	auipc	a0,0x3
    80005950:	9c450513          	addi	a0,a0,-1596 # 80008310 <_ZZ16printIntegerMinemE6digits+0x2f0>
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	180080e7          	jalr	384(ra) # 80004ad4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000595c:	00000613          	li	a2,0
    80005960:	00000597          	auipc	a1,0x0
    80005964:	c6c58593          	addi	a1,a1,-916 # 800055cc <_ZL11workerBodyCPv>
    80005968:	fe040513          	addi	a0,s0,-32
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	96c080e7          	jalr	-1684(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005974:	00003517          	auipc	a0,0x3
    80005978:	9b450513          	addi	a0,a0,-1612 # 80008328 <_ZZ16printIntegerMinemE6digits+0x308>
    8000597c:	fffff097          	auipc	ra,0xfffff
    80005980:	158080e7          	jalr	344(ra) # 80004ad4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005984:	00000613          	li	a2,0
    80005988:	00000597          	auipc	a1,0x0
    8000598c:	afc58593          	addi	a1,a1,-1284 # 80005484 <_ZL11workerBodyDPv>
    80005990:	fe840513          	addi	a0,s0,-24
    80005994:	ffffc097          	auipc	ra,0xffffc
    80005998:	944080e7          	jalr	-1724(ra) # 800012d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000599c:	00003517          	auipc	a0,0x3
    800059a0:	9a450513          	addi	a0,a0,-1628 # 80008340 <_ZZ16printIntegerMinemE6digits+0x320>
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	130080e7          	jalr	304(ra) # 80004ad4 <_Z11printStringPKc>
    800059ac:	00c0006f          	j	800059b8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800059b0:	ffffc097          	auipc	ra,0xffffc
    800059b4:	99c080e7          	jalr	-1636(ra) # 8000134c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800059b8:	00005797          	auipc	a5,0x5
    800059bc:	cdd7c783          	lbu	a5,-803(a5) # 8000a695 <_ZL9finishedA>
    800059c0:	fe0788e3          	beqz	a5,800059b0 <_Z16System_Mode_testv+0xb4>
    800059c4:	00005797          	auipc	a5,0x5
    800059c8:	cd07c783          	lbu	a5,-816(a5) # 8000a694 <_ZL9finishedB>
    800059cc:	fe0782e3          	beqz	a5,800059b0 <_Z16System_Mode_testv+0xb4>
    800059d0:	00005797          	auipc	a5,0x5
    800059d4:	cc37c783          	lbu	a5,-829(a5) # 8000a693 <_ZL9finishedC>
    800059d8:	fc078ce3          	beqz	a5,800059b0 <_Z16System_Mode_testv+0xb4>
    800059dc:	00005797          	auipc	a5,0x5
    800059e0:	cb67c783          	lbu	a5,-842(a5) # 8000a692 <_ZL9finishedD>
    800059e4:	fc0786e3          	beqz	a5,800059b0 <_Z16System_Mode_testv+0xb4>
    }

}
    800059e8:	02813083          	ld	ra,40(sp)
    800059ec:	02013403          	ld	s0,32(sp)
    800059f0:	03010113          	addi	sp,sp,48
    800059f4:	00008067          	ret

00000000800059f8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059f8:	fe010113          	addi	sp,sp,-32
    800059fc:	00113c23          	sd	ra,24(sp)
    80005a00:	00813823          	sd	s0,16(sp)
    80005a04:	00913423          	sd	s1,8(sp)
    80005a08:	01213023          	sd	s2,0(sp)
    80005a0c:	02010413          	addi	s0,sp,32
    80005a10:	00050493          	mv	s1,a0
    80005a14:	00058913          	mv	s2,a1
    80005a18:	0015879b          	addiw	a5,a1,1
    80005a1c:	0007851b          	sext.w	a0,a5
    80005a20:	00f4a023          	sw	a5,0(s1)
    80005a24:	0004a823          	sw	zero,16(s1)
    80005a28:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a2c:	00251513          	slli	a0,a0,0x2
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	83c080e7          	jalr	-1988(ra) # 8000126c <_Z9mem_allocm>
    80005a38:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005a3c:	00000593          	li	a1,0
    80005a40:	02048513          	addi	a0,s1,32
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	934080e7          	jalr	-1740(ra) # 80001378 <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    80005a4c:	00090593          	mv	a1,s2
    80005a50:	01848513          	addi	a0,s1,24
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	924080e7          	jalr	-1756(ra) # 80001378 <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    80005a5c:	00100593          	li	a1,1
    80005a60:	02848513          	addi	a0,s1,40
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	914080e7          	jalr	-1772(ra) # 80001378 <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    80005a6c:	00100593          	li	a1,1
    80005a70:	03048513          	addi	a0,s1,48
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	904080e7          	jalr	-1788(ra) # 80001378 <_Z8sem_openPP3SEMj>
}
    80005a7c:	01813083          	ld	ra,24(sp)
    80005a80:	01013403          	ld	s0,16(sp)
    80005a84:	00813483          	ld	s1,8(sp)
    80005a88:	00013903          	ld	s2,0(sp)
    80005a8c:	02010113          	addi	sp,sp,32
    80005a90:	00008067          	ret

0000000080005a94 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005a94:	fe010113          	addi	sp,sp,-32
    80005a98:	00113c23          	sd	ra,24(sp)
    80005a9c:	00813823          	sd	s0,16(sp)
    80005aa0:	00913423          	sd	s1,8(sp)
    80005aa4:	01213023          	sd	s2,0(sp)
    80005aa8:	02010413          	addi	s0,sp,32
    80005aac:	00050493          	mv	s1,a0
    80005ab0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005ab4:	01853503          	ld	a0,24(a0)
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	934080e7          	jalr	-1740(ra) # 800013ec <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    80005ac0:	0304b503          	ld	a0,48(s1)
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	928080e7          	jalr	-1752(ra) # 800013ec <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    80005acc:	0084b783          	ld	a5,8(s1)
    80005ad0:	0144a703          	lw	a4,20(s1)
    80005ad4:	00271713          	slli	a4,a4,0x2
    80005ad8:	00e787b3          	add	a5,a5,a4
    80005adc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ae0:	0144a783          	lw	a5,20(s1)
    80005ae4:	0017879b          	addiw	a5,a5,1
    80005ae8:	0004a703          	lw	a4,0(s1)
    80005aec:	02e7e7bb          	remw	a5,a5,a4
    80005af0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005af4:	0304b503          	ld	a0,48(s1)
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	92c080e7          	jalr	-1748(ra) # 80001424 <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    80005b00:	0204b503          	ld	a0,32(s1)
    80005b04:	ffffc097          	auipc	ra,0xffffc
    80005b08:	920080e7          	jalr	-1760(ra) # 80001424 <_Z10sem_signalP3SEM>

}
    80005b0c:	01813083          	ld	ra,24(sp)
    80005b10:	01013403          	ld	s0,16(sp)
    80005b14:	00813483          	ld	s1,8(sp)
    80005b18:	00013903          	ld	s2,0(sp)
    80005b1c:	02010113          	addi	sp,sp,32
    80005b20:	00008067          	ret

0000000080005b24 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005b24:	fe010113          	addi	sp,sp,-32
    80005b28:	00113c23          	sd	ra,24(sp)
    80005b2c:	00813823          	sd	s0,16(sp)
    80005b30:	00913423          	sd	s1,8(sp)
    80005b34:	01213023          	sd	s2,0(sp)
    80005b38:	02010413          	addi	s0,sp,32
    80005b3c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005b40:	02053503          	ld	a0,32(a0)
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	8a8080e7          	jalr	-1880(ra) # 800013ec <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    80005b4c:	0284b503          	ld	a0,40(s1)
    80005b50:	ffffc097          	auipc	ra,0xffffc
    80005b54:	89c080e7          	jalr	-1892(ra) # 800013ec <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    80005b58:	0084b703          	ld	a4,8(s1)
    80005b5c:	0104a783          	lw	a5,16(s1)
    80005b60:	00279693          	slli	a3,a5,0x2
    80005b64:	00d70733          	add	a4,a4,a3
    80005b68:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b6c:	0017879b          	addiw	a5,a5,1
    80005b70:	0004a703          	lw	a4,0(s1)
    80005b74:	02e7e7bb          	remw	a5,a5,a4
    80005b78:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005b7c:	0284b503          	ld	a0,40(s1)
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	8a4080e7          	jalr	-1884(ra) # 80001424 <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    80005b88:	0184b503          	ld	a0,24(s1)
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	898080e7          	jalr	-1896(ra) # 80001424 <_Z10sem_signalP3SEM>

    return ret;
}
    80005b94:	00090513          	mv	a0,s2
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	00013903          	ld	s2,0(sp)
    80005ba8:	02010113          	addi	sp,sp,32
    80005bac:	00008067          	ret

0000000080005bb0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00113c23          	sd	ra,24(sp)
    80005bb8:	00813823          	sd	s0,16(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	01213023          	sd	s2,0(sp)
    80005bc4:	02010413          	addi	s0,sp,32
    80005bc8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005bcc:	02853503          	ld	a0,40(a0)
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	81c080e7          	jalr	-2020(ra) # 800013ec <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    80005bd8:	0304b503          	ld	a0,48(s1)
    80005bdc:	ffffc097          	auipc	ra,0xffffc
    80005be0:	810080e7          	jalr	-2032(ra) # 800013ec <_Z8sem_waitP3SEM>

    if (tail >= head) {
    80005be4:	0144a783          	lw	a5,20(s1)
    80005be8:	0104a903          	lw	s2,16(s1)
    80005bec:	0327ce63          	blt	a5,s2,80005c28 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005bf0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005bf4:	0304b503          	ld	a0,48(s1)
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	82c080e7          	jalr	-2004(ra) # 80001424 <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    80005c00:	0284b503          	ld	a0,40(s1)
    80005c04:	ffffc097          	auipc	ra,0xffffc
    80005c08:	820080e7          	jalr	-2016(ra) # 80001424 <_Z10sem_signalP3SEM>

    return ret;
}
    80005c0c:	00090513          	mv	a0,s2
    80005c10:	01813083          	ld	ra,24(sp)
    80005c14:	01013403          	ld	s0,16(sp)
    80005c18:	00813483          	ld	s1,8(sp)
    80005c1c:	00013903          	ld	s2,0(sp)
    80005c20:	02010113          	addi	sp,sp,32
    80005c24:	00008067          	ret
        ret = cap - head + tail;
    80005c28:	0004a703          	lw	a4,0(s1)
    80005c2c:	4127093b          	subw	s2,a4,s2
    80005c30:	00f9093b          	addw	s2,s2,a5
    80005c34:	fc1ff06f          	j	80005bf4 <_ZN6Buffer6getCntEv+0x44>

0000000080005c38 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005c38:	fe010113          	addi	sp,sp,-32
    80005c3c:	00113c23          	sd	ra,24(sp)
    80005c40:	00813823          	sd	s0,16(sp)
    80005c44:	00913423          	sd	s1,8(sp)
    80005c48:	02010413          	addi	s0,sp,32
    80005c4c:	00050493          	mv	s1,a0
    putc('\n');
    80005c50:	00a00513          	li	a0,10
    80005c54:	ffffc097          	auipc	ra,0xffffc
    80005c58:	8ac080e7          	jalr	-1876(ra) # 80001500 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005c5c:	00002517          	auipc	a0,0x2
    80005c60:	6fc50513          	addi	a0,a0,1788 # 80008358 <_ZZ16printIntegerMinemE6digits+0x338>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	e70080e7          	jalr	-400(ra) # 80004ad4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005c6c:	00048513          	mv	a0,s1
    80005c70:	00000097          	auipc	ra,0x0
    80005c74:	f40080e7          	jalr	-192(ra) # 80005bb0 <_ZN6Buffer6getCntEv>
    80005c78:	02a05c63          	blez	a0,80005cb0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005c7c:	0084b783          	ld	a5,8(s1)
    80005c80:	0104a703          	lw	a4,16(s1)
    80005c84:	00271713          	slli	a4,a4,0x2
    80005c88:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005c8c:	0007c503          	lbu	a0,0(a5)
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	870080e7          	jalr	-1936(ra) # 80001500 <_Z4putcc>
        head = (head + 1) % cap;
    80005c98:	0104a783          	lw	a5,16(s1)
    80005c9c:	0017879b          	addiw	a5,a5,1
    80005ca0:	0004a703          	lw	a4,0(s1)
    80005ca4:	02e7e7bb          	remw	a5,a5,a4
    80005ca8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005cac:	fc1ff06f          	j	80005c6c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005cb0:	02100513          	li	a0,33
    80005cb4:	ffffc097          	auipc	ra,0xffffc
    80005cb8:	84c080e7          	jalr	-1972(ra) # 80001500 <_Z4putcc>
    putc('\n');
    80005cbc:	00a00513          	li	a0,10
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	840080e7          	jalr	-1984(ra) # 80001500 <_Z4putcc>
    mem_free(buffer);
    80005cc8:	0084b503          	ld	a0,8(s1)
    80005ccc:	ffffb097          	auipc	ra,0xffffb
    80005cd0:	5d4080e7          	jalr	1492(ra) # 800012a0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005cd4:	0204b503          	ld	a0,32(s1)
    80005cd8:	ffffb097          	auipc	ra,0xffffb
    80005cdc:	6dc080e7          	jalr	1756(ra) # 800013b4 <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    80005ce0:	0184b503          	ld	a0,24(s1)
    80005ce4:	ffffb097          	auipc	ra,0xffffb
    80005ce8:	6d0080e7          	jalr	1744(ra) # 800013b4 <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    80005cec:	0304b503          	ld	a0,48(s1)
    80005cf0:	ffffb097          	auipc	ra,0xffffb
    80005cf4:	6c4080e7          	jalr	1732(ra) # 800013b4 <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    80005cf8:	0284b503          	ld	a0,40(s1)
    80005cfc:	ffffb097          	auipc	ra,0xffffb
    80005d00:	6b8080e7          	jalr	1720(ra) # 800013b4 <_Z9sem_closeP3SEM>
}
    80005d04:	01813083          	ld	ra,24(sp)
    80005d08:	01013403          	ld	s0,16(sp)
    80005d0c:	00813483          	ld	s1,8(sp)
    80005d10:	02010113          	addi	sp,sp,32
    80005d14:	00008067          	ret

0000000080005d18 <start>:
    80005d18:	ff010113          	addi	sp,sp,-16
    80005d1c:	00813423          	sd	s0,8(sp)
    80005d20:	01010413          	addi	s0,sp,16
    80005d24:	300027f3          	csrr	a5,mstatus
    80005d28:	ffffe737          	lui	a4,0xffffe
    80005d2c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2eff>
    80005d30:	00e7f7b3          	and	a5,a5,a4
    80005d34:	00001737          	lui	a4,0x1
    80005d38:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005d3c:	00e7e7b3          	or	a5,a5,a4
    80005d40:	30079073          	csrw	mstatus,a5
    80005d44:	00000797          	auipc	a5,0x0
    80005d48:	16078793          	addi	a5,a5,352 # 80005ea4 <system_main>
    80005d4c:	34179073          	csrw	mepc,a5
    80005d50:	00000793          	li	a5,0
    80005d54:	18079073          	csrw	satp,a5
    80005d58:	000107b7          	lui	a5,0x10
    80005d5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005d60:	30279073          	csrw	medeleg,a5
    80005d64:	30379073          	csrw	mideleg,a5
    80005d68:	104027f3          	csrr	a5,sie
    80005d6c:	2227e793          	ori	a5,a5,546
    80005d70:	10479073          	csrw	sie,a5
    80005d74:	fff00793          	li	a5,-1
    80005d78:	00a7d793          	srli	a5,a5,0xa
    80005d7c:	3b079073          	csrw	pmpaddr0,a5
    80005d80:	00f00793          	li	a5,15
    80005d84:	3a079073          	csrw	pmpcfg0,a5
    80005d88:	f14027f3          	csrr	a5,mhartid
    80005d8c:	0200c737          	lui	a4,0x200c
    80005d90:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d94:	0007869b          	sext.w	a3,a5
    80005d98:	00269713          	slli	a4,a3,0x2
    80005d9c:	000f4637          	lui	a2,0xf4
    80005da0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005da4:	00d70733          	add	a4,a4,a3
    80005da8:	0037979b          	slliw	a5,a5,0x3
    80005dac:	020046b7          	lui	a3,0x2004
    80005db0:	00d787b3          	add	a5,a5,a3
    80005db4:	00c585b3          	add	a1,a1,a2
    80005db8:	00371693          	slli	a3,a4,0x3
    80005dbc:	00005717          	auipc	a4,0x5
    80005dc0:	8e470713          	addi	a4,a4,-1820 # 8000a6a0 <timer_scratch>
    80005dc4:	00b7b023          	sd	a1,0(a5)
    80005dc8:	00d70733          	add	a4,a4,a3
    80005dcc:	00f73c23          	sd	a5,24(a4)
    80005dd0:	02c73023          	sd	a2,32(a4)
    80005dd4:	34071073          	csrw	mscratch,a4
    80005dd8:	00000797          	auipc	a5,0x0
    80005ddc:	6e878793          	addi	a5,a5,1768 # 800064c0 <timervec>
    80005de0:	30579073          	csrw	mtvec,a5
    80005de4:	300027f3          	csrr	a5,mstatus
    80005de8:	0087e793          	ori	a5,a5,8
    80005dec:	30079073          	csrw	mstatus,a5
    80005df0:	304027f3          	csrr	a5,mie
    80005df4:	0807e793          	ori	a5,a5,128
    80005df8:	30479073          	csrw	mie,a5
    80005dfc:	f14027f3          	csrr	a5,mhartid
    80005e00:	0007879b          	sext.w	a5,a5
    80005e04:	00078213          	mv	tp,a5
    80005e08:	30200073          	mret
    80005e0c:	00813403          	ld	s0,8(sp)
    80005e10:	01010113          	addi	sp,sp,16
    80005e14:	00008067          	ret

0000000080005e18 <timerinit>:
    80005e18:	ff010113          	addi	sp,sp,-16
    80005e1c:	00813423          	sd	s0,8(sp)
    80005e20:	01010413          	addi	s0,sp,16
    80005e24:	f14027f3          	csrr	a5,mhartid
    80005e28:	0200c737          	lui	a4,0x200c
    80005e2c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e30:	0007869b          	sext.w	a3,a5
    80005e34:	00269713          	slli	a4,a3,0x2
    80005e38:	000f4637          	lui	a2,0xf4
    80005e3c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005e40:	00d70733          	add	a4,a4,a3
    80005e44:	0037979b          	slliw	a5,a5,0x3
    80005e48:	020046b7          	lui	a3,0x2004
    80005e4c:	00d787b3          	add	a5,a5,a3
    80005e50:	00c585b3          	add	a1,a1,a2
    80005e54:	00371693          	slli	a3,a4,0x3
    80005e58:	00005717          	auipc	a4,0x5
    80005e5c:	84870713          	addi	a4,a4,-1976 # 8000a6a0 <timer_scratch>
    80005e60:	00b7b023          	sd	a1,0(a5)
    80005e64:	00d70733          	add	a4,a4,a3
    80005e68:	00f73c23          	sd	a5,24(a4)
    80005e6c:	02c73023          	sd	a2,32(a4)
    80005e70:	34071073          	csrw	mscratch,a4
    80005e74:	00000797          	auipc	a5,0x0
    80005e78:	64c78793          	addi	a5,a5,1612 # 800064c0 <timervec>
    80005e7c:	30579073          	csrw	mtvec,a5
    80005e80:	300027f3          	csrr	a5,mstatus
    80005e84:	0087e793          	ori	a5,a5,8
    80005e88:	30079073          	csrw	mstatus,a5
    80005e8c:	304027f3          	csrr	a5,mie
    80005e90:	0807e793          	ori	a5,a5,128
    80005e94:	30479073          	csrw	mie,a5
    80005e98:	00813403          	ld	s0,8(sp)
    80005e9c:	01010113          	addi	sp,sp,16
    80005ea0:	00008067          	ret

0000000080005ea4 <system_main>:
    80005ea4:	fe010113          	addi	sp,sp,-32
    80005ea8:	00813823          	sd	s0,16(sp)
    80005eac:	00913423          	sd	s1,8(sp)
    80005eb0:	00113c23          	sd	ra,24(sp)
    80005eb4:	02010413          	addi	s0,sp,32
    80005eb8:	00000097          	auipc	ra,0x0
    80005ebc:	0c4080e7          	jalr	196(ra) # 80005f7c <cpuid>
    80005ec0:	00004497          	auipc	s1,0x4
    80005ec4:	73048493          	addi	s1,s1,1840 # 8000a5f0 <started>
    80005ec8:	02050263          	beqz	a0,80005eec <system_main+0x48>
    80005ecc:	0004a783          	lw	a5,0(s1)
    80005ed0:	0007879b          	sext.w	a5,a5
    80005ed4:	fe078ce3          	beqz	a5,80005ecc <system_main+0x28>
    80005ed8:	0ff0000f          	fence
    80005edc:	00002517          	auipc	a0,0x2
    80005ee0:	70c50513          	addi	a0,a0,1804 # 800085e8 <_ZZ16printIntegerMinemE6digits+0x5c8>
    80005ee4:	00001097          	auipc	ra,0x1
    80005ee8:	a78080e7          	jalr	-1416(ra) # 8000695c <panic>
    80005eec:	00001097          	auipc	ra,0x1
    80005ef0:	9cc080e7          	jalr	-1588(ra) # 800068b8 <consoleinit>
    80005ef4:	00001097          	auipc	ra,0x1
    80005ef8:	158080e7          	jalr	344(ra) # 8000704c <printfinit>
    80005efc:	00002517          	auipc	a0,0x2
    80005f00:	5e450513          	addi	a0,a0,1508 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80005f04:	00001097          	auipc	ra,0x1
    80005f08:	ab4080e7          	jalr	-1356(ra) # 800069b8 <__printf>
    80005f0c:	00002517          	auipc	a0,0x2
    80005f10:	6ac50513          	addi	a0,a0,1708 # 800085b8 <_ZZ16printIntegerMinemE6digits+0x598>
    80005f14:	00001097          	auipc	ra,0x1
    80005f18:	aa4080e7          	jalr	-1372(ra) # 800069b8 <__printf>
    80005f1c:	00002517          	auipc	a0,0x2
    80005f20:	5c450513          	addi	a0,a0,1476 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    80005f24:	00001097          	auipc	ra,0x1
    80005f28:	a94080e7          	jalr	-1388(ra) # 800069b8 <__printf>
    80005f2c:	00001097          	auipc	ra,0x1
    80005f30:	4ac080e7          	jalr	1196(ra) # 800073d8 <kinit>
    80005f34:	00000097          	auipc	ra,0x0
    80005f38:	148080e7          	jalr	328(ra) # 8000607c <trapinit>
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	16c080e7          	jalr	364(ra) # 800060a8 <trapinithart>
    80005f44:	00000097          	auipc	ra,0x0
    80005f48:	5bc080e7          	jalr	1468(ra) # 80006500 <plicinit>
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	5dc080e7          	jalr	1500(ra) # 80006528 <plicinithart>
    80005f54:	00000097          	auipc	ra,0x0
    80005f58:	078080e7          	jalr	120(ra) # 80005fcc <userinit>
    80005f5c:	0ff0000f          	fence
    80005f60:	00100793          	li	a5,1
    80005f64:	00002517          	auipc	a0,0x2
    80005f68:	66c50513          	addi	a0,a0,1644 # 800085d0 <_ZZ16printIntegerMinemE6digits+0x5b0>
    80005f6c:	00f4a023          	sw	a5,0(s1)
    80005f70:	00001097          	auipc	ra,0x1
    80005f74:	a48080e7          	jalr	-1464(ra) # 800069b8 <__printf>
    80005f78:	0000006f          	j	80005f78 <system_main+0xd4>

0000000080005f7c <cpuid>:
    80005f7c:	ff010113          	addi	sp,sp,-16
    80005f80:	00813423          	sd	s0,8(sp)
    80005f84:	01010413          	addi	s0,sp,16
    80005f88:	00020513          	mv	a0,tp
    80005f8c:	00813403          	ld	s0,8(sp)
    80005f90:	0005051b          	sext.w	a0,a0
    80005f94:	01010113          	addi	sp,sp,16
    80005f98:	00008067          	ret

0000000080005f9c <mycpu>:
    80005f9c:	ff010113          	addi	sp,sp,-16
    80005fa0:	00813423          	sd	s0,8(sp)
    80005fa4:	01010413          	addi	s0,sp,16
    80005fa8:	00020793          	mv	a5,tp
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	0007879b          	sext.w	a5,a5
    80005fb4:	00779793          	slli	a5,a5,0x7
    80005fb8:	00005517          	auipc	a0,0x5
    80005fbc:	71850513          	addi	a0,a0,1816 # 8000b6d0 <cpus>
    80005fc0:	00f50533          	add	a0,a0,a5
    80005fc4:	01010113          	addi	sp,sp,16
    80005fc8:	00008067          	ret

0000000080005fcc <userinit>:
    80005fcc:	ff010113          	addi	sp,sp,-16
    80005fd0:	00813423          	sd	s0,8(sp)
    80005fd4:	01010413          	addi	s0,sp,16
    80005fd8:	00813403          	ld	s0,8(sp)
    80005fdc:	01010113          	addi	sp,sp,16
    80005fe0:	ffffb317          	auipc	t1,0xffffb
    80005fe4:	64030067          	jr	1600(t1) # 80001620 <main>

0000000080005fe8 <either_copyout>:
    80005fe8:	ff010113          	addi	sp,sp,-16
    80005fec:	00813023          	sd	s0,0(sp)
    80005ff0:	00113423          	sd	ra,8(sp)
    80005ff4:	01010413          	addi	s0,sp,16
    80005ff8:	02051663          	bnez	a0,80006024 <either_copyout+0x3c>
    80005ffc:	00058513          	mv	a0,a1
    80006000:	00060593          	mv	a1,a2
    80006004:	0006861b          	sext.w	a2,a3
    80006008:	00002097          	auipc	ra,0x2
    8000600c:	c5c080e7          	jalr	-932(ra) # 80007c64 <__memmove>
    80006010:	00813083          	ld	ra,8(sp)
    80006014:	00013403          	ld	s0,0(sp)
    80006018:	00000513          	li	a0,0
    8000601c:	01010113          	addi	sp,sp,16
    80006020:	00008067          	ret
    80006024:	00002517          	auipc	a0,0x2
    80006028:	5ec50513          	addi	a0,a0,1516 # 80008610 <_ZZ16printIntegerMinemE6digits+0x5f0>
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	930080e7          	jalr	-1744(ra) # 8000695c <panic>

0000000080006034 <either_copyin>:
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00813023          	sd	s0,0(sp)
    8000603c:	00113423          	sd	ra,8(sp)
    80006040:	01010413          	addi	s0,sp,16
    80006044:	02059463          	bnez	a1,8000606c <either_copyin+0x38>
    80006048:	00060593          	mv	a1,a2
    8000604c:	0006861b          	sext.w	a2,a3
    80006050:	00002097          	auipc	ra,0x2
    80006054:	c14080e7          	jalr	-1004(ra) # 80007c64 <__memmove>
    80006058:	00813083          	ld	ra,8(sp)
    8000605c:	00013403          	ld	s0,0(sp)
    80006060:	00000513          	li	a0,0
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00008067          	ret
    8000606c:	00002517          	auipc	a0,0x2
    80006070:	5cc50513          	addi	a0,a0,1484 # 80008638 <_ZZ16printIntegerMinemE6digits+0x618>
    80006074:	00001097          	auipc	ra,0x1
    80006078:	8e8080e7          	jalr	-1816(ra) # 8000695c <panic>

000000008000607c <trapinit>:
    8000607c:	ff010113          	addi	sp,sp,-16
    80006080:	00813423          	sd	s0,8(sp)
    80006084:	01010413          	addi	s0,sp,16
    80006088:	00813403          	ld	s0,8(sp)
    8000608c:	00002597          	auipc	a1,0x2
    80006090:	5d458593          	addi	a1,a1,1492 # 80008660 <_ZZ16printIntegerMinemE6digits+0x640>
    80006094:	00005517          	auipc	a0,0x5
    80006098:	6bc50513          	addi	a0,a0,1724 # 8000b750 <tickslock>
    8000609c:	01010113          	addi	sp,sp,16
    800060a0:	00001317          	auipc	t1,0x1
    800060a4:	5c830067          	jr	1480(t1) # 80007668 <initlock>

00000000800060a8 <trapinithart>:
    800060a8:	ff010113          	addi	sp,sp,-16
    800060ac:	00813423          	sd	s0,8(sp)
    800060b0:	01010413          	addi	s0,sp,16
    800060b4:	00000797          	auipc	a5,0x0
    800060b8:	2fc78793          	addi	a5,a5,764 # 800063b0 <kernelvec>
    800060bc:	10579073          	csrw	stvec,a5
    800060c0:	00813403          	ld	s0,8(sp)
    800060c4:	01010113          	addi	sp,sp,16
    800060c8:	00008067          	ret

00000000800060cc <usertrap>:
    800060cc:	ff010113          	addi	sp,sp,-16
    800060d0:	00813423          	sd	s0,8(sp)
    800060d4:	01010413          	addi	s0,sp,16
    800060d8:	00813403          	ld	s0,8(sp)
    800060dc:	01010113          	addi	sp,sp,16
    800060e0:	00008067          	ret

00000000800060e4 <usertrapret>:
    800060e4:	ff010113          	addi	sp,sp,-16
    800060e8:	00813423          	sd	s0,8(sp)
    800060ec:	01010413          	addi	s0,sp,16
    800060f0:	00813403          	ld	s0,8(sp)
    800060f4:	01010113          	addi	sp,sp,16
    800060f8:	00008067          	ret

00000000800060fc <kerneltrap>:
    800060fc:	fe010113          	addi	sp,sp,-32
    80006100:	00813823          	sd	s0,16(sp)
    80006104:	00113c23          	sd	ra,24(sp)
    80006108:	00913423          	sd	s1,8(sp)
    8000610c:	02010413          	addi	s0,sp,32
    80006110:	142025f3          	csrr	a1,scause
    80006114:	100027f3          	csrr	a5,sstatus
    80006118:	0027f793          	andi	a5,a5,2
    8000611c:	10079c63          	bnez	a5,80006234 <kerneltrap+0x138>
    80006120:	142027f3          	csrr	a5,scause
    80006124:	0207ce63          	bltz	a5,80006160 <kerneltrap+0x64>
    80006128:	00002517          	auipc	a0,0x2
    8000612c:	58050513          	addi	a0,a0,1408 # 800086a8 <_ZZ16printIntegerMinemE6digits+0x688>
    80006130:	00001097          	auipc	ra,0x1
    80006134:	888080e7          	jalr	-1912(ra) # 800069b8 <__printf>
    80006138:	141025f3          	csrr	a1,sepc
    8000613c:	14302673          	csrr	a2,stval
    80006140:	00002517          	auipc	a0,0x2
    80006144:	57850513          	addi	a0,a0,1400 # 800086b8 <_ZZ16printIntegerMinemE6digits+0x698>
    80006148:	00001097          	auipc	ra,0x1
    8000614c:	870080e7          	jalr	-1936(ra) # 800069b8 <__printf>
    80006150:	00002517          	auipc	a0,0x2
    80006154:	58050513          	addi	a0,a0,1408 # 800086d0 <_ZZ16printIntegerMinemE6digits+0x6b0>
    80006158:	00001097          	auipc	ra,0x1
    8000615c:	804080e7          	jalr	-2044(ra) # 8000695c <panic>
    80006160:	0ff7f713          	andi	a4,a5,255
    80006164:	00900693          	li	a3,9
    80006168:	04d70063          	beq	a4,a3,800061a8 <kerneltrap+0xac>
    8000616c:	fff00713          	li	a4,-1
    80006170:	03f71713          	slli	a4,a4,0x3f
    80006174:	00170713          	addi	a4,a4,1
    80006178:	fae798e3          	bne	a5,a4,80006128 <kerneltrap+0x2c>
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	e00080e7          	jalr	-512(ra) # 80005f7c <cpuid>
    80006184:	06050663          	beqz	a0,800061f0 <kerneltrap+0xf4>
    80006188:	144027f3          	csrr	a5,sip
    8000618c:	ffd7f793          	andi	a5,a5,-3
    80006190:	14479073          	csrw	sip,a5
    80006194:	01813083          	ld	ra,24(sp)
    80006198:	01013403          	ld	s0,16(sp)
    8000619c:	00813483          	ld	s1,8(sp)
    800061a0:	02010113          	addi	sp,sp,32
    800061a4:	00008067          	ret
    800061a8:	00000097          	auipc	ra,0x0
    800061ac:	3cc080e7          	jalr	972(ra) # 80006574 <plic_claim>
    800061b0:	00a00793          	li	a5,10
    800061b4:	00050493          	mv	s1,a0
    800061b8:	06f50863          	beq	a0,a5,80006228 <kerneltrap+0x12c>
    800061bc:	fc050ce3          	beqz	a0,80006194 <kerneltrap+0x98>
    800061c0:	00050593          	mv	a1,a0
    800061c4:	00002517          	auipc	a0,0x2
    800061c8:	4c450513          	addi	a0,a0,1220 # 80008688 <_ZZ16printIntegerMinemE6digits+0x668>
    800061cc:	00000097          	auipc	ra,0x0
    800061d0:	7ec080e7          	jalr	2028(ra) # 800069b8 <__printf>
    800061d4:	01013403          	ld	s0,16(sp)
    800061d8:	01813083          	ld	ra,24(sp)
    800061dc:	00048513          	mv	a0,s1
    800061e0:	00813483          	ld	s1,8(sp)
    800061e4:	02010113          	addi	sp,sp,32
    800061e8:	00000317          	auipc	t1,0x0
    800061ec:	3c430067          	jr	964(t1) # 800065ac <plic_complete>
    800061f0:	00005517          	auipc	a0,0x5
    800061f4:	56050513          	addi	a0,a0,1376 # 8000b750 <tickslock>
    800061f8:	00001097          	auipc	ra,0x1
    800061fc:	494080e7          	jalr	1172(ra) # 8000768c <acquire>
    80006200:	00004717          	auipc	a4,0x4
    80006204:	3f470713          	addi	a4,a4,1012 # 8000a5f4 <ticks>
    80006208:	00072783          	lw	a5,0(a4)
    8000620c:	00005517          	auipc	a0,0x5
    80006210:	54450513          	addi	a0,a0,1348 # 8000b750 <tickslock>
    80006214:	0017879b          	addiw	a5,a5,1
    80006218:	00f72023          	sw	a5,0(a4)
    8000621c:	00001097          	auipc	ra,0x1
    80006220:	53c080e7          	jalr	1340(ra) # 80007758 <release>
    80006224:	f65ff06f          	j	80006188 <kerneltrap+0x8c>
    80006228:	00001097          	auipc	ra,0x1
    8000622c:	098080e7          	jalr	152(ra) # 800072c0 <uartintr>
    80006230:	fa5ff06f          	j	800061d4 <kerneltrap+0xd8>
    80006234:	00002517          	auipc	a0,0x2
    80006238:	43450513          	addi	a0,a0,1076 # 80008668 <_ZZ16printIntegerMinemE6digits+0x648>
    8000623c:	00000097          	auipc	ra,0x0
    80006240:	720080e7          	jalr	1824(ra) # 8000695c <panic>

0000000080006244 <clockintr>:
    80006244:	fe010113          	addi	sp,sp,-32
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	00113c23          	sd	ra,24(sp)
    80006254:	02010413          	addi	s0,sp,32
    80006258:	00005497          	auipc	s1,0x5
    8000625c:	4f848493          	addi	s1,s1,1272 # 8000b750 <tickslock>
    80006260:	00048513          	mv	a0,s1
    80006264:	00001097          	auipc	ra,0x1
    80006268:	428080e7          	jalr	1064(ra) # 8000768c <acquire>
    8000626c:	00004717          	auipc	a4,0x4
    80006270:	38870713          	addi	a4,a4,904 # 8000a5f4 <ticks>
    80006274:	00072783          	lw	a5,0(a4)
    80006278:	01013403          	ld	s0,16(sp)
    8000627c:	01813083          	ld	ra,24(sp)
    80006280:	00048513          	mv	a0,s1
    80006284:	0017879b          	addiw	a5,a5,1
    80006288:	00813483          	ld	s1,8(sp)
    8000628c:	00f72023          	sw	a5,0(a4)
    80006290:	02010113          	addi	sp,sp,32
    80006294:	00001317          	auipc	t1,0x1
    80006298:	4c430067          	jr	1220(t1) # 80007758 <release>

000000008000629c <devintr>:
    8000629c:	142027f3          	csrr	a5,scause
    800062a0:	00000513          	li	a0,0
    800062a4:	0007c463          	bltz	a5,800062ac <devintr+0x10>
    800062a8:	00008067          	ret
    800062ac:	fe010113          	addi	sp,sp,-32
    800062b0:	00813823          	sd	s0,16(sp)
    800062b4:	00113c23          	sd	ra,24(sp)
    800062b8:	00913423          	sd	s1,8(sp)
    800062bc:	02010413          	addi	s0,sp,32
    800062c0:	0ff7f713          	andi	a4,a5,255
    800062c4:	00900693          	li	a3,9
    800062c8:	04d70c63          	beq	a4,a3,80006320 <devintr+0x84>
    800062cc:	fff00713          	li	a4,-1
    800062d0:	03f71713          	slli	a4,a4,0x3f
    800062d4:	00170713          	addi	a4,a4,1
    800062d8:	00e78c63          	beq	a5,a4,800062f0 <devintr+0x54>
    800062dc:	01813083          	ld	ra,24(sp)
    800062e0:	01013403          	ld	s0,16(sp)
    800062e4:	00813483          	ld	s1,8(sp)
    800062e8:	02010113          	addi	sp,sp,32
    800062ec:	00008067          	ret
    800062f0:	00000097          	auipc	ra,0x0
    800062f4:	c8c080e7          	jalr	-884(ra) # 80005f7c <cpuid>
    800062f8:	06050663          	beqz	a0,80006364 <devintr+0xc8>
    800062fc:	144027f3          	csrr	a5,sip
    80006300:	ffd7f793          	andi	a5,a5,-3
    80006304:	14479073          	csrw	sip,a5
    80006308:	01813083          	ld	ra,24(sp)
    8000630c:	01013403          	ld	s0,16(sp)
    80006310:	00813483          	ld	s1,8(sp)
    80006314:	00200513          	li	a0,2
    80006318:	02010113          	addi	sp,sp,32
    8000631c:	00008067          	ret
    80006320:	00000097          	auipc	ra,0x0
    80006324:	254080e7          	jalr	596(ra) # 80006574 <plic_claim>
    80006328:	00a00793          	li	a5,10
    8000632c:	00050493          	mv	s1,a0
    80006330:	06f50663          	beq	a0,a5,8000639c <devintr+0x100>
    80006334:	00100513          	li	a0,1
    80006338:	fa0482e3          	beqz	s1,800062dc <devintr+0x40>
    8000633c:	00048593          	mv	a1,s1
    80006340:	00002517          	auipc	a0,0x2
    80006344:	34850513          	addi	a0,a0,840 # 80008688 <_ZZ16printIntegerMinemE6digits+0x668>
    80006348:	00000097          	auipc	ra,0x0
    8000634c:	670080e7          	jalr	1648(ra) # 800069b8 <__printf>
    80006350:	00048513          	mv	a0,s1
    80006354:	00000097          	auipc	ra,0x0
    80006358:	258080e7          	jalr	600(ra) # 800065ac <plic_complete>
    8000635c:	00100513          	li	a0,1
    80006360:	f7dff06f          	j	800062dc <devintr+0x40>
    80006364:	00005517          	auipc	a0,0x5
    80006368:	3ec50513          	addi	a0,a0,1004 # 8000b750 <tickslock>
    8000636c:	00001097          	auipc	ra,0x1
    80006370:	320080e7          	jalr	800(ra) # 8000768c <acquire>
    80006374:	00004717          	auipc	a4,0x4
    80006378:	28070713          	addi	a4,a4,640 # 8000a5f4 <ticks>
    8000637c:	00072783          	lw	a5,0(a4)
    80006380:	00005517          	auipc	a0,0x5
    80006384:	3d050513          	addi	a0,a0,976 # 8000b750 <tickslock>
    80006388:	0017879b          	addiw	a5,a5,1
    8000638c:	00f72023          	sw	a5,0(a4)
    80006390:	00001097          	auipc	ra,0x1
    80006394:	3c8080e7          	jalr	968(ra) # 80007758 <release>
    80006398:	f65ff06f          	j	800062fc <devintr+0x60>
    8000639c:	00001097          	auipc	ra,0x1
    800063a0:	f24080e7          	jalr	-220(ra) # 800072c0 <uartintr>
    800063a4:	fadff06f          	j	80006350 <devintr+0xb4>
	...

00000000800063b0 <kernelvec>:
    800063b0:	f0010113          	addi	sp,sp,-256
    800063b4:	00113023          	sd	ra,0(sp)
    800063b8:	00213423          	sd	sp,8(sp)
    800063bc:	00313823          	sd	gp,16(sp)
    800063c0:	00413c23          	sd	tp,24(sp)
    800063c4:	02513023          	sd	t0,32(sp)
    800063c8:	02613423          	sd	t1,40(sp)
    800063cc:	02713823          	sd	t2,48(sp)
    800063d0:	02813c23          	sd	s0,56(sp)
    800063d4:	04913023          	sd	s1,64(sp)
    800063d8:	04a13423          	sd	a0,72(sp)
    800063dc:	04b13823          	sd	a1,80(sp)
    800063e0:	04c13c23          	sd	a2,88(sp)
    800063e4:	06d13023          	sd	a3,96(sp)
    800063e8:	06e13423          	sd	a4,104(sp)
    800063ec:	06f13823          	sd	a5,112(sp)
    800063f0:	07013c23          	sd	a6,120(sp)
    800063f4:	09113023          	sd	a7,128(sp)
    800063f8:	09213423          	sd	s2,136(sp)
    800063fc:	09313823          	sd	s3,144(sp)
    80006400:	09413c23          	sd	s4,152(sp)
    80006404:	0b513023          	sd	s5,160(sp)
    80006408:	0b613423          	sd	s6,168(sp)
    8000640c:	0b713823          	sd	s7,176(sp)
    80006410:	0b813c23          	sd	s8,184(sp)
    80006414:	0d913023          	sd	s9,192(sp)
    80006418:	0da13423          	sd	s10,200(sp)
    8000641c:	0db13823          	sd	s11,208(sp)
    80006420:	0dc13c23          	sd	t3,216(sp)
    80006424:	0fd13023          	sd	t4,224(sp)
    80006428:	0fe13423          	sd	t5,232(sp)
    8000642c:	0ff13823          	sd	t6,240(sp)
    80006430:	ccdff0ef          	jal	ra,800060fc <kerneltrap>
    80006434:	00013083          	ld	ra,0(sp)
    80006438:	00813103          	ld	sp,8(sp)
    8000643c:	01013183          	ld	gp,16(sp)
    80006440:	02013283          	ld	t0,32(sp)
    80006444:	02813303          	ld	t1,40(sp)
    80006448:	03013383          	ld	t2,48(sp)
    8000644c:	03813403          	ld	s0,56(sp)
    80006450:	04013483          	ld	s1,64(sp)
    80006454:	04813503          	ld	a0,72(sp)
    80006458:	05013583          	ld	a1,80(sp)
    8000645c:	05813603          	ld	a2,88(sp)
    80006460:	06013683          	ld	a3,96(sp)
    80006464:	06813703          	ld	a4,104(sp)
    80006468:	07013783          	ld	a5,112(sp)
    8000646c:	07813803          	ld	a6,120(sp)
    80006470:	08013883          	ld	a7,128(sp)
    80006474:	08813903          	ld	s2,136(sp)
    80006478:	09013983          	ld	s3,144(sp)
    8000647c:	09813a03          	ld	s4,152(sp)
    80006480:	0a013a83          	ld	s5,160(sp)
    80006484:	0a813b03          	ld	s6,168(sp)
    80006488:	0b013b83          	ld	s7,176(sp)
    8000648c:	0b813c03          	ld	s8,184(sp)
    80006490:	0c013c83          	ld	s9,192(sp)
    80006494:	0c813d03          	ld	s10,200(sp)
    80006498:	0d013d83          	ld	s11,208(sp)
    8000649c:	0d813e03          	ld	t3,216(sp)
    800064a0:	0e013e83          	ld	t4,224(sp)
    800064a4:	0e813f03          	ld	t5,232(sp)
    800064a8:	0f013f83          	ld	t6,240(sp)
    800064ac:	10010113          	addi	sp,sp,256
    800064b0:	10200073          	sret
    800064b4:	00000013          	nop
    800064b8:	00000013          	nop
    800064bc:	00000013          	nop

00000000800064c0 <timervec>:
    800064c0:	34051573          	csrrw	a0,mscratch,a0
    800064c4:	00b53023          	sd	a1,0(a0)
    800064c8:	00c53423          	sd	a2,8(a0)
    800064cc:	00d53823          	sd	a3,16(a0)
    800064d0:	01853583          	ld	a1,24(a0)
    800064d4:	02053603          	ld	a2,32(a0)
    800064d8:	0005b683          	ld	a3,0(a1)
    800064dc:	00c686b3          	add	a3,a3,a2
    800064e0:	00d5b023          	sd	a3,0(a1)
    800064e4:	00200593          	li	a1,2
    800064e8:	14459073          	csrw	sip,a1
    800064ec:	01053683          	ld	a3,16(a0)
    800064f0:	00853603          	ld	a2,8(a0)
    800064f4:	00053583          	ld	a1,0(a0)
    800064f8:	34051573          	csrrw	a0,mscratch,a0
    800064fc:	30200073          	mret

0000000080006500 <plicinit>:
    80006500:	ff010113          	addi	sp,sp,-16
    80006504:	00813423          	sd	s0,8(sp)
    80006508:	01010413          	addi	s0,sp,16
    8000650c:	00813403          	ld	s0,8(sp)
    80006510:	0c0007b7          	lui	a5,0xc000
    80006514:	00100713          	li	a4,1
    80006518:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000651c:	00e7a223          	sw	a4,4(a5)
    80006520:	01010113          	addi	sp,sp,16
    80006524:	00008067          	ret

0000000080006528 <plicinithart>:
    80006528:	ff010113          	addi	sp,sp,-16
    8000652c:	00813023          	sd	s0,0(sp)
    80006530:	00113423          	sd	ra,8(sp)
    80006534:	01010413          	addi	s0,sp,16
    80006538:	00000097          	auipc	ra,0x0
    8000653c:	a44080e7          	jalr	-1468(ra) # 80005f7c <cpuid>
    80006540:	0085171b          	slliw	a4,a0,0x8
    80006544:	0c0027b7          	lui	a5,0xc002
    80006548:	00e787b3          	add	a5,a5,a4
    8000654c:	40200713          	li	a4,1026
    80006550:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006554:	00813083          	ld	ra,8(sp)
    80006558:	00013403          	ld	s0,0(sp)
    8000655c:	00d5151b          	slliw	a0,a0,0xd
    80006560:	0c2017b7          	lui	a5,0xc201
    80006564:	00a78533          	add	a0,a5,a0
    80006568:	00052023          	sw	zero,0(a0)
    8000656c:	01010113          	addi	sp,sp,16
    80006570:	00008067          	ret

0000000080006574 <plic_claim>:
    80006574:	ff010113          	addi	sp,sp,-16
    80006578:	00813023          	sd	s0,0(sp)
    8000657c:	00113423          	sd	ra,8(sp)
    80006580:	01010413          	addi	s0,sp,16
    80006584:	00000097          	auipc	ra,0x0
    80006588:	9f8080e7          	jalr	-1544(ra) # 80005f7c <cpuid>
    8000658c:	00813083          	ld	ra,8(sp)
    80006590:	00013403          	ld	s0,0(sp)
    80006594:	00d5151b          	slliw	a0,a0,0xd
    80006598:	0c2017b7          	lui	a5,0xc201
    8000659c:	00a78533          	add	a0,a5,a0
    800065a0:	00452503          	lw	a0,4(a0)
    800065a4:	01010113          	addi	sp,sp,16
    800065a8:	00008067          	ret

00000000800065ac <plic_complete>:
    800065ac:	fe010113          	addi	sp,sp,-32
    800065b0:	00813823          	sd	s0,16(sp)
    800065b4:	00913423          	sd	s1,8(sp)
    800065b8:	00113c23          	sd	ra,24(sp)
    800065bc:	02010413          	addi	s0,sp,32
    800065c0:	00050493          	mv	s1,a0
    800065c4:	00000097          	auipc	ra,0x0
    800065c8:	9b8080e7          	jalr	-1608(ra) # 80005f7c <cpuid>
    800065cc:	01813083          	ld	ra,24(sp)
    800065d0:	01013403          	ld	s0,16(sp)
    800065d4:	00d5179b          	slliw	a5,a0,0xd
    800065d8:	0c201737          	lui	a4,0xc201
    800065dc:	00f707b3          	add	a5,a4,a5
    800065e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800065e4:	00813483          	ld	s1,8(sp)
    800065e8:	02010113          	addi	sp,sp,32
    800065ec:	00008067          	ret

00000000800065f0 <consolewrite>:
    800065f0:	fb010113          	addi	sp,sp,-80
    800065f4:	04813023          	sd	s0,64(sp)
    800065f8:	04113423          	sd	ra,72(sp)
    800065fc:	02913c23          	sd	s1,56(sp)
    80006600:	03213823          	sd	s2,48(sp)
    80006604:	03313423          	sd	s3,40(sp)
    80006608:	03413023          	sd	s4,32(sp)
    8000660c:	01513c23          	sd	s5,24(sp)
    80006610:	05010413          	addi	s0,sp,80
    80006614:	06c05c63          	blez	a2,8000668c <consolewrite+0x9c>
    80006618:	00060993          	mv	s3,a2
    8000661c:	00050a13          	mv	s4,a0
    80006620:	00058493          	mv	s1,a1
    80006624:	00000913          	li	s2,0
    80006628:	fff00a93          	li	s5,-1
    8000662c:	01c0006f          	j	80006648 <consolewrite+0x58>
    80006630:	fbf44503          	lbu	a0,-65(s0)
    80006634:	0019091b          	addiw	s2,s2,1
    80006638:	00148493          	addi	s1,s1,1
    8000663c:	00001097          	auipc	ra,0x1
    80006640:	a9c080e7          	jalr	-1380(ra) # 800070d8 <uartputc>
    80006644:	03298063          	beq	s3,s2,80006664 <consolewrite+0x74>
    80006648:	00048613          	mv	a2,s1
    8000664c:	00100693          	li	a3,1
    80006650:	000a0593          	mv	a1,s4
    80006654:	fbf40513          	addi	a0,s0,-65
    80006658:	00000097          	auipc	ra,0x0
    8000665c:	9dc080e7          	jalr	-1572(ra) # 80006034 <either_copyin>
    80006660:	fd5518e3          	bne	a0,s5,80006630 <consolewrite+0x40>
    80006664:	04813083          	ld	ra,72(sp)
    80006668:	04013403          	ld	s0,64(sp)
    8000666c:	03813483          	ld	s1,56(sp)
    80006670:	02813983          	ld	s3,40(sp)
    80006674:	02013a03          	ld	s4,32(sp)
    80006678:	01813a83          	ld	s5,24(sp)
    8000667c:	00090513          	mv	a0,s2
    80006680:	03013903          	ld	s2,48(sp)
    80006684:	05010113          	addi	sp,sp,80
    80006688:	00008067          	ret
    8000668c:	00000913          	li	s2,0
    80006690:	fd5ff06f          	j	80006664 <consolewrite+0x74>

0000000080006694 <consoleread>:
    80006694:	f9010113          	addi	sp,sp,-112
    80006698:	06813023          	sd	s0,96(sp)
    8000669c:	04913c23          	sd	s1,88(sp)
    800066a0:	05213823          	sd	s2,80(sp)
    800066a4:	05313423          	sd	s3,72(sp)
    800066a8:	05413023          	sd	s4,64(sp)
    800066ac:	03513c23          	sd	s5,56(sp)
    800066b0:	03613823          	sd	s6,48(sp)
    800066b4:	03713423          	sd	s7,40(sp)
    800066b8:	03813023          	sd	s8,32(sp)
    800066bc:	06113423          	sd	ra,104(sp)
    800066c0:	01913c23          	sd	s9,24(sp)
    800066c4:	07010413          	addi	s0,sp,112
    800066c8:	00060b93          	mv	s7,a2
    800066cc:	00050913          	mv	s2,a0
    800066d0:	00058c13          	mv	s8,a1
    800066d4:	00060b1b          	sext.w	s6,a2
    800066d8:	00005497          	auipc	s1,0x5
    800066dc:	0a048493          	addi	s1,s1,160 # 8000b778 <cons>
    800066e0:	00400993          	li	s3,4
    800066e4:	fff00a13          	li	s4,-1
    800066e8:	00a00a93          	li	s5,10
    800066ec:	05705e63          	blez	s7,80006748 <consoleread+0xb4>
    800066f0:	09c4a703          	lw	a4,156(s1)
    800066f4:	0984a783          	lw	a5,152(s1)
    800066f8:	0007071b          	sext.w	a4,a4
    800066fc:	08e78463          	beq	a5,a4,80006784 <consoleread+0xf0>
    80006700:	07f7f713          	andi	a4,a5,127
    80006704:	00e48733          	add	a4,s1,a4
    80006708:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000670c:	0017869b          	addiw	a3,a5,1
    80006710:	08d4ac23          	sw	a3,152(s1)
    80006714:	00070c9b          	sext.w	s9,a4
    80006718:	0b370663          	beq	a4,s3,800067c4 <consoleread+0x130>
    8000671c:	00100693          	li	a3,1
    80006720:	f9f40613          	addi	a2,s0,-97
    80006724:	000c0593          	mv	a1,s8
    80006728:	00090513          	mv	a0,s2
    8000672c:	f8e40fa3          	sb	a4,-97(s0)
    80006730:	00000097          	auipc	ra,0x0
    80006734:	8b8080e7          	jalr	-1864(ra) # 80005fe8 <either_copyout>
    80006738:	01450863          	beq	a0,s4,80006748 <consoleread+0xb4>
    8000673c:	001c0c13          	addi	s8,s8,1
    80006740:	fffb8b9b          	addiw	s7,s7,-1
    80006744:	fb5c94e3          	bne	s9,s5,800066ec <consoleread+0x58>
    80006748:	000b851b          	sext.w	a0,s7
    8000674c:	06813083          	ld	ra,104(sp)
    80006750:	06013403          	ld	s0,96(sp)
    80006754:	05813483          	ld	s1,88(sp)
    80006758:	05013903          	ld	s2,80(sp)
    8000675c:	04813983          	ld	s3,72(sp)
    80006760:	04013a03          	ld	s4,64(sp)
    80006764:	03813a83          	ld	s5,56(sp)
    80006768:	02813b83          	ld	s7,40(sp)
    8000676c:	02013c03          	ld	s8,32(sp)
    80006770:	01813c83          	ld	s9,24(sp)
    80006774:	40ab053b          	subw	a0,s6,a0
    80006778:	03013b03          	ld	s6,48(sp)
    8000677c:	07010113          	addi	sp,sp,112
    80006780:	00008067          	ret
    80006784:	00001097          	auipc	ra,0x1
    80006788:	1d8080e7          	jalr	472(ra) # 8000795c <push_on>
    8000678c:	0984a703          	lw	a4,152(s1)
    80006790:	09c4a783          	lw	a5,156(s1)
    80006794:	0007879b          	sext.w	a5,a5
    80006798:	fef70ce3          	beq	a4,a5,80006790 <consoleread+0xfc>
    8000679c:	00001097          	auipc	ra,0x1
    800067a0:	234080e7          	jalr	564(ra) # 800079d0 <pop_on>
    800067a4:	0984a783          	lw	a5,152(s1)
    800067a8:	07f7f713          	andi	a4,a5,127
    800067ac:	00e48733          	add	a4,s1,a4
    800067b0:	01874703          	lbu	a4,24(a4)
    800067b4:	0017869b          	addiw	a3,a5,1
    800067b8:	08d4ac23          	sw	a3,152(s1)
    800067bc:	00070c9b          	sext.w	s9,a4
    800067c0:	f5371ee3          	bne	a4,s3,8000671c <consoleread+0x88>
    800067c4:	000b851b          	sext.w	a0,s7
    800067c8:	f96bf2e3          	bgeu	s7,s6,8000674c <consoleread+0xb8>
    800067cc:	08f4ac23          	sw	a5,152(s1)
    800067d0:	f7dff06f          	j	8000674c <consoleread+0xb8>

00000000800067d4 <consputc>:
    800067d4:	10000793          	li	a5,256
    800067d8:	00f50663          	beq	a0,a5,800067e4 <consputc+0x10>
    800067dc:	00001317          	auipc	t1,0x1
    800067e0:	9f430067          	jr	-1548(t1) # 800071d0 <uartputc_sync>
    800067e4:	ff010113          	addi	sp,sp,-16
    800067e8:	00113423          	sd	ra,8(sp)
    800067ec:	00813023          	sd	s0,0(sp)
    800067f0:	01010413          	addi	s0,sp,16
    800067f4:	00800513          	li	a0,8
    800067f8:	00001097          	auipc	ra,0x1
    800067fc:	9d8080e7          	jalr	-1576(ra) # 800071d0 <uartputc_sync>
    80006800:	02000513          	li	a0,32
    80006804:	00001097          	auipc	ra,0x1
    80006808:	9cc080e7          	jalr	-1588(ra) # 800071d0 <uartputc_sync>
    8000680c:	00013403          	ld	s0,0(sp)
    80006810:	00813083          	ld	ra,8(sp)
    80006814:	00800513          	li	a0,8
    80006818:	01010113          	addi	sp,sp,16
    8000681c:	00001317          	auipc	t1,0x1
    80006820:	9b430067          	jr	-1612(t1) # 800071d0 <uartputc_sync>

0000000080006824 <consoleintr>:
    80006824:	fe010113          	addi	sp,sp,-32
    80006828:	00813823          	sd	s0,16(sp)
    8000682c:	00913423          	sd	s1,8(sp)
    80006830:	01213023          	sd	s2,0(sp)
    80006834:	00113c23          	sd	ra,24(sp)
    80006838:	02010413          	addi	s0,sp,32
    8000683c:	00005917          	auipc	s2,0x5
    80006840:	f3c90913          	addi	s2,s2,-196 # 8000b778 <cons>
    80006844:	00050493          	mv	s1,a0
    80006848:	00090513          	mv	a0,s2
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	e40080e7          	jalr	-448(ra) # 8000768c <acquire>
    80006854:	02048c63          	beqz	s1,8000688c <consoleintr+0x68>
    80006858:	0a092783          	lw	a5,160(s2)
    8000685c:	09892703          	lw	a4,152(s2)
    80006860:	07f00693          	li	a3,127
    80006864:	40e7873b          	subw	a4,a5,a4
    80006868:	02e6e263          	bltu	a3,a4,8000688c <consoleintr+0x68>
    8000686c:	00d00713          	li	a4,13
    80006870:	04e48063          	beq	s1,a4,800068b0 <consoleintr+0x8c>
    80006874:	07f7f713          	andi	a4,a5,127
    80006878:	00e90733          	add	a4,s2,a4
    8000687c:	0017879b          	addiw	a5,a5,1
    80006880:	0af92023          	sw	a5,160(s2)
    80006884:	00970c23          	sb	s1,24(a4)
    80006888:	08f92e23          	sw	a5,156(s2)
    8000688c:	01013403          	ld	s0,16(sp)
    80006890:	01813083          	ld	ra,24(sp)
    80006894:	00813483          	ld	s1,8(sp)
    80006898:	00013903          	ld	s2,0(sp)
    8000689c:	00005517          	auipc	a0,0x5
    800068a0:	edc50513          	addi	a0,a0,-292 # 8000b778 <cons>
    800068a4:	02010113          	addi	sp,sp,32
    800068a8:	00001317          	auipc	t1,0x1
    800068ac:	eb030067          	jr	-336(t1) # 80007758 <release>
    800068b0:	00a00493          	li	s1,10
    800068b4:	fc1ff06f          	j	80006874 <consoleintr+0x50>

00000000800068b8 <consoleinit>:
    800068b8:	fe010113          	addi	sp,sp,-32
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	00813823          	sd	s0,16(sp)
    800068c4:	00913423          	sd	s1,8(sp)
    800068c8:	02010413          	addi	s0,sp,32
    800068cc:	00005497          	auipc	s1,0x5
    800068d0:	eac48493          	addi	s1,s1,-340 # 8000b778 <cons>
    800068d4:	00048513          	mv	a0,s1
    800068d8:	00002597          	auipc	a1,0x2
    800068dc:	e0858593          	addi	a1,a1,-504 # 800086e0 <_ZZ16printIntegerMinemE6digits+0x6c0>
    800068e0:	00001097          	auipc	ra,0x1
    800068e4:	d88080e7          	jalr	-632(ra) # 80007668 <initlock>
    800068e8:	00000097          	auipc	ra,0x0
    800068ec:	7ac080e7          	jalr	1964(ra) # 80007094 <uartinit>
    800068f0:	01813083          	ld	ra,24(sp)
    800068f4:	01013403          	ld	s0,16(sp)
    800068f8:	00000797          	auipc	a5,0x0
    800068fc:	d9c78793          	addi	a5,a5,-612 # 80006694 <consoleread>
    80006900:	0af4bc23          	sd	a5,184(s1)
    80006904:	00000797          	auipc	a5,0x0
    80006908:	cec78793          	addi	a5,a5,-788 # 800065f0 <consolewrite>
    8000690c:	0cf4b023          	sd	a5,192(s1)
    80006910:	00813483          	ld	s1,8(sp)
    80006914:	02010113          	addi	sp,sp,32
    80006918:	00008067          	ret

000000008000691c <console_read>:
    8000691c:	ff010113          	addi	sp,sp,-16
    80006920:	00813423          	sd	s0,8(sp)
    80006924:	01010413          	addi	s0,sp,16
    80006928:	00813403          	ld	s0,8(sp)
    8000692c:	00005317          	auipc	t1,0x5
    80006930:	f0433303          	ld	t1,-252(t1) # 8000b830 <devsw+0x10>
    80006934:	01010113          	addi	sp,sp,16
    80006938:	00030067          	jr	t1

000000008000693c <console_write>:
    8000693c:	ff010113          	addi	sp,sp,-16
    80006940:	00813423          	sd	s0,8(sp)
    80006944:	01010413          	addi	s0,sp,16
    80006948:	00813403          	ld	s0,8(sp)
    8000694c:	00005317          	auipc	t1,0x5
    80006950:	eec33303          	ld	t1,-276(t1) # 8000b838 <devsw+0x18>
    80006954:	01010113          	addi	sp,sp,16
    80006958:	00030067          	jr	t1

000000008000695c <panic>:
    8000695c:	fe010113          	addi	sp,sp,-32
    80006960:	00113c23          	sd	ra,24(sp)
    80006964:	00813823          	sd	s0,16(sp)
    80006968:	00913423          	sd	s1,8(sp)
    8000696c:	02010413          	addi	s0,sp,32
    80006970:	00050493          	mv	s1,a0
    80006974:	00002517          	auipc	a0,0x2
    80006978:	d7450513          	addi	a0,a0,-652 # 800086e8 <_ZZ16printIntegerMinemE6digits+0x6c8>
    8000697c:	00005797          	auipc	a5,0x5
    80006980:	f407ae23          	sw	zero,-164(a5) # 8000b8d8 <pr+0x18>
    80006984:	00000097          	auipc	ra,0x0
    80006988:	034080e7          	jalr	52(ra) # 800069b8 <__printf>
    8000698c:	00048513          	mv	a0,s1
    80006990:	00000097          	auipc	ra,0x0
    80006994:	028080e7          	jalr	40(ra) # 800069b8 <__printf>
    80006998:	00002517          	auipc	a0,0x2
    8000699c:	b4850513          	addi	a0,a0,-1208 # 800084e0 <_ZZ16printIntegerMinemE6digits+0x4c0>
    800069a0:	00000097          	auipc	ra,0x0
    800069a4:	018080e7          	jalr	24(ra) # 800069b8 <__printf>
    800069a8:	00100793          	li	a5,1
    800069ac:	00004717          	auipc	a4,0x4
    800069b0:	c4f72623          	sw	a5,-948(a4) # 8000a5f8 <panicked>
    800069b4:	0000006f          	j	800069b4 <panic+0x58>

00000000800069b8 <__printf>:
    800069b8:	f3010113          	addi	sp,sp,-208
    800069bc:	08813023          	sd	s0,128(sp)
    800069c0:	07313423          	sd	s3,104(sp)
    800069c4:	09010413          	addi	s0,sp,144
    800069c8:	05813023          	sd	s8,64(sp)
    800069cc:	08113423          	sd	ra,136(sp)
    800069d0:	06913c23          	sd	s1,120(sp)
    800069d4:	07213823          	sd	s2,112(sp)
    800069d8:	07413023          	sd	s4,96(sp)
    800069dc:	05513c23          	sd	s5,88(sp)
    800069e0:	05613823          	sd	s6,80(sp)
    800069e4:	05713423          	sd	s7,72(sp)
    800069e8:	03913c23          	sd	s9,56(sp)
    800069ec:	03a13823          	sd	s10,48(sp)
    800069f0:	03b13423          	sd	s11,40(sp)
    800069f4:	00005317          	auipc	t1,0x5
    800069f8:	ecc30313          	addi	t1,t1,-308 # 8000b8c0 <pr>
    800069fc:	01832c03          	lw	s8,24(t1)
    80006a00:	00b43423          	sd	a1,8(s0)
    80006a04:	00c43823          	sd	a2,16(s0)
    80006a08:	00d43c23          	sd	a3,24(s0)
    80006a0c:	02e43023          	sd	a4,32(s0)
    80006a10:	02f43423          	sd	a5,40(s0)
    80006a14:	03043823          	sd	a6,48(s0)
    80006a18:	03143c23          	sd	a7,56(s0)
    80006a1c:	00050993          	mv	s3,a0
    80006a20:	4a0c1663          	bnez	s8,80006ecc <__printf+0x514>
    80006a24:	60098c63          	beqz	s3,8000703c <__printf+0x684>
    80006a28:	0009c503          	lbu	a0,0(s3)
    80006a2c:	00840793          	addi	a5,s0,8
    80006a30:	f6f43c23          	sd	a5,-136(s0)
    80006a34:	00000493          	li	s1,0
    80006a38:	22050063          	beqz	a0,80006c58 <__printf+0x2a0>
    80006a3c:	00002a37          	lui	s4,0x2
    80006a40:	00018ab7          	lui	s5,0x18
    80006a44:	000f4b37          	lui	s6,0xf4
    80006a48:	00989bb7          	lui	s7,0x989
    80006a4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006a50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006a54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006a58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006a5c:	00148c9b          	addiw	s9,s1,1
    80006a60:	02500793          	li	a5,37
    80006a64:	01998933          	add	s2,s3,s9
    80006a68:	38f51263          	bne	a0,a5,80006dec <__printf+0x434>
    80006a6c:	00094783          	lbu	a5,0(s2)
    80006a70:	00078c9b          	sext.w	s9,a5
    80006a74:	1e078263          	beqz	a5,80006c58 <__printf+0x2a0>
    80006a78:	0024849b          	addiw	s1,s1,2
    80006a7c:	07000713          	li	a4,112
    80006a80:	00998933          	add	s2,s3,s1
    80006a84:	38e78a63          	beq	a5,a4,80006e18 <__printf+0x460>
    80006a88:	20f76863          	bltu	a4,a5,80006c98 <__printf+0x2e0>
    80006a8c:	42a78863          	beq	a5,a0,80006ebc <__printf+0x504>
    80006a90:	06400713          	li	a4,100
    80006a94:	40e79663          	bne	a5,a4,80006ea0 <__printf+0x4e8>
    80006a98:	f7843783          	ld	a5,-136(s0)
    80006a9c:	0007a603          	lw	a2,0(a5)
    80006aa0:	00878793          	addi	a5,a5,8
    80006aa4:	f6f43c23          	sd	a5,-136(s0)
    80006aa8:	42064a63          	bltz	a2,80006edc <__printf+0x524>
    80006aac:	00a00713          	li	a4,10
    80006ab0:	02e677bb          	remuw	a5,a2,a4
    80006ab4:	00002d97          	auipc	s11,0x2
    80006ab8:	c5cd8d93          	addi	s11,s11,-932 # 80008710 <digits>
    80006abc:	00900593          	li	a1,9
    80006ac0:	0006051b          	sext.w	a0,a2
    80006ac4:	00000c93          	li	s9,0
    80006ac8:	02079793          	slli	a5,a5,0x20
    80006acc:	0207d793          	srli	a5,a5,0x20
    80006ad0:	00fd87b3          	add	a5,s11,a5
    80006ad4:	0007c783          	lbu	a5,0(a5)
    80006ad8:	02e656bb          	divuw	a3,a2,a4
    80006adc:	f8f40023          	sb	a5,-128(s0)
    80006ae0:	14c5d863          	bge	a1,a2,80006c30 <__printf+0x278>
    80006ae4:	06300593          	li	a1,99
    80006ae8:	00100c93          	li	s9,1
    80006aec:	02e6f7bb          	remuw	a5,a3,a4
    80006af0:	02079793          	slli	a5,a5,0x20
    80006af4:	0207d793          	srli	a5,a5,0x20
    80006af8:	00fd87b3          	add	a5,s11,a5
    80006afc:	0007c783          	lbu	a5,0(a5)
    80006b00:	02e6d73b          	divuw	a4,a3,a4
    80006b04:	f8f400a3          	sb	a5,-127(s0)
    80006b08:	12a5f463          	bgeu	a1,a0,80006c30 <__printf+0x278>
    80006b0c:	00a00693          	li	a3,10
    80006b10:	00900593          	li	a1,9
    80006b14:	02d777bb          	remuw	a5,a4,a3
    80006b18:	02079793          	slli	a5,a5,0x20
    80006b1c:	0207d793          	srli	a5,a5,0x20
    80006b20:	00fd87b3          	add	a5,s11,a5
    80006b24:	0007c503          	lbu	a0,0(a5)
    80006b28:	02d757bb          	divuw	a5,a4,a3
    80006b2c:	f8a40123          	sb	a0,-126(s0)
    80006b30:	48e5f263          	bgeu	a1,a4,80006fb4 <__printf+0x5fc>
    80006b34:	06300513          	li	a0,99
    80006b38:	02d7f5bb          	remuw	a1,a5,a3
    80006b3c:	02059593          	slli	a1,a1,0x20
    80006b40:	0205d593          	srli	a1,a1,0x20
    80006b44:	00bd85b3          	add	a1,s11,a1
    80006b48:	0005c583          	lbu	a1,0(a1)
    80006b4c:	02d7d7bb          	divuw	a5,a5,a3
    80006b50:	f8b401a3          	sb	a1,-125(s0)
    80006b54:	48e57263          	bgeu	a0,a4,80006fd8 <__printf+0x620>
    80006b58:	3e700513          	li	a0,999
    80006b5c:	02d7f5bb          	remuw	a1,a5,a3
    80006b60:	02059593          	slli	a1,a1,0x20
    80006b64:	0205d593          	srli	a1,a1,0x20
    80006b68:	00bd85b3          	add	a1,s11,a1
    80006b6c:	0005c583          	lbu	a1,0(a1)
    80006b70:	02d7d7bb          	divuw	a5,a5,a3
    80006b74:	f8b40223          	sb	a1,-124(s0)
    80006b78:	46e57663          	bgeu	a0,a4,80006fe4 <__printf+0x62c>
    80006b7c:	02d7f5bb          	remuw	a1,a5,a3
    80006b80:	02059593          	slli	a1,a1,0x20
    80006b84:	0205d593          	srli	a1,a1,0x20
    80006b88:	00bd85b3          	add	a1,s11,a1
    80006b8c:	0005c583          	lbu	a1,0(a1)
    80006b90:	02d7d7bb          	divuw	a5,a5,a3
    80006b94:	f8b402a3          	sb	a1,-123(s0)
    80006b98:	46ea7863          	bgeu	s4,a4,80007008 <__printf+0x650>
    80006b9c:	02d7f5bb          	remuw	a1,a5,a3
    80006ba0:	02059593          	slli	a1,a1,0x20
    80006ba4:	0205d593          	srli	a1,a1,0x20
    80006ba8:	00bd85b3          	add	a1,s11,a1
    80006bac:	0005c583          	lbu	a1,0(a1)
    80006bb0:	02d7d7bb          	divuw	a5,a5,a3
    80006bb4:	f8b40323          	sb	a1,-122(s0)
    80006bb8:	3eeaf863          	bgeu	s5,a4,80006fa8 <__printf+0x5f0>
    80006bbc:	02d7f5bb          	remuw	a1,a5,a3
    80006bc0:	02059593          	slli	a1,a1,0x20
    80006bc4:	0205d593          	srli	a1,a1,0x20
    80006bc8:	00bd85b3          	add	a1,s11,a1
    80006bcc:	0005c583          	lbu	a1,0(a1)
    80006bd0:	02d7d7bb          	divuw	a5,a5,a3
    80006bd4:	f8b403a3          	sb	a1,-121(s0)
    80006bd8:	42eb7e63          	bgeu	s6,a4,80007014 <__printf+0x65c>
    80006bdc:	02d7f5bb          	remuw	a1,a5,a3
    80006be0:	02059593          	slli	a1,a1,0x20
    80006be4:	0205d593          	srli	a1,a1,0x20
    80006be8:	00bd85b3          	add	a1,s11,a1
    80006bec:	0005c583          	lbu	a1,0(a1)
    80006bf0:	02d7d7bb          	divuw	a5,a5,a3
    80006bf4:	f8b40423          	sb	a1,-120(s0)
    80006bf8:	42ebfc63          	bgeu	s7,a4,80007030 <__printf+0x678>
    80006bfc:	02079793          	slli	a5,a5,0x20
    80006c00:	0207d793          	srli	a5,a5,0x20
    80006c04:	00fd8db3          	add	s11,s11,a5
    80006c08:	000dc703          	lbu	a4,0(s11)
    80006c0c:	00a00793          	li	a5,10
    80006c10:	00900c93          	li	s9,9
    80006c14:	f8e404a3          	sb	a4,-119(s0)
    80006c18:	00065c63          	bgez	a2,80006c30 <__printf+0x278>
    80006c1c:	f9040713          	addi	a4,s0,-112
    80006c20:	00f70733          	add	a4,a4,a5
    80006c24:	02d00693          	li	a3,45
    80006c28:	fed70823          	sb	a3,-16(a4)
    80006c2c:	00078c93          	mv	s9,a5
    80006c30:	f8040793          	addi	a5,s0,-128
    80006c34:	01978cb3          	add	s9,a5,s9
    80006c38:	f7f40d13          	addi	s10,s0,-129
    80006c3c:	000cc503          	lbu	a0,0(s9)
    80006c40:	fffc8c93          	addi	s9,s9,-1
    80006c44:	00000097          	auipc	ra,0x0
    80006c48:	b90080e7          	jalr	-1136(ra) # 800067d4 <consputc>
    80006c4c:	ffac98e3          	bne	s9,s10,80006c3c <__printf+0x284>
    80006c50:	00094503          	lbu	a0,0(s2)
    80006c54:	e00514e3          	bnez	a0,80006a5c <__printf+0xa4>
    80006c58:	1a0c1663          	bnez	s8,80006e04 <__printf+0x44c>
    80006c5c:	08813083          	ld	ra,136(sp)
    80006c60:	08013403          	ld	s0,128(sp)
    80006c64:	07813483          	ld	s1,120(sp)
    80006c68:	07013903          	ld	s2,112(sp)
    80006c6c:	06813983          	ld	s3,104(sp)
    80006c70:	06013a03          	ld	s4,96(sp)
    80006c74:	05813a83          	ld	s5,88(sp)
    80006c78:	05013b03          	ld	s6,80(sp)
    80006c7c:	04813b83          	ld	s7,72(sp)
    80006c80:	04013c03          	ld	s8,64(sp)
    80006c84:	03813c83          	ld	s9,56(sp)
    80006c88:	03013d03          	ld	s10,48(sp)
    80006c8c:	02813d83          	ld	s11,40(sp)
    80006c90:	0d010113          	addi	sp,sp,208
    80006c94:	00008067          	ret
    80006c98:	07300713          	li	a4,115
    80006c9c:	1ce78a63          	beq	a5,a4,80006e70 <__printf+0x4b8>
    80006ca0:	07800713          	li	a4,120
    80006ca4:	1ee79e63          	bne	a5,a4,80006ea0 <__printf+0x4e8>
    80006ca8:	f7843783          	ld	a5,-136(s0)
    80006cac:	0007a703          	lw	a4,0(a5)
    80006cb0:	00878793          	addi	a5,a5,8
    80006cb4:	f6f43c23          	sd	a5,-136(s0)
    80006cb8:	28074263          	bltz	a4,80006f3c <__printf+0x584>
    80006cbc:	00002d97          	auipc	s11,0x2
    80006cc0:	a54d8d93          	addi	s11,s11,-1452 # 80008710 <digits>
    80006cc4:	00f77793          	andi	a5,a4,15
    80006cc8:	00fd87b3          	add	a5,s11,a5
    80006ccc:	0007c683          	lbu	a3,0(a5)
    80006cd0:	00f00613          	li	a2,15
    80006cd4:	0007079b          	sext.w	a5,a4
    80006cd8:	f8d40023          	sb	a3,-128(s0)
    80006cdc:	0047559b          	srliw	a1,a4,0x4
    80006ce0:	0047569b          	srliw	a3,a4,0x4
    80006ce4:	00000c93          	li	s9,0
    80006ce8:	0ee65063          	bge	a2,a4,80006dc8 <__printf+0x410>
    80006cec:	00f6f693          	andi	a3,a3,15
    80006cf0:	00dd86b3          	add	a3,s11,a3
    80006cf4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006cf8:	0087d79b          	srliw	a5,a5,0x8
    80006cfc:	00100c93          	li	s9,1
    80006d00:	f8d400a3          	sb	a3,-127(s0)
    80006d04:	0cb67263          	bgeu	a2,a1,80006dc8 <__printf+0x410>
    80006d08:	00f7f693          	andi	a3,a5,15
    80006d0c:	00dd86b3          	add	a3,s11,a3
    80006d10:	0006c583          	lbu	a1,0(a3)
    80006d14:	00f00613          	li	a2,15
    80006d18:	0047d69b          	srliw	a3,a5,0x4
    80006d1c:	f8b40123          	sb	a1,-126(s0)
    80006d20:	0047d593          	srli	a1,a5,0x4
    80006d24:	28f67e63          	bgeu	a2,a5,80006fc0 <__printf+0x608>
    80006d28:	00f6f693          	andi	a3,a3,15
    80006d2c:	00dd86b3          	add	a3,s11,a3
    80006d30:	0006c503          	lbu	a0,0(a3)
    80006d34:	0087d813          	srli	a6,a5,0x8
    80006d38:	0087d69b          	srliw	a3,a5,0x8
    80006d3c:	f8a401a3          	sb	a0,-125(s0)
    80006d40:	28b67663          	bgeu	a2,a1,80006fcc <__printf+0x614>
    80006d44:	00f6f693          	andi	a3,a3,15
    80006d48:	00dd86b3          	add	a3,s11,a3
    80006d4c:	0006c583          	lbu	a1,0(a3)
    80006d50:	00c7d513          	srli	a0,a5,0xc
    80006d54:	00c7d69b          	srliw	a3,a5,0xc
    80006d58:	f8b40223          	sb	a1,-124(s0)
    80006d5c:	29067a63          	bgeu	a2,a6,80006ff0 <__printf+0x638>
    80006d60:	00f6f693          	andi	a3,a3,15
    80006d64:	00dd86b3          	add	a3,s11,a3
    80006d68:	0006c583          	lbu	a1,0(a3)
    80006d6c:	0107d813          	srli	a6,a5,0x10
    80006d70:	0107d69b          	srliw	a3,a5,0x10
    80006d74:	f8b402a3          	sb	a1,-123(s0)
    80006d78:	28a67263          	bgeu	a2,a0,80006ffc <__printf+0x644>
    80006d7c:	00f6f693          	andi	a3,a3,15
    80006d80:	00dd86b3          	add	a3,s11,a3
    80006d84:	0006c683          	lbu	a3,0(a3)
    80006d88:	0147d79b          	srliw	a5,a5,0x14
    80006d8c:	f8d40323          	sb	a3,-122(s0)
    80006d90:	21067663          	bgeu	a2,a6,80006f9c <__printf+0x5e4>
    80006d94:	02079793          	slli	a5,a5,0x20
    80006d98:	0207d793          	srli	a5,a5,0x20
    80006d9c:	00fd8db3          	add	s11,s11,a5
    80006da0:	000dc683          	lbu	a3,0(s11)
    80006da4:	00800793          	li	a5,8
    80006da8:	00700c93          	li	s9,7
    80006dac:	f8d403a3          	sb	a3,-121(s0)
    80006db0:	00075c63          	bgez	a4,80006dc8 <__printf+0x410>
    80006db4:	f9040713          	addi	a4,s0,-112
    80006db8:	00f70733          	add	a4,a4,a5
    80006dbc:	02d00693          	li	a3,45
    80006dc0:	fed70823          	sb	a3,-16(a4)
    80006dc4:	00078c93          	mv	s9,a5
    80006dc8:	f8040793          	addi	a5,s0,-128
    80006dcc:	01978cb3          	add	s9,a5,s9
    80006dd0:	f7f40d13          	addi	s10,s0,-129
    80006dd4:	000cc503          	lbu	a0,0(s9)
    80006dd8:	fffc8c93          	addi	s9,s9,-1
    80006ddc:	00000097          	auipc	ra,0x0
    80006de0:	9f8080e7          	jalr	-1544(ra) # 800067d4 <consputc>
    80006de4:	ff9d18e3          	bne	s10,s9,80006dd4 <__printf+0x41c>
    80006de8:	0100006f          	j	80006df8 <__printf+0x440>
    80006dec:	00000097          	auipc	ra,0x0
    80006df0:	9e8080e7          	jalr	-1560(ra) # 800067d4 <consputc>
    80006df4:	000c8493          	mv	s1,s9
    80006df8:	00094503          	lbu	a0,0(s2)
    80006dfc:	c60510e3          	bnez	a0,80006a5c <__printf+0xa4>
    80006e00:	e40c0ee3          	beqz	s8,80006c5c <__printf+0x2a4>
    80006e04:	00005517          	auipc	a0,0x5
    80006e08:	abc50513          	addi	a0,a0,-1348 # 8000b8c0 <pr>
    80006e0c:	00001097          	auipc	ra,0x1
    80006e10:	94c080e7          	jalr	-1716(ra) # 80007758 <release>
    80006e14:	e49ff06f          	j	80006c5c <__printf+0x2a4>
    80006e18:	f7843783          	ld	a5,-136(s0)
    80006e1c:	03000513          	li	a0,48
    80006e20:	01000d13          	li	s10,16
    80006e24:	00878713          	addi	a4,a5,8
    80006e28:	0007bc83          	ld	s9,0(a5)
    80006e2c:	f6e43c23          	sd	a4,-136(s0)
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	9a4080e7          	jalr	-1628(ra) # 800067d4 <consputc>
    80006e38:	07800513          	li	a0,120
    80006e3c:	00000097          	auipc	ra,0x0
    80006e40:	998080e7          	jalr	-1640(ra) # 800067d4 <consputc>
    80006e44:	00002d97          	auipc	s11,0x2
    80006e48:	8ccd8d93          	addi	s11,s11,-1844 # 80008710 <digits>
    80006e4c:	03ccd793          	srli	a5,s9,0x3c
    80006e50:	00fd87b3          	add	a5,s11,a5
    80006e54:	0007c503          	lbu	a0,0(a5)
    80006e58:	fffd0d1b          	addiw	s10,s10,-1
    80006e5c:	004c9c93          	slli	s9,s9,0x4
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	974080e7          	jalr	-1676(ra) # 800067d4 <consputc>
    80006e68:	fe0d12e3          	bnez	s10,80006e4c <__printf+0x494>
    80006e6c:	f8dff06f          	j	80006df8 <__printf+0x440>
    80006e70:	f7843783          	ld	a5,-136(s0)
    80006e74:	0007bc83          	ld	s9,0(a5)
    80006e78:	00878793          	addi	a5,a5,8
    80006e7c:	f6f43c23          	sd	a5,-136(s0)
    80006e80:	000c9a63          	bnez	s9,80006e94 <__printf+0x4dc>
    80006e84:	1080006f          	j	80006f8c <__printf+0x5d4>
    80006e88:	001c8c93          	addi	s9,s9,1
    80006e8c:	00000097          	auipc	ra,0x0
    80006e90:	948080e7          	jalr	-1720(ra) # 800067d4 <consputc>
    80006e94:	000cc503          	lbu	a0,0(s9)
    80006e98:	fe0518e3          	bnez	a0,80006e88 <__printf+0x4d0>
    80006e9c:	f5dff06f          	j	80006df8 <__printf+0x440>
    80006ea0:	02500513          	li	a0,37
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	930080e7          	jalr	-1744(ra) # 800067d4 <consputc>
    80006eac:	000c8513          	mv	a0,s9
    80006eb0:	00000097          	auipc	ra,0x0
    80006eb4:	924080e7          	jalr	-1756(ra) # 800067d4 <consputc>
    80006eb8:	f41ff06f          	j	80006df8 <__printf+0x440>
    80006ebc:	02500513          	li	a0,37
    80006ec0:	00000097          	auipc	ra,0x0
    80006ec4:	914080e7          	jalr	-1772(ra) # 800067d4 <consputc>
    80006ec8:	f31ff06f          	j	80006df8 <__printf+0x440>
    80006ecc:	00030513          	mv	a0,t1
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	7bc080e7          	jalr	1980(ra) # 8000768c <acquire>
    80006ed8:	b4dff06f          	j	80006a24 <__printf+0x6c>
    80006edc:	40c0053b          	negw	a0,a2
    80006ee0:	00a00713          	li	a4,10
    80006ee4:	02e576bb          	remuw	a3,a0,a4
    80006ee8:	00002d97          	auipc	s11,0x2
    80006eec:	828d8d93          	addi	s11,s11,-2008 # 80008710 <digits>
    80006ef0:	ff700593          	li	a1,-9
    80006ef4:	02069693          	slli	a3,a3,0x20
    80006ef8:	0206d693          	srli	a3,a3,0x20
    80006efc:	00dd86b3          	add	a3,s11,a3
    80006f00:	0006c683          	lbu	a3,0(a3)
    80006f04:	02e557bb          	divuw	a5,a0,a4
    80006f08:	f8d40023          	sb	a3,-128(s0)
    80006f0c:	10b65e63          	bge	a2,a1,80007028 <__printf+0x670>
    80006f10:	06300593          	li	a1,99
    80006f14:	02e7f6bb          	remuw	a3,a5,a4
    80006f18:	02069693          	slli	a3,a3,0x20
    80006f1c:	0206d693          	srli	a3,a3,0x20
    80006f20:	00dd86b3          	add	a3,s11,a3
    80006f24:	0006c683          	lbu	a3,0(a3)
    80006f28:	02e7d73b          	divuw	a4,a5,a4
    80006f2c:	00200793          	li	a5,2
    80006f30:	f8d400a3          	sb	a3,-127(s0)
    80006f34:	bca5ece3          	bltu	a1,a0,80006b0c <__printf+0x154>
    80006f38:	ce5ff06f          	j	80006c1c <__printf+0x264>
    80006f3c:	40e007bb          	negw	a5,a4
    80006f40:	00001d97          	auipc	s11,0x1
    80006f44:	7d0d8d93          	addi	s11,s11,2000 # 80008710 <digits>
    80006f48:	00f7f693          	andi	a3,a5,15
    80006f4c:	00dd86b3          	add	a3,s11,a3
    80006f50:	0006c583          	lbu	a1,0(a3)
    80006f54:	ff100613          	li	a2,-15
    80006f58:	0047d69b          	srliw	a3,a5,0x4
    80006f5c:	f8b40023          	sb	a1,-128(s0)
    80006f60:	0047d59b          	srliw	a1,a5,0x4
    80006f64:	0ac75e63          	bge	a4,a2,80007020 <__printf+0x668>
    80006f68:	00f6f693          	andi	a3,a3,15
    80006f6c:	00dd86b3          	add	a3,s11,a3
    80006f70:	0006c603          	lbu	a2,0(a3)
    80006f74:	00f00693          	li	a3,15
    80006f78:	0087d79b          	srliw	a5,a5,0x8
    80006f7c:	f8c400a3          	sb	a2,-127(s0)
    80006f80:	d8b6e4e3          	bltu	a3,a1,80006d08 <__printf+0x350>
    80006f84:	00200793          	li	a5,2
    80006f88:	e2dff06f          	j	80006db4 <__printf+0x3fc>
    80006f8c:	00001c97          	auipc	s9,0x1
    80006f90:	764c8c93          	addi	s9,s9,1892 # 800086f0 <_ZZ16printIntegerMinemE6digits+0x6d0>
    80006f94:	02800513          	li	a0,40
    80006f98:	ef1ff06f          	j	80006e88 <__printf+0x4d0>
    80006f9c:	00700793          	li	a5,7
    80006fa0:	00600c93          	li	s9,6
    80006fa4:	e0dff06f          	j	80006db0 <__printf+0x3f8>
    80006fa8:	00700793          	li	a5,7
    80006fac:	00600c93          	li	s9,6
    80006fb0:	c69ff06f          	j	80006c18 <__printf+0x260>
    80006fb4:	00300793          	li	a5,3
    80006fb8:	00200c93          	li	s9,2
    80006fbc:	c5dff06f          	j	80006c18 <__printf+0x260>
    80006fc0:	00300793          	li	a5,3
    80006fc4:	00200c93          	li	s9,2
    80006fc8:	de9ff06f          	j	80006db0 <__printf+0x3f8>
    80006fcc:	00400793          	li	a5,4
    80006fd0:	00300c93          	li	s9,3
    80006fd4:	dddff06f          	j	80006db0 <__printf+0x3f8>
    80006fd8:	00400793          	li	a5,4
    80006fdc:	00300c93          	li	s9,3
    80006fe0:	c39ff06f          	j	80006c18 <__printf+0x260>
    80006fe4:	00500793          	li	a5,5
    80006fe8:	00400c93          	li	s9,4
    80006fec:	c2dff06f          	j	80006c18 <__printf+0x260>
    80006ff0:	00500793          	li	a5,5
    80006ff4:	00400c93          	li	s9,4
    80006ff8:	db9ff06f          	j	80006db0 <__printf+0x3f8>
    80006ffc:	00600793          	li	a5,6
    80007000:	00500c93          	li	s9,5
    80007004:	dadff06f          	j	80006db0 <__printf+0x3f8>
    80007008:	00600793          	li	a5,6
    8000700c:	00500c93          	li	s9,5
    80007010:	c09ff06f          	j	80006c18 <__printf+0x260>
    80007014:	00800793          	li	a5,8
    80007018:	00700c93          	li	s9,7
    8000701c:	bfdff06f          	j	80006c18 <__printf+0x260>
    80007020:	00100793          	li	a5,1
    80007024:	d91ff06f          	j	80006db4 <__printf+0x3fc>
    80007028:	00100793          	li	a5,1
    8000702c:	bf1ff06f          	j	80006c1c <__printf+0x264>
    80007030:	00900793          	li	a5,9
    80007034:	00800c93          	li	s9,8
    80007038:	be1ff06f          	j	80006c18 <__printf+0x260>
    8000703c:	00001517          	auipc	a0,0x1
    80007040:	6bc50513          	addi	a0,a0,1724 # 800086f8 <_ZZ16printIntegerMinemE6digits+0x6d8>
    80007044:	00000097          	auipc	ra,0x0
    80007048:	918080e7          	jalr	-1768(ra) # 8000695c <panic>

000000008000704c <printfinit>:
    8000704c:	fe010113          	addi	sp,sp,-32
    80007050:	00813823          	sd	s0,16(sp)
    80007054:	00913423          	sd	s1,8(sp)
    80007058:	00113c23          	sd	ra,24(sp)
    8000705c:	02010413          	addi	s0,sp,32
    80007060:	00005497          	auipc	s1,0x5
    80007064:	86048493          	addi	s1,s1,-1952 # 8000b8c0 <pr>
    80007068:	00048513          	mv	a0,s1
    8000706c:	00001597          	auipc	a1,0x1
    80007070:	69c58593          	addi	a1,a1,1692 # 80008708 <_ZZ16printIntegerMinemE6digits+0x6e8>
    80007074:	00000097          	auipc	ra,0x0
    80007078:	5f4080e7          	jalr	1524(ra) # 80007668 <initlock>
    8000707c:	01813083          	ld	ra,24(sp)
    80007080:	01013403          	ld	s0,16(sp)
    80007084:	0004ac23          	sw	zero,24(s1)
    80007088:	00813483          	ld	s1,8(sp)
    8000708c:	02010113          	addi	sp,sp,32
    80007090:	00008067          	ret

0000000080007094 <uartinit>:
    80007094:	ff010113          	addi	sp,sp,-16
    80007098:	00813423          	sd	s0,8(sp)
    8000709c:	01010413          	addi	s0,sp,16
    800070a0:	100007b7          	lui	a5,0x10000
    800070a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800070a8:	f8000713          	li	a4,-128
    800070ac:	00e781a3          	sb	a4,3(a5)
    800070b0:	00300713          	li	a4,3
    800070b4:	00e78023          	sb	a4,0(a5)
    800070b8:	000780a3          	sb	zero,1(a5)
    800070bc:	00e781a3          	sb	a4,3(a5)
    800070c0:	00700693          	li	a3,7
    800070c4:	00d78123          	sb	a3,2(a5)
    800070c8:	00e780a3          	sb	a4,1(a5)
    800070cc:	00813403          	ld	s0,8(sp)
    800070d0:	01010113          	addi	sp,sp,16
    800070d4:	00008067          	ret

00000000800070d8 <uartputc>:
    800070d8:	00003797          	auipc	a5,0x3
    800070dc:	5207a783          	lw	a5,1312(a5) # 8000a5f8 <panicked>
    800070e0:	00078463          	beqz	a5,800070e8 <uartputc+0x10>
    800070e4:	0000006f          	j	800070e4 <uartputc+0xc>
    800070e8:	fd010113          	addi	sp,sp,-48
    800070ec:	02813023          	sd	s0,32(sp)
    800070f0:	00913c23          	sd	s1,24(sp)
    800070f4:	01213823          	sd	s2,16(sp)
    800070f8:	01313423          	sd	s3,8(sp)
    800070fc:	02113423          	sd	ra,40(sp)
    80007100:	03010413          	addi	s0,sp,48
    80007104:	00003917          	auipc	s2,0x3
    80007108:	4fc90913          	addi	s2,s2,1276 # 8000a600 <uart_tx_r>
    8000710c:	00093783          	ld	a5,0(s2)
    80007110:	00003497          	auipc	s1,0x3
    80007114:	4f848493          	addi	s1,s1,1272 # 8000a608 <uart_tx_w>
    80007118:	0004b703          	ld	a4,0(s1)
    8000711c:	02078693          	addi	a3,a5,32
    80007120:	00050993          	mv	s3,a0
    80007124:	02e69c63          	bne	a3,a4,8000715c <uartputc+0x84>
    80007128:	00001097          	auipc	ra,0x1
    8000712c:	834080e7          	jalr	-1996(ra) # 8000795c <push_on>
    80007130:	00093783          	ld	a5,0(s2)
    80007134:	0004b703          	ld	a4,0(s1)
    80007138:	02078793          	addi	a5,a5,32
    8000713c:	00e79463          	bne	a5,a4,80007144 <uartputc+0x6c>
    80007140:	0000006f          	j	80007140 <uartputc+0x68>
    80007144:	00001097          	auipc	ra,0x1
    80007148:	88c080e7          	jalr	-1908(ra) # 800079d0 <pop_on>
    8000714c:	00093783          	ld	a5,0(s2)
    80007150:	0004b703          	ld	a4,0(s1)
    80007154:	02078693          	addi	a3,a5,32
    80007158:	fce688e3          	beq	a3,a4,80007128 <uartputc+0x50>
    8000715c:	01f77693          	andi	a3,a4,31
    80007160:	00004597          	auipc	a1,0x4
    80007164:	78058593          	addi	a1,a1,1920 # 8000b8e0 <uart_tx_buf>
    80007168:	00d586b3          	add	a3,a1,a3
    8000716c:	00170713          	addi	a4,a4,1
    80007170:	01368023          	sb	s3,0(a3)
    80007174:	00e4b023          	sd	a4,0(s1)
    80007178:	10000637          	lui	a2,0x10000
    8000717c:	02f71063          	bne	a4,a5,8000719c <uartputc+0xc4>
    80007180:	0340006f          	j	800071b4 <uartputc+0xdc>
    80007184:	00074703          	lbu	a4,0(a4)
    80007188:	00f93023          	sd	a5,0(s2)
    8000718c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007190:	00093783          	ld	a5,0(s2)
    80007194:	0004b703          	ld	a4,0(s1)
    80007198:	00f70e63          	beq	a4,a5,800071b4 <uartputc+0xdc>
    8000719c:	00564683          	lbu	a3,5(a2)
    800071a0:	01f7f713          	andi	a4,a5,31
    800071a4:	00e58733          	add	a4,a1,a4
    800071a8:	0206f693          	andi	a3,a3,32
    800071ac:	00178793          	addi	a5,a5,1
    800071b0:	fc069ae3          	bnez	a3,80007184 <uartputc+0xac>
    800071b4:	02813083          	ld	ra,40(sp)
    800071b8:	02013403          	ld	s0,32(sp)
    800071bc:	01813483          	ld	s1,24(sp)
    800071c0:	01013903          	ld	s2,16(sp)
    800071c4:	00813983          	ld	s3,8(sp)
    800071c8:	03010113          	addi	sp,sp,48
    800071cc:	00008067          	ret

00000000800071d0 <uartputc_sync>:
    800071d0:	ff010113          	addi	sp,sp,-16
    800071d4:	00813423          	sd	s0,8(sp)
    800071d8:	01010413          	addi	s0,sp,16
    800071dc:	00003717          	auipc	a4,0x3
    800071e0:	41c72703          	lw	a4,1052(a4) # 8000a5f8 <panicked>
    800071e4:	02071663          	bnez	a4,80007210 <uartputc_sync+0x40>
    800071e8:	00050793          	mv	a5,a0
    800071ec:	100006b7          	lui	a3,0x10000
    800071f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800071f4:	02077713          	andi	a4,a4,32
    800071f8:	fe070ce3          	beqz	a4,800071f0 <uartputc_sync+0x20>
    800071fc:	0ff7f793          	andi	a5,a5,255
    80007200:	00f68023          	sb	a5,0(a3)
    80007204:	00813403          	ld	s0,8(sp)
    80007208:	01010113          	addi	sp,sp,16
    8000720c:	00008067          	ret
    80007210:	0000006f          	j	80007210 <uartputc_sync+0x40>

0000000080007214 <uartstart>:
    80007214:	ff010113          	addi	sp,sp,-16
    80007218:	00813423          	sd	s0,8(sp)
    8000721c:	01010413          	addi	s0,sp,16
    80007220:	00003617          	auipc	a2,0x3
    80007224:	3e060613          	addi	a2,a2,992 # 8000a600 <uart_tx_r>
    80007228:	00003517          	auipc	a0,0x3
    8000722c:	3e050513          	addi	a0,a0,992 # 8000a608 <uart_tx_w>
    80007230:	00063783          	ld	a5,0(a2)
    80007234:	00053703          	ld	a4,0(a0)
    80007238:	04f70263          	beq	a4,a5,8000727c <uartstart+0x68>
    8000723c:	100005b7          	lui	a1,0x10000
    80007240:	00004817          	auipc	a6,0x4
    80007244:	6a080813          	addi	a6,a6,1696 # 8000b8e0 <uart_tx_buf>
    80007248:	01c0006f          	j	80007264 <uartstart+0x50>
    8000724c:	0006c703          	lbu	a4,0(a3)
    80007250:	00f63023          	sd	a5,0(a2)
    80007254:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007258:	00063783          	ld	a5,0(a2)
    8000725c:	00053703          	ld	a4,0(a0)
    80007260:	00f70e63          	beq	a4,a5,8000727c <uartstart+0x68>
    80007264:	01f7f713          	andi	a4,a5,31
    80007268:	00e806b3          	add	a3,a6,a4
    8000726c:	0055c703          	lbu	a4,5(a1)
    80007270:	00178793          	addi	a5,a5,1
    80007274:	02077713          	andi	a4,a4,32
    80007278:	fc071ae3          	bnez	a4,8000724c <uartstart+0x38>
    8000727c:	00813403          	ld	s0,8(sp)
    80007280:	01010113          	addi	sp,sp,16
    80007284:	00008067          	ret

0000000080007288 <uartgetc>:
    80007288:	ff010113          	addi	sp,sp,-16
    8000728c:	00813423          	sd	s0,8(sp)
    80007290:	01010413          	addi	s0,sp,16
    80007294:	10000737          	lui	a4,0x10000
    80007298:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000729c:	0017f793          	andi	a5,a5,1
    800072a0:	00078c63          	beqz	a5,800072b8 <uartgetc+0x30>
    800072a4:	00074503          	lbu	a0,0(a4)
    800072a8:	0ff57513          	andi	a0,a0,255
    800072ac:	00813403          	ld	s0,8(sp)
    800072b0:	01010113          	addi	sp,sp,16
    800072b4:	00008067          	ret
    800072b8:	fff00513          	li	a0,-1
    800072bc:	ff1ff06f          	j	800072ac <uartgetc+0x24>

00000000800072c0 <uartintr>:
    800072c0:	100007b7          	lui	a5,0x10000
    800072c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800072c8:	0017f793          	andi	a5,a5,1
    800072cc:	0a078463          	beqz	a5,80007374 <uartintr+0xb4>
    800072d0:	fe010113          	addi	sp,sp,-32
    800072d4:	00813823          	sd	s0,16(sp)
    800072d8:	00913423          	sd	s1,8(sp)
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	02010413          	addi	s0,sp,32
    800072e4:	100004b7          	lui	s1,0x10000
    800072e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800072ec:	0ff57513          	andi	a0,a0,255
    800072f0:	fffff097          	auipc	ra,0xfffff
    800072f4:	534080e7          	jalr	1332(ra) # 80006824 <consoleintr>
    800072f8:	0054c783          	lbu	a5,5(s1)
    800072fc:	0017f793          	andi	a5,a5,1
    80007300:	fe0794e3          	bnez	a5,800072e8 <uartintr+0x28>
    80007304:	00003617          	auipc	a2,0x3
    80007308:	2fc60613          	addi	a2,a2,764 # 8000a600 <uart_tx_r>
    8000730c:	00003517          	auipc	a0,0x3
    80007310:	2fc50513          	addi	a0,a0,764 # 8000a608 <uart_tx_w>
    80007314:	00063783          	ld	a5,0(a2)
    80007318:	00053703          	ld	a4,0(a0)
    8000731c:	04f70263          	beq	a4,a5,80007360 <uartintr+0xa0>
    80007320:	100005b7          	lui	a1,0x10000
    80007324:	00004817          	auipc	a6,0x4
    80007328:	5bc80813          	addi	a6,a6,1468 # 8000b8e0 <uart_tx_buf>
    8000732c:	01c0006f          	j	80007348 <uartintr+0x88>
    80007330:	0006c703          	lbu	a4,0(a3)
    80007334:	00f63023          	sd	a5,0(a2)
    80007338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000733c:	00063783          	ld	a5,0(a2)
    80007340:	00053703          	ld	a4,0(a0)
    80007344:	00f70e63          	beq	a4,a5,80007360 <uartintr+0xa0>
    80007348:	01f7f713          	andi	a4,a5,31
    8000734c:	00e806b3          	add	a3,a6,a4
    80007350:	0055c703          	lbu	a4,5(a1)
    80007354:	00178793          	addi	a5,a5,1
    80007358:	02077713          	andi	a4,a4,32
    8000735c:	fc071ae3          	bnez	a4,80007330 <uartintr+0x70>
    80007360:	01813083          	ld	ra,24(sp)
    80007364:	01013403          	ld	s0,16(sp)
    80007368:	00813483          	ld	s1,8(sp)
    8000736c:	02010113          	addi	sp,sp,32
    80007370:	00008067          	ret
    80007374:	00003617          	auipc	a2,0x3
    80007378:	28c60613          	addi	a2,a2,652 # 8000a600 <uart_tx_r>
    8000737c:	00003517          	auipc	a0,0x3
    80007380:	28c50513          	addi	a0,a0,652 # 8000a608 <uart_tx_w>
    80007384:	00063783          	ld	a5,0(a2)
    80007388:	00053703          	ld	a4,0(a0)
    8000738c:	04f70263          	beq	a4,a5,800073d0 <uartintr+0x110>
    80007390:	100005b7          	lui	a1,0x10000
    80007394:	00004817          	auipc	a6,0x4
    80007398:	54c80813          	addi	a6,a6,1356 # 8000b8e0 <uart_tx_buf>
    8000739c:	01c0006f          	j	800073b8 <uartintr+0xf8>
    800073a0:	0006c703          	lbu	a4,0(a3)
    800073a4:	00f63023          	sd	a5,0(a2)
    800073a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800073ac:	00063783          	ld	a5,0(a2)
    800073b0:	00053703          	ld	a4,0(a0)
    800073b4:	02f70063          	beq	a4,a5,800073d4 <uartintr+0x114>
    800073b8:	01f7f713          	andi	a4,a5,31
    800073bc:	00e806b3          	add	a3,a6,a4
    800073c0:	0055c703          	lbu	a4,5(a1)
    800073c4:	00178793          	addi	a5,a5,1
    800073c8:	02077713          	andi	a4,a4,32
    800073cc:	fc071ae3          	bnez	a4,800073a0 <uartintr+0xe0>
    800073d0:	00008067          	ret
    800073d4:	00008067          	ret

00000000800073d8 <kinit>:
    800073d8:	fc010113          	addi	sp,sp,-64
    800073dc:	02913423          	sd	s1,40(sp)
    800073e0:	fffff7b7          	lui	a5,0xfffff
    800073e4:	00005497          	auipc	s1,0x5
    800073e8:	51b48493          	addi	s1,s1,1307 # 8000c8ff <end+0xfff>
    800073ec:	02813823          	sd	s0,48(sp)
    800073f0:	01313c23          	sd	s3,24(sp)
    800073f4:	00f4f4b3          	and	s1,s1,a5
    800073f8:	02113c23          	sd	ra,56(sp)
    800073fc:	03213023          	sd	s2,32(sp)
    80007400:	01413823          	sd	s4,16(sp)
    80007404:	01513423          	sd	s5,8(sp)
    80007408:	04010413          	addi	s0,sp,64
    8000740c:	000017b7          	lui	a5,0x1
    80007410:	01100993          	li	s3,17
    80007414:	00f487b3          	add	a5,s1,a5
    80007418:	01b99993          	slli	s3,s3,0x1b
    8000741c:	06f9e063          	bltu	s3,a5,8000747c <kinit+0xa4>
    80007420:	00004a97          	auipc	s5,0x4
    80007424:	4e0a8a93          	addi	s5,s5,1248 # 8000b900 <end>
    80007428:	0754ec63          	bltu	s1,s5,800074a0 <kinit+0xc8>
    8000742c:	0734fa63          	bgeu	s1,s3,800074a0 <kinit+0xc8>
    80007430:	00088a37          	lui	s4,0x88
    80007434:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007438:	00003917          	auipc	s2,0x3
    8000743c:	1d890913          	addi	s2,s2,472 # 8000a610 <kmem>
    80007440:	00ca1a13          	slli	s4,s4,0xc
    80007444:	0140006f          	j	80007458 <kinit+0x80>
    80007448:	000017b7          	lui	a5,0x1
    8000744c:	00f484b3          	add	s1,s1,a5
    80007450:	0554e863          	bltu	s1,s5,800074a0 <kinit+0xc8>
    80007454:	0534f663          	bgeu	s1,s3,800074a0 <kinit+0xc8>
    80007458:	00001637          	lui	a2,0x1
    8000745c:	00100593          	li	a1,1
    80007460:	00048513          	mv	a0,s1
    80007464:	00000097          	auipc	ra,0x0
    80007468:	5e4080e7          	jalr	1508(ra) # 80007a48 <__memset>
    8000746c:	00093783          	ld	a5,0(s2)
    80007470:	00f4b023          	sd	a5,0(s1)
    80007474:	00993023          	sd	s1,0(s2)
    80007478:	fd4498e3          	bne	s1,s4,80007448 <kinit+0x70>
    8000747c:	03813083          	ld	ra,56(sp)
    80007480:	03013403          	ld	s0,48(sp)
    80007484:	02813483          	ld	s1,40(sp)
    80007488:	02013903          	ld	s2,32(sp)
    8000748c:	01813983          	ld	s3,24(sp)
    80007490:	01013a03          	ld	s4,16(sp)
    80007494:	00813a83          	ld	s5,8(sp)
    80007498:	04010113          	addi	sp,sp,64
    8000749c:	00008067          	ret
    800074a0:	00001517          	auipc	a0,0x1
    800074a4:	28850513          	addi	a0,a0,648 # 80008728 <digits+0x18>
    800074a8:	fffff097          	auipc	ra,0xfffff
    800074ac:	4b4080e7          	jalr	1204(ra) # 8000695c <panic>

00000000800074b0 <freerange>:
    800074b0:	fc010113          	addi	sp,sp,-64
    800074b4:	000017b7          	lui	a5,0x1
    800074b8:	02913423          	sd	s1,40(sp)
    800074bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800074c0:	009504b3          	add	s1,a0,s1
    800074c4:	fffff537          	lui	a0,0xfffff
    800074c8:	02813823          	sd	s0,48(sp)
    800074cc:	02113c23          	sd	ra,56(sp)
    800074d0:	03213023          	sd	s2,32(sp)
    800074d4:	01313c23          	sd	s3,24(sp)
    800074d8:	01413823          	sd	s4,16(sp)
    800074dc:	01513423          	sd	s5,8(sp)
    800074e0:	01613023          	sd	s6,0(sp)
    800074e4:	04010413          	addi	s0,sp,64
    800074e8:	00a4f4b3          	and	s1,s1,a0
    800074ec:	00f487b3          	add	a5,s1,a5
    800074f0:	06f5e463          	bltu	a1,a5,80007558 <freerange+0xa8>
    800074f4:	00004a97          	auipc	s5,0x4
    800074f8:	40ca8a93          	addi	s5,s5,1036 # 8000b900 <end>
    800074fc:	0954e263          	bltu	s1,s5,80007580 <freerange+0xd0>
    80007500:	01100993          	li	s3,17
    80007504:	01b99993          	slli	s3,s3,0x1b
    80007508:	0734fc63          	bgeu	s1,s3,80007580 <freerange+0xd0>
    8000750c:	00058a13          	mv	s4,a1
    80007510:	00003917          	auipc	s2,0x3
    80007514:	10090913          	addi	s2,s2,256 # 8000a610 <kmem>
    80007518:	00002b37          	lui	s6,0x2
    8000751c:	0140006f          	j	80007530 <freerange+0x80>
    80007520:	000017b7          	lui	a5,0x1
    80007524:	00f484b3          	add	s1,s1,a5
    80007528:	0554ec63          	bltu	s1,s5,80007580 <freerange+0xd0>
    8000752c:	0534fa63          	bgeu	s1,s3,80007580 <freerange+0xd0>
    80007530:	00001637          	lui	a2,0x1
    80007534:	00100593          	li	a1,1
    80007538:	00048513          	mv	a0,s1
    8000753c:	00000097          	auipc	ra,0x0
    80007540:	50c080e7          	jalr	1292(ra) # 80007a48 <__memset>
    80007544:	00093703          	ld	a4,0(s2)
    80007548:	016487b3          	add	a5,s1,s6
    8000754c:	00e4b023          	sd	a4,0(s1)
    80007550:	00993023          	sd	s1,0(s2)
    80007554:	fcfa76e3          	bgeu	s4,a5,80007520 <freerange+0x70>
    80007558:	03813083          	ld	ra,56(sp)
    8000755c:	03013403          	ld	s0,48(sp)
    80007560:	02813483          	ld	s1,40(sp)
    80007564:	02013903          	ld	s2,32(sp)
    80007568:	01813983          	ld	s3,24(sp)
    8000756c:	01013a03          	ld	s4,16(sp)
    80007570:	00813a83          	ld	s5,8(sp)
    80007574:	00013b03          	ld	s6,0(sp)
    80007578:	04010113          	addi	sp,sp,64
    8000757c:	00008067          	ret
    80007580:	00001517          	auipc	a0,0x1
    80007584:	1a850513          	addi	a0,a0,424 # 80008728 <digits+0x18>
    80007588:	fffff097          	auipc	ra,0xfffff
    8000758c:	3d4080e7          	jalr	980(ra) # 8000695c <panic>

0000000080007590 <kfree>:
    80007590:	fe010113          	addi	sp,sp,-32
    80007594:	00813823          	sd	s0,16(sp)
    80007598:	00113c23          	sd	ra,24(sp)
    8000759c:	00913423          	sd	s1,8(sp)
    800075a0:	02010413          	addi	s0,sp,32
    800075a4:	03451793          	slli	a5,a0,0x34
    800075a8:	04079c63          	bnez	a5,80007600 <kfree+0x70>
    800075ac:	00004797          	auipc	a5,0x4
    800075b0:	35478793          	addi	a5,a5,852 # 8000b900 <end>
    800075b4:	00050493          	mv	s1,a0
    800075b8:	04f56463          	bltu	a0,a5,80007600 <kfree+0x70>
    800075bc:	01100793          	li	a5,17
    800075c0:	01b79793          	slli	a5,a5,0x1b
    800075c4:	02f57e63          	bgeu	a0,a5,80007600 <kfree+0x70>
    800075c8:	00001637          	lui	a2,0x1
    800075cc:	00100593          	li	a1,1
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	478080e7          	jalr	1144(ra) # 80007a48 <__memset>
    800075d8:	00003797          	auipc	a5,0x3
    800075dc:	03878793          	addi	a5,a5,56 # 8000a610 <kmem>
    800075e0:	0007b703          	ld	a4,0(a5)
    800075e4:	01813083          	ld	ra,24(sp)
    800075e8:	01013403          	ld	s0,16(sp)
    800075ec:	00e4b023          	sd	a4,0(s1)
    800075f0:	0097b023          	sd	s1,0(a5)
    800075f4:	00813483          	ld	s1,8(sp)
    800075f8:	02010113          	addi	sp,sp,32
    800075fc:	00008067          	ret
    80007600:	00001517          	auipc	a0,0x1
    80007604:	12850513          	addi	a0,a0,296 # 80008728 <digits+0x18>
    80007608:	fffff097          	auipc	ra,0xfffff
    8000760c:	354080e7          	jalr	852(ra) # 8000695c <panic>

0000000080007610 <kalloc>:
    80007610:	fe010113          	addi	sp,sp,-32
    80007614:	00813823          	sd	s0,16(sp)
    80007618:	00913423          	sd	s1,8(sp)
    8000761c:	00113c23          	sd	ra,24(sp)
    80007620:	02010413          	addi	s0,sp,32
    80007624:	00003797          	auipc	a5,0x3
    80007628:	fec78793          	addi	a5,a5,-20 # 8000a610 <kmem>
    8000762c:	0007b483          	ld	s1,0(a5)
    80007630:	02048063          	beqz	s1,80007650 <kalloc+0x40>
    80007634:	0004b703          	ld	a4,0(s1)
    80007638:	00001637          	lui	a2,0x1
    8000763c:	00500593          	li	a1,5
    80007640:	00048513          	mv	a0,s1
    80007644:	00e7b023          	sd	a4,0(a5)
    80007648:	00000097          	auipc	ra,0x0
    8000764c:	400080e7          	jalr	1024(ra) # 80007a48 <__memset>
    80007650:	01813083          	ld	ra,24(sp)
    80007654:	01013403          	ld	s0,16(sp)
    80007658:	00048513          	mv	a0,s1
    8000765c:	00813483          	ld	s1,8(sp)
    80007660:	02010113          	addi	sp,sp,32
    80007664:	00008067          	ret

0000000080007668 <initlock>:
    80007668:	ff010113          	addi	sp,sp,-16
    8000766c:	00813423          	sd	s0,8(sp)
    80007670:	01010413          	addi	s0,sp,16
    80007674:	00813403          	ld	s0,8(sp)
    80007678:	00b53423          	sd	a1,8(a0)
    8000767c:	00052023          	sw	zero,0(a0)
    80007680:	00053823          	sd	zero,16(a0)
    80007684:	01010113          	addi	sp,sp,16
    80007688:	00008067          	ret

000000008000768c <acquire>:
    8000768c:	fe010113          	addi	sp,sp,-32
    80007690:	00813823          	sd	s0,16(sp)
    80007694:	00913423          	sd	s1,8(sp)
    80007698:	00113c23          	sd	ra,24(sp)
    8000769c:	01213023          	sd	s2,0(sp)
    800076a0:	02010413          	addi	s0,sp,32
    800076a4:	00050493          	mv	s1,a0
    800076a8:	10002973          	csrr	s2,sstatus
    800076ac:	100027f3          	csrr	a5,sstatus
    800076b0:	ffd7f793          	andi	a5,a5,-3
    800076b4:	10079073          	csrw	sstatus,a5
    800076b8:	fffff097          	auipc	ra,0xfffff
    800076bc:	8e4080e7          	jalr	-1820(ra) # 80005f9c <mycpu>
    800076c0:	07852783          	lw	a5,120(a0)
    800076c4:	06078e63          	beqz	a5,80007740 <acquire+0xb4>
    800076c8:	fffff097          	auipc	ra,0xfffff
    800076cc:	8d4080e7          	jalr	-1836(ra) # 80005f9c <mycpu>
    800076d0:	07852783          	lw	a5,120(a0)
    800076d4:	0004a703          	lw	a4,0(s1)
    800076d8:	0017879b          	addiw	a5,a5,1
    800076dc:	06f52c23          	sw	a5,120(a0)
    800076e0:	04071063          	bnez	a4,80007720 <acquire+0x94>
    800076e4:	00100713          	li	a4,1
    800076e8:	00070793          	mv	a5,a4
    800076ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800076f0:	0007879b          	sext.w	a5,a5
    800076f4:	fe079ae3          	bnez	a5,800076e8 <acquire+0x5c>
    800076f8:	0ff0000f          	fence
    800076fc:	fffff097          	auipc	ra,0xfffff
    80007700:	8a0080e7          	jalr	-1888(ra) # 80005f9c <mycpu>
    80007704:	01813083          	ld	ra,24(sp)
    80007708:	01013403          	ld	s0,16(sp)
    8000770c:	00a4b823          	sd	a0,16(s1)
    80007710:	00013903          	ld	s2,0(sp)
    80007714:	00813483          	ld	s1,8(sp)
    80007718:	02010113          	addi	sp,sp,32
    8000771c:	00008067          	ret
    80007720:	0104b903          	ld	s2,16(s1)
    80007724:	fffff097          	auipc	ra,0xfffff
    80007728:	878080e7          	jalr	-1928(ra) # 80005f9c <mycpu>
    8000772c:	faa91ce3          	bne	s2,a0,800076e4 <acquire+0x58>
    80007730:	00001517          	auipc	a0,0x1
    80007734:	00050513          	mv	a0,a0
    80007738:	fffff097          	auipc	ra,0xfffff
    8000773c:	224080e7          	jalr	548(ra) # 8000695c <panic>
    80007740:	00195913          	srli	s2,s2,0x1
    80007744:	fffff097          	auipc	ra,0xfffff
    80007748:	858080e7          	jalr	-1960(ra) # 80005f9c <mycpu>
    8000774c:	00197913          	andi	s2,s2,1
    80007750:	07252e23          	sw	s2,124(a0) # 800087ac <digits+0x9c>
    80007754:	f75ff06f          	j	800076c8 <acquire+0x3c>

0000000080007758 <release>:
    80007758:	fe010113          	addi	sp,sp,-32
    8000775c:	00813823          	sd	s0,16(sp)
    80007760:	00113c23          	sd	ra,24(sp)
    80007764:	00913423          	sd	s1,8(sp)
    80007768:	01213023          	sd	s2,0(sp)
    8000776c:	02010413          	addi	s0,sp,32
    80007770:	00052783          	lw	a5,0(a0)
    80007774:	00079a63          	bnez	a5,80007788 <release+0x30>
    80007778:	00001517          	auipc	a0,0x1
    8000777c:	fc050513          	addi	a0,a0,-64 # 80008738 <digits+0x28>
    80007780:	fffff097          	auipc	ra,0xfffff
    80007784:	1dc080e7          	jalr	476(ra) # 8000695c <panic>
    80007788:	01053903          	ld	s2,16(a0)
    8000778c:	00050493          	mv	s1,a0
    80007790:	fffff097          	auipc	ra,0xfffff
    80007794:	80c080e7          	jalr	-2036(ra) # 80005f9c <mycpu>
    80007798:	fea910e3          	bne	s2,a0,80007778 <release+0x20>
    8000779c:	0004b823          	sd	zero,16(s1)
    800077a0:	0ff0000f          	fence
    800077a4:	0f50000f          	fence	iorw,ow
    800077a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800077ac:	ffffe097          	auipc	ra,0xffffe
    800077b0:	7f0080e7          	jalr	2032(ra) # 80005f9c <mycpu>
    800077b4:	100027f3          	csrr	a5,sstatus
    800077b8:	0027f793          	andi	a5,a5,2
    800077bc:	04079a63          	bnez	a5,80007810 <release+0xb8>
    800077c0:	07852783          	lw	a5,120(a0)
    800077c4:	02f05e63          	blez	a5,80007800 <release+0xa8>
    800077c8:	fff7871b          	addiw	a4,a5,-1
    800077cc:	06e52c23          	sw	a4,120(a0)
    800077d0:	00071c63          	bnez	a4,800077e8 <release+0x90>
    800077d4:	07c52783          	lw	a5,124(a0)
    800077d8:	00078863          	beqz	a5,800077e8 <release+0x90>
    800077dc:	100027f3          	csrr	a5,sstatus
    800077e0:	0027e793          	ori	a5,a5,2
    800077e4:	10079073          	csrw	sstatus,a5
    800077e8:	01813083          	ld	ra,24(sp)
    800077ec:	01013403          	ld	s0,16(sp)
    800077f0:	00813483          	ld	s1,8(sp)
    800077f4:	00013903          	ld	s2,0(sp)
    800077f8:	02010113          	addi	sp,sp,32
    800077fc:	00008067          	ret
    80007800:	00001517          	auipc	a0,0x1
    80007804:	f5850513          	addi	a0,a0,-168 # 80008758 <digits+0x48>
    80007808:	fffff097          	auipc	ra,0xfffff
    8000780c:	154080e7          	jalr	340(ra) # 8000695c <panic>
    80007810:	00001517          	auipc	a0,0x1
    80007814:	f3050513          	addi	a0,a0,-208 # 80008740 <digits+0x30>
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	144080e7          	jalr	324(ra) # 8000695c <panic>

0000000080007820 <holding>:
    80007820:	00052783          	lw	a5,0(a0)
    80007824:	00079663          	bnez	a5,80007830 <holding+0x10>
    80007828:	00000513          	li	a0,0
    8000782c:	00008067          	ret
    80007830:	fe010113          	addi	sp,sp,-32
    80007834:	00813823          	sd	s0,16(sp)
    80007838:	00913423          	sd	s1,8(sp)
    8000783c:	00113c23          	sd	ra,24(sp)
    80007840:	02010413          	addi	s0,sp,32
    80007844:	01053483          	ld	s1,16(a0)
    80007848:	ffffe097          	auipc	ra,0xffffe
    8000784c:	754080e7          	jalr	1876(ra) # 80005f9c <mycpu>
    80007850:	01813083          	ld	ra,24(sp)
    80007854:	01013403          	ld	s0,16(sp)
    80007858:	40a48533          	sub	a0,s1,a0
    8000785c:	00153513          	seqz	a0,a0
    80007860:	00813483          	ld	s1,8(sp)
    80007864:	02010113          	addi	sp,sp,32
    80007868:	00008067          	ret

000000008000786c <push_off>:
    8000786c:	fe010113          	addi	sp,sp,-32
    80007870:	00813823          	sd	s0,16(sp)
    80007874:	00113c23          	sd	ra,24(sp)
    80007878:	00913423          	sd	s1,8(sp)
    8000787c:	02010413          	addi	s0,sp,32
    80007880:	100024f3          	csrr	s1,sstatus
    80007884:	100027f3          	csrr	a5,sstatus
    80007888:	ffd7f793          	andi	a5,a5,-3
    8000788c:	10079073          	csrw	sstatus,a5
    80007890:	ffffe097          	auipc	ra,0xffffe
    80007894:	70c080e7          	jalr	1804(ra) # 80005f9c <mycpu>
    80007898:	07852783          	lw	a5,120(a0)
    8000789c:	02078663          	beqz	a5,800078c8 <push_off+0x5c>
    800078a0:	ffffe097          	auipc	ra,0xffffe
    800078a4:	6fc080e7          	jalr	1788(ra) # 80005f9c <mycpu>
    800078a8:	07852783          	lw	a5,120(a0)
    800078ac:	01813083          	ld	ra,24(sp)
    800078b0:	01013403          	ld	s0,16(sp)
    800078b4:	0017879b          	addiw	a5,a5,1
    800078b8:	06f52c23          	sw	a5,120(a0)
    800078bc:	00813483          	ld	s1,8(sp)
    800078c0:	02010113          	addi	sp,sp,32
    800078c4:	00008067          	ret
    800078c8:	0014d493          	srli	s1,s1,0x1
    800078cc:	ffffe097          	auipc	ra,0xffffe
    800078d0:	6d0080e7          	jalr	1744(ra) # 80005f9c <mycpu>
    800078d4:	0014f493          	andi	s1,s1,1
    800078d8:	06952e23          	sw	s1,124(a0)
    800078dc:	fc5ff06f          	j	800078a0 <push_off+0x34>

00000000800078e0 <pop_off>:
    800078e0:	ff010113          	addi	sp,sp,-16
    800078e4:	00813023          	sd	s0,0(sp)
    800078e8:	00113423          	sd	ra,8(sp)
    800078ec:	01010413          	addi	s0,sp,16
    800078f0:	ffffe097          	auipc	ra,0xffffe
    800078f4:	6ac080e7          	jalr	1708(ra) # 80005f9c <mycpu>
    800078f8:	100027f3          	csrr	a5,sstatus
    800078fc:	0027f793          	andi	a5,a5,2
    80007900:	04079663          	bnez	a5,8000794c <pop_off+0x6c>
    80007904:	07852783          	lw	a5,120(a0)
    80007908:	02f05a63          	blez	a5,8000793c <pop_off+0x5c>
    8000790c:	fff7871b          	addiw	a4,a5,-1
    80007910:	06e52c23          	sw	a4,120(a0)
    80007914:	00071c63          	bnez	a4,8000792c <pop_off+0x4c>
    80007918:	07c52783          	lw	a5,124(a0)
    8000791c:	00078863          	beqz	a5,8000792c <pop_off+0x4c>
    80007920:	100027f3          	csrr	a5,sstatus
    80007924:	0027e793          	ori	a5,a5,2
    80007928:	10079073          	csrw	sstatus,a5
    8000792c:	00813083          	ld	ra,8(sp)
    80007930:	00013403          	ld	s0,0(sp)
    80007934:	01010113          	addi	sp,sp,16
    80007938:	00008067          	ret
    8000793c:	00001517          	auipc	a0,0x1
    80007940:	e1c50513          	addi	a0,a0,-484 # 80008758 <digits+0x48>
    80007944:	fffff097          	auipc	ra,0xfffff
    80007948:	018080e7          	jalr	24(ra) # 8000695c <panic>
    8000794c:	00001517          	auipc	a0,0x1
    80007950:	df450513          	addi	a0,a0,-524 # 80008740 <digits+0x30>
    80007954:	fffff097          	auipc	ra,0xfffff
    80007958:	008080e7          	jalr	8(ra) # 8000695c <panic>

000000008000795c <push_on>:
    8000795c:	fe010113          	addi	sp,sp,-32
    80007960:	00813823          	sd	s0,16(sp)
    80007964:	00113c23          	sd	ra,24(sp)
    80007968:	00913423          	sd	s1,8(sp)
    8000796c:	02010413          	addi	s0,sp,32
    80007970:	100024f3          	csrr	s1,sstatus
    80007974:	100027f3          	csrr	a5,sstatus
    80007978:	0027e793          	ori	a5,a5,2
    8000797c:	10079073          	csrw	sstatus,a5
    80007980:	ffffe097          	auipc	ra,0xffffe
    80007984:	61c080e7          	jalr	1564(ra) # 80005f9c <mycpu>
    80007988:	07852783          	lw	a5,120(a0)
    8000798c:	02078663          	beqz	a5,800079b8 <push_on+0x5c>
    80007990:	ffffe097          	auipc	ra,0xffffe
    80007994:	60c080e7          	jalr	1548(ra) # 80005f9c <mycpu>
    80007998:	07852783          	lw	a5,120(a0)
    8000799c:	01813083          	ld	ra,24(sp)
    800079a0:	01013403          	ld	s0,16(sp)
    800079a4:	0017879b          	addiw	a5,a5,1
    800079a8:	06f52c23          	sw	a5,120(a0)
    800079ac:	00813483          	ld	s1,8(sp)
    800079b0:	02010113          	addi	sp,sp,32
    800079b4:	00008067          	ret
    800079b8:	0014d493          	srli	s1,s1,0x1
    800079bc:	ffffe097          	auipc	ra,0xffffe
    800079c0:	5e0080e7          	jalr	1504(ra) # 80005f9c <mycpu>
    800079c4:	0014f493          	andi	s1,s1,1
    800079c8:	06952e23          	sw	s1,124(a0)
    800079cc:	fc5ff06f          	j	80007990 <push_on+0x34>

00000000800079d0 <pop_on>:
    800079d0:	ff010113          	addi	sp,sp,-16
    800079d4:	00813023          	sd	s0,0(sp)
    800079d8:	00113423          	sd	ra,8(sp)
    800079dc:	01010413          	addi	s0,sp,16
    800079e0:	ffffe097          	auipc	ra,0xffffe
    800079e4:	5bc080e7          	jalr	1468(ra) # 80005f9c <mycpu>
    800079e8:	100027f3          	csrr	a5,sstatus
    800079ec:	0027f793          	andi	a5,a5,2
    800079f0:	04078463          	beqz	a5,80007a38 <pop_on+0x68>
    800079f4:	07852783          	lw	a5,120(a0)
    800079f8:	02f05863          	blez	a5,80007a28 <pop_on+0x58>
    800079fc:	fff7879b          	addiw	a5,a5,-1
    80007a00:	06f52c23          	sw	a5,120(a0)
    80007a04:	07853783          	ld	a5,120(a0)
    80007a08:	00079863          	bnez	a5,80007a18 <pop_on+0x48>
    80007a0c:	100027f3          	csrr	a5,sstatus
    80007a10:	ffd7f793          	andi	a5,a5,-3
    80007a14:	10079073          	csrw	sstatus,a5
    80007a18:	00813083          	ld	ra,8(sp)
    80007a1c:	00013403          	ld	s0,0(sp)
    80007a20:	01010113          	addi	sp,sp,16
    80007a24:	00008067          	ret
    80007a28:	00001517          	auipc	a0,0x1
    80007a2c:	d5850513          	addi	a0,a0,-680 # 80008780 <digits+0x70>
    80007a30:	fffff097          	auipc	ra,0xfffff
    80007a34:	f2c080e7          	jalr	-212(ra) # 8000695c <panic>
    80007a38:	00001517          	auipc	a0,0x1
    80007a3c:	d2850513          	addi	a0,a0,-728 # 80008760 <digits+0x50>
    80007a40:	fffff097          	auipc	ra,0xfffff
    80007a44:	f1c080e7          	jalr	-228(ra) # 8000695c <panic>

0000000080007a48 <__memset>:
    80007a48:	ff010113          	addi	sp,sp,-16
    80007a4c:	00813423          	sd	s0,8(sp)
    80007a50:	01010413          	addi	s0,sp,16
    80007a54:	1a060e63          	beqz	a2,80007c10 <__memset+0x1c8>
    80007a58:	40a007b3          	neg	a5,a0
    80007a5c:	0077f793          	andi	a5,a5,7
    80007a60:	00778693          	addi	a3,a5,7
    80007a64:	00b00813          	li	a6,11
    80007a68:	0ff5f593          	andi	a1,a1,255
    80007a6c:	fff6071b          	addiw	a4,a2,-1
    80007a70:	1b06e663          	bltu	a3,a6,80007c1c <__memset+0x1d4>
    80007a74:	1cd76463          	bltu	a4,a3,80007c3c <__memset+0x1f4>
    80007a78:	1a078e63          	beqz	a5,80007c34 <__memset+0x1ec>
    80007a7c:	00b50023          	sb	a1,0(a0)
    80007a80:	00100713          	li	a4,1
    80007a84:	1ae78463          	beq	a5,a4,80007c2c <__memset+0x1e4>
    80007a88:	00b500a3          	sb	a1,1(a0)
    80007a8c:	00200713          	li	a4,2
    80007a90:	1ae78a63          	beq	a5,a4,80007c44 <__memset+0x1fc>
    80007a94:	00b50123          	sb	a1,2(a0)
    80007a98:	00300713          	li	a4,3
    80007a9c:	18e78463          	beq	a5,a4,80007c24 <__memset+0x1dc>
    80007aa0:	00b501a3          	sb	a1,3(a0)
    80007aa4:	00400713          	li	a4,4
    80007aa8:	1ae78263          	beq	a5,a4,80007c4c <__memset+0x204>
    80007aac:	00b50223          	sb	a1,4(a0)
    80007ab0:	00500713          	li	a4,5
    80007ab4:	1ae78063          	beq	a5,a4,80007c54 <__memset+0x20c>
    80007ab8:	00b502a3          	sb	a1,5(a0)
    80007abc:	00700713          	li	a4,7
    80007ac0:	18e79e63          	bne	a5,a4,80007c5c <__memset+0x214>
    80007ac4:	00b50323          	sb	a1,6(a0)
    80007ac8:	00700e93          	li	t4,7
    80007acc:	00859713          	slli	a4,a1,0x8
    80007ad0:	00e5e733          	or	a4,a1,a4
    80007ad4:	01059e13          	slli	t3,a1,0x10
    80007ad8:	01c76e33          	or	t3,a4,t3
    80007adc:	01859313          	slli	t1,a1,0x18
    80007ae0:	006e6333          	or	t1,t3,t1
    80007ae4:	02059893          	slli	a7,a1,0x20
    80007ae8:	40f60e3b          	subw	t3,a2,a5
    80007aec:	011368b3          	or	a7,t1,a7
    80007af0:	02859813          	slli	a6,a1,0x28
    80007af4:	0108e833          	or	a6,a7,a6
    80007af8:	03059693          	slli	a3,a1,0x30
    80007afc:	003e589b          	srliw	a7,t3,0x3
    80007b00:	00d866b3          	or	a3,a6,a3
    80007b04:	03859713          	slli	a4,a1,0x38
    80007b08:	00389813          	slli	a6,a7,0x3
    80007b0c:	00f507b3          	add	a5,a0,a5
    80007b10:	00e6e733          	or	a4,a3,a4
    80007b14:	000e089b          	sext.w	a7,t3
    80007b18:	00f806b3          	add	a3,a6,a5
    80007b1c:	00e7b023          	sd	a4,0(a5)
    80007b20:	00878793          	addi	a5,a5,8
    80007b24:	fed79ce3          	bne	a5,a3,80007b1c <__memset+0xd4>
    80007b28:	ff8e7793          	andi	a5,t3,-8
    80007b2c:	0007871b          	sext.w	a4,a5
    80007b30:	01d787bb          	addw	a5,a5,t4
    80007b34:	0ce88e63          	beq	a7,a4,80007c10 <__memset+0x1c8>
    80007b38:	00f50733          	add	a4,a0,a5
    80007b3c:	00b70023          	sb	a1,0(a4)
    80007b40:	0017871b          	addiw	a4,a5,1
    80007b44:	0cc77663          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007b48:	00e50733          	add	a4,a0,a4
    80007b4c:	00b70023          	sb	a1,0(a4)
    80007b50:	0027871b          	addiw	a4,a5,2
    80007b54:	0ac77e63          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007b58:	00e50733          	add	a4,a0,a4
    80007b5c:	00b70023          	sb	a1,0(a4)
    80007b60:	0037871b          	addiw	a4,a5,3
    80007b64:	0ac77663          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007b68:	00e50733          	add	a4,a0,a4
    80007b6c:	00b70023          	sb	a1,0(a4)
    80007b70:	0047871b          	addiw	a4,a5,4
    80007b74:	08c77e63          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007b78:	00e50733          	add	a4,a0,a4
    80007b7c:	00b70023          	sb	a1,0(a4)
    80007b80:	0057871b          	addiw	a4,a5,5
    80007b84:	08c77663          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007b88:	00e50733          	add	a4,a0,a4
    80007b8c:	00b70023          	sb	a1,0(a4)
    80007b90:	0067871b          	addiw	a4,a5,6
    80007b94:	06c77e63          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007b98:	00e50733          	add	a4,a0,a4
    80007b9c:	00b70023          	sb	a1,0(a4)
    80007ba0:	0077871b          	addiw	a4,a5,7
    80007ba4:	06c77663          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007ba8:	00e50733          	add	a4,a0,a4
    80007bac:	00b70023          	sb	a1,0(a4)
    80007bb0:	0087871b          	addiw	a4,a5,8
    80007bb4:	04c77e63          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007bb8:	00e50733          	add	a4,a0,a4
    80007bbc:	00b70023          	sb	a1,0(a4)
    80007bc0:	0097871b          	addiw	a4,a5,9
    80007bc4:	04c77663          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007bc8:	00e50733          	add	a4,a0,a4
    80007bcc:	00b70023          	sb	a1,0(a4)
    80007bd0:	00a7871b          	addiw	a4,a5,10
    80007bd4:	02c77e63          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007bd8:	00e50733          	add	a4,a0,a4
    80007bdc:	00b70023          	sb	a1,0(a4)
    80007be0:	00b7871b          	addiw	a4,a5,11
    80007be4:	02c77663          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007be8:	00e50733          	add	a4,a0,a4
    80007bec:	00b70023          	sb	a1,0(a4)
    80007bf0:	00c7871b          	addiw	a4,a5,12
    80007bf4:	00c77e63          	bgeu	a4,a2,80007c10 <__memset+0x1c8>
    80007bf8:	00e50733          	add	a4,a0,a4
    80007bfc:	00b70023          	sb	a1,0(a4)
    80007c00:	00d7879b          	addiw	a5,a5,13
    80007c04:	00c7f663          	bgeu	a5,a2,80007c10 <__memset+0x1c8>
    80007c08:	00f507b3          	add	a5,a0,a5
    80007c0c:	00b78023          	sb	a1,0(a5)
    80007c10:	00813403          	ld	s0,8(sp)
    80007c14:	01010113          	addi	sp,sp,16
    80007c18:	00008067          	ret
    80007c1c:	00b00693          	li	a3,11
    80007c20:	e55ff06f          	j	80007a74 <__memset+0x2c>
    80007c24:	00300e93          	li	t4,3
    80007c28:	ea5ff06f          	j	80007acc <__memset+0x84>
    80007c2c:	00100e93          	li	t4,1
    80007c30:	e9dff06f          	j	80007acc <__memset+0x84>
    80007c34:	00000e93          	li	t4,0
    80007c38:	e95ff06f          	j	80007acc <__memset+0x84>
    80007c3c:	00000793          	li	a5,0
    80007c40:	ef9ff06f          	j	80007b38 <__memset+0xf0>
    80007c44:	00200e93          	li	t4,2
    80007c48:	e85ff06f          	j	80007acc <__memset+0x84>
    80007c4c:	00400e93          	li	t4,4
    80007c50:	e7dff06f          	j	80007acc <__memset+0x84>
    80007c54:	00500e93          	li	t4,5
    80007c58:	e75ff06f          	j	80007acc <__memset+0x84>
    80007c5c:	00600e93          	li	t4,6
    80007c60:	e6dff06f          	j	80007acc <__memset+0x84>

0000000080007c64 <__memmove>:
    80007c64:	ff010113          	addi	sp,sp,-16
    80007c68:	00813423          	sd	s0,8(sp)
    80007c6c:	01010413          	addi	s0,sp,16
    80007c70:	0e060863          	beqz	a2,80007d60 <__memmove+0xfc>
    80007c74:	fff6069b          	addiw	a3,a2,-1
    80007c78:	0006881b          	sext.w	a6,a3
    80007c7c:	0ea5e863          	bltu	a1,a0,80007d6c <__memmove+0x108>
    80007c80:	00758713          	addi	a4,a1,7
    80007c84:	00a5e7b3          	or	a5,a1,a0
    80007c88:	40a70733          	sub	a4,a4,a0
    80007c8c:	0077f793          	andi	a5,a5,7
    80007c90:	00f73713          	sltiu	a4,a4,15
    80007c94:	00174713          	xori	a4,a4,1
    80007c98:	0017b793          	seqz	a5,a5
    80007c9c:	00e7f7b3          	and	a5,a5,a4
    80007ca0:	10078863          	beqz	a5,80007db0 <__memmove+0x14c>
    80007ca4:	00900793          	li	a5,9
    80007ca8:	1107f463          	bgeu	a5,a6,80007db0 <__memmove+0x14c>
    80007cac:	0036581b          	srliw	a6,a2,0x3
    80007cb0:	fff8081b          	addiw	a6,a6,-1
    80007cb4:	02081813          	slli	a6,a6,0x20
    80007cb8:	01d85893          	srli	a7,a6,0x1d
    80007cbc:	00858813          	addi	a6,a1,8
    80007cc0:	00058793          	mv	a5,a1
    80007cc4:	00050713          	mv	a4,a0
    80007cc8:	01088833          	add	a6,a7,a6
    80007ccc:	0007b883          	ld	a7,0(a5)
    80007cd0:	00878793          	addi	a5,a5,8
    80007cd4:	00870713          	addi	a4,a4,8
    80007cd8:	ff173c23          	sd	a7,-8(a4)
    80007cdc:	ff0798e3          	bne	a5,a6,80007ccc <__memmove+0x68>
    80007ce0:	ff867713          	andi	a4,a2,-8
    80007ce4:	02071793          	slli	a5,a4,0x20
    80007ce8:	0207d793          	srli	a5,a5,0x20
    80007cec:	00f585b3          	add	a1,a1,a5
    80007cf0:	40e686bb          	subw	a3,a3,a4
    80007cf4:	00f507b3          	add	a5,a0,a5
    80007cf8:	06e60463          	beq	a2,a4,80007d60 <__memmove+0xfc>
    80007cfc:	0005c703          	lbu	a4,0(a1)
    80007d00:	00e78023          	sb	a4,0(a5)
    80007d04:	04068e63          	beqz	a3,80007d60 <__memmove+0xfc>
    80007d08:	0015c603          	lbu	a2,1(a1)
    80007d0c:	00100713          	li	a4,1
    80007d10:	00c780a3          	sb	a2,1(a5)
    80007d14:	04e68663          	beq	a3,a4,80007d60 <__memmove+0xfc>
    80007d18:	0025c603          	lbu	a2,2(a1)
    80007d1c:	00200713          	li	a4,2
    80007d20:	00c78123          	sb	a2,2(a5)
    80007d24:	02e68e63          	beq	a3,a4,80007d60 <__memmove+0xfc>
    80007d28:	0035c603          	lbu	a2,3(a1)
    80007d2c:	00300713          	li	a4,3
    80007d30:	00c781a3          	sb	a2,3(a5)
    80007d34:	02e68663          	beq	a3,a4,80007d60 <__memmove+0xfc>
    80007d38:	0045c603          	lbu	a2,4(a1)
    80007d3c:	00400713          	li	a4,4
    80007d40:	00c78223          	sb	a2,4(a5)
    80007d44:	00e68e63          	beq	a3,a4,80007d60 <__memmove+0xfc>
    80007d48:	0055c603          	lbu	a2,5(a1)
    80007d4c:	00500713          	li	a4,5
    80007d50:	00c782a3          	sb	a2,5(a5)
    80007d54:	00e68663          	beq	a3,a4,80007d60 <__memmove+0xfc>
    80007d58:	0065c703          	lbu	a4,6(a1)
    80007d5c:	00e78323          	sb	a4,6(a5)
    80007d60:	00813403          	ld	s0,8(sp)
    80007d64:	01010113          	addi	sp,sp,16
    80007d68:	00008067          	ret
    80007d6c:	02061713          	slli	a4,a2,0x20
    80007d70:	02075713          	srli	a4,a4,0x20
    80007d74:	00e587b3          	add	a5,a1,a4
    80007d78:	f0f574e3          	bgeu	a0,a5,80007c80 <__memmove+0x1c>
    80007d7c:	02069613          	slli	a2,a3,0x20
    80007d80:	02065613          	srli	a2,a2,0x20
    80007d84:	fff64613          	not	a2,a2
    80007d88:	00e50733          	add	a4,a0,a4
    80007d8c:	00c78633          	add	a2,a5,a2
    80007d90:	fff7c683          	lbu	a3,-1(a5)
    80007d94:	fff78793          	addi	a5,a5,-1
    80007d98:	fff70713          	addi	a4,a4,-1
    80007d9c:	00d70023          	sb	a3,0(a4)
    80007da0:	fec798e3          	bne	a5,a2,80007d90 <__memmove+0x12c>
    80007da4:	00813403          	ld	s0,8(sp)
    80007da8:	01010113          	addi	sp,sp,16
    80007dac:	00008067          	ret
    80007db0:	02069713          	slli	a4,a3,0x20
    80007db4:	02075713          	srli	a4,a4,0x20
    80007db8:	00170713          	addi	a4,a4,1
    80007dbc:	00e50733          	add	a4,a0,a4
    80007dc0:	00050793          	mv	a5,a0
    80007dc4:	0005c683          	lbu	a3,0(a1)
    80007dc8:	00178793          	addi	a5,a5,1
    80007dcc:	00158593          	addi	a1,a1,1
    80007dd0:	fed78fa3          	sb	a3,-1(a5)
    80007dd4:	fee798e3          	bne	a5,a4,80007dc4 <__memmove+0x160>
    80007dd8:	f89ff06f          	j	80007d60 <__memmove+0xfc>

0000000080007ddc <__putc>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00113c23          	sd	ra,24(sp)
    80007de8:	02010413          	addi	s0,sp,32
    80007dec:	00050793          	mv	a5,a0
    80007df0:	fef40593          	addi	a1,s0,-17
    80007df4:	00100613          	li	a2,1
    80007df8:	00000513          	li	a0,0
    80007dfc:	fef407a3          	sb	a5,-17(s0)
    80007e00:	fffff097          	auipc	ra,0xfffff
    80007e04:	b3c080e7          	jalr	-1220(ra) # 8000693c <console_write>
    80007e08:	01813083          	ld	ra,24(sp)
    80007e0c:	01013403          	ld	s0,16(sp)
    80007e10:	02010113          	addi	sp,sp,32
    80007e14:	00008067          	ret

0000000080007e18 <__getc>:
    80007e18:	fe010113          	addi	sp,sp,-32
    80007e1c:	00813823          	sd	s0,16(sp)
    80007e20:	00113c23          	sd	ra,24(sp)
    80007e24:	02010413          	addi	s0,sp,32
    80007e28:	fe840593          	addi	a1,s0,-24
    80007e2c:	00100613          	li	a2,1
    80007e30:	00000513          	li	a0,0
    80007e34:	fffff097          	auipc	ra,0xfffff
    80007e38:	ae8080e7          	jalr	-1304(ra) # 8000691c <console_read>
    80007e3c:	fe844503          	lbu	a0,-24(s0)
    80007e40:	01813083          	ld	ra,24(sp)
    80007e44:	01013403          	ld	s0,16(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret

0000000080007e50 <console_handler>:
    80007e50:	fe010113          	addi	sp,sp,-32
    80007e54:	00813823          	sd	s0,16(sp)
    80007e58:	00113c23          	sd	ra,24(sp)
    80007e5c:	00913423          	sd	s1,8(sp)
    80007e60:	02010413          	addi	s0,sp,32
    80007e64:	14202773          	csrr	a4,scause
    80007e68:	100027f3          	csrr	a5,sstatus
    80007e6c:	0027f793          	andi	a5,a5,2
    80007e70:	06079e63          	bnez	a5,80007eec <console_handler+0x9c>
    80007e74:	00074c63          	bltz	a4,80007e8c <console_handler+0x3c>
    80007e78:	01813083          	ld	ra,24(sp)
    80007e7c:	01013403          	ld	s0,16(sp)
    80007e80:	00813483          	ld	s1,8(sp)
    80007e84:	02010113          	addi	sp,sp,32
    80007e88:	00008067          	ret
    80007e8c:	0ff77713          	andi	a4,a4,255
    80007e90:	00900793          	li	a5,9
    80007e94:	fef712e3          	bne	a4,a5,80007e78 <console_handler+0x28>
    80007e98:	ffffe097          	auipc	ra,0xffffe
    80007e9c:	6dc080e7          	jalr	1756(ra) # 80006574 <plic_claim>
    80007ea0:	00a00793          	li	a5,10
    80007ea4:	00050493          	mv	s1,a0
    80007ea8:	02f50c63          	beq	a0,a5,80007ee0 <console_handler+0x90>
    80007eac:	fc0506e3          	beqz	a0,80007e78 <console_handler+0x28>
    80007eb0:	00050593          	mv	a1,a0
    80007eb4:	00000517          	auipc	a0,0x0
    80007eb8:	7d450513          	addi	a0,a0,2004 # 80008688 <_ZZ16printIntegerMinemE6digits+0x668>
    80007ebc:	fffff097          	auipc	ra,0xfffff
    80007ec0:	afc080e7          	jalr	-1284(ra) # 800069b8 <__printf>
    80007ec4:	01013403          	ld	s0,16(sp)
    80007ec8:	01813083          	ld	ra,24(sp)
    80007ecc:	00048513          	mv	a0,s1
    80007ed0:	00813483          	ld	s1,8(sp)
    80007ed4:	02010113          	addi	sp,sp,32
    80007ed8:	ffffe317          	auipc	t1,0xffffe
    80007edc:	6d430067          	jr	1748(t1) # 800065ac <plic_complete>
    80007ee0:	fffff097          	auipc	ra,0xfffff
    80007ee4:	3e0080e7          	jalr	992(ra) # 800072c0 <uartintr>
    80007ee8:	fddff06f          	j	80007ec4 <console_handler+0x74>
    80007eec:	00001517          	auipc	a0,0x1
    80007ef0:	89c50513          	addi	a0,a0,-1892 # 80008788 <digits+0x78>
    80007ef4:	fffff097          	auipc	ra,0xfffff
    80007ef8:	a68080e7          	jalr	-1432(ra) # 8000695c <panic>
	...
