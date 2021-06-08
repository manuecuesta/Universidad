/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Manuel/Practica3/prog_fin.vhd";



static void work_a_1172026091_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (1 == 0);
    if (t1 != 0)
        goto LAB3;

LAB4:
LAB5:    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 3352);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 18U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t14 = (t0 + 3272);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 3352);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 18U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1172026091_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1172026091_3212880686_p_0};
	xsi_register_didat("work_a_1172026091_3212880686", "isim/juego_tb_isim_beh.exe.sim/work/a_1172026091_3212880686.didat");
	xsi_register_executes(pe);
}
