# RUN: llvm-mc -triple=riscv32 --mattr=+xcvsimd -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

//===----------------------------------------------------------------------===//
// cv.sll.h
//===----------------------------------------------------------------------===//

cv.sll.h t0, t1, t2
# CHECK-INSTR: cv.sll.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x50]

cv.sll.h a0, a1, a2
# CHECK-INSTR: cv.sll.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0x85,0xc5,0x50]

cv.sll.h s0, s1, s2
# CHECK-INSTR: cv.sll.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0x84,0x24,0x51]

//===----------------------------------------------------------------------===//
// cv.sll.b
//===----------------------------------------------------------------------===//

cv.sll.b t0, t1, t2
# CHECK-INSTR: cv.sll.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x12,0x73,0x50]

cv.sll.b a0, a1, a2
# CHECK-INSTR: cv.sll.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x50]

cv.sll.b s0, s1, s2
# CHECK-INSTR: cv.sll.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0x94,0x24,0x51]

//===----------------------------------------------------------------------===//
// cv.sll.sc.h
//===----------------------------------------------------------------------===//

cv.sll.sc.h t0, t1, t2
# CHECK-INSTR: cv.sll.sc.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x42,0x73,0x50]

cv.sll.sc.h a0, a1, a2
# CHECK-INSTR: cv.sll.sc.h a0, a1, a2
# CHECK-ENCODING: [0x7b,0xc5,0xc5,0x50]

cv.sll.sc.h s0, s1, s2
# CHECK-INSTR: cv.sll.sc.h s0, s1, s2
# CHECK-ENCODING: [0x7b,0xc4,0x24,0x51]

//===----------------------------------------------------------------------===//
// cv.sll.sc.b
//===----------------------------------------------------------------------===//

cv.sll.sc.b t0, t1, t2
# CHECK-INSTR: cv.sll.sc.b t0, t1, t2
# CHECK-ENCODING: [0xfb,0x52,0x73,0x50]

cv.sll.sc.b a0, a1, a2
# CHECK-INSTR: cv.sll.sc.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0xd5,0xc5,0x50]

cv.sll.sc.b s0, s1, s2
# CHECK-INSTR: cv.sll.sc.b s0, s1, s2
# CHECK-ENCODING: [0x7b,0xd4,0x24,0x51]

//===----------------------------------------------------------------------===//
// cv.sll.sci.h
//===----------------------------------------------------------------------===//

cv.sll.sci.h t0, t1, 32
# CHECK-INSTR: cv.sll.sci.h t0, t1, 32
# CHECK-ENCODING: [0xfb,0x62,0x03,0x51]

cv.sll.sci.h a0, a1, 7
# CHECK-INSTR: cv.sll.sci.h a0, a1, 7
# CHECK-ENCODING: [0x7b,0xe5,0x35,0x52]

cv.sll.sci.h s0, s1, 63
# CHECK-INSTR: cv.sll.sci.h s0, s1, 63
# CHECK-ENCODING: [0x7b,0xe4,0xf4,0x53]

//===----------------------------------------------------------------------===//
// cv.sll.sci.b
//===----------------------------------------------------------------------===//

cv.sll.sci.b t0, t1, 32
# CHECK-INSTR: cv.sll.sci.b t0, t1, 32
# CHECK-ENCODING: [0xfb,0x72,0x03,0x51]

cv.sll.sci.b a0, a1, 7
# CHECK-INSTR: cv.sll.sci.b a0, a1, 7
# CHECK-ENCODING: [0x7b,0xf5,0x35,0x52]

cv.sll.sci.b s0, s1, 63
# CHECK-INSTR: cv.sll.sci.b s0, s1, 63
# CHECK-ENCODING: [0x7b,0xf4,0xf4,0x53]

