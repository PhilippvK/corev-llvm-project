# RUN: not llvm-mc -triple=riscv32 --mattr=+xcvmac %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ERROR

cv.msu t0, t1, 0
# CHECK-ERROR: invalid operand for instruction

cv.msu t0, 0, t2
# CHECK-ERROR: invalid operand for instruction

cv.msu 0, t1, t2
# CHECK-ERROR: invalid operand for instruction

cv.msu t0, t1
# CHECK-ERROR: too few operands for instruction

cv.msu t0, t1, t2, t4
# CHECK-ERROR: invalid operand for instruction
