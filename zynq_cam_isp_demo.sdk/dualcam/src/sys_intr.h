#ifndef __SYS_INTR_H__
#define __SYS_INTR_H__

#include "xparameters.h"
#include "xscugic.h"

int sys_intr_init(void);

#ifdef XPAR_INTC_0_DEVICE_ID

#include "xintc.h"
XIntc* sys_intr_inst();

#else

XScuGic* sys_intr_inst();

#endif

#endif
