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
static const char *ng0 = "C:/Users/Manuel/Practica3/sim.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4072460770_3212880686_p_0(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned int t18;
    int t20;
    unsigned int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t8 = (t4 == (unsigned char)3);
    if (t8 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(128U);
    memset(t1, 0, 128U);
    t5 = t1;
    t6 = (8U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3392);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 128U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t9 = (128U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);
    t5 = (t0 + 1352U);
    t7 = *((char **)t5);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB8;

LAB10:    t1 = (t0 + 992U);
    t15 = xsi_signal_has_event(t1);
    t3 = t15;
    goto LAB12;

LAB13:    xsi_set_current_line(55, ng0);
    t5 = (t0 + 1672U);
    t10 = *((char **)t5);
    t5 = (t0 + 1512U);
    t11 = *((char **)t5);
    t6 = (17 - 11);
    t9 = (t6 * 1U);
    t18 = (0 + t9);
    t5 = (t11 + t18);
    t12 = (t19 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 11;
    t13 = (t12 + 4U);
    *((int *)t13) = 8;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t20 = (8 - 11);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t21;
    t22 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t19);
    t23 = (t22 - 15);
    t21 = (t23 * -1);
    t24 = (8U * t21);
    t25 = (0U + t24);
    t13 = (t0 + 3392);
    t14 = (t13 + 56U);
    t26 = *((char **)t14);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t10, 8U);
    xsi_driver_first_trans_delta(t13, t25, 8U, 0LL);
    goto LAB14;

}


extern void work_a_4072460770_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4072460770_3212880686_p_0};
	xsi_register_didat("work_a_4072460770_3212880686", "isim/simulacion_isim_beh.exe.sim/work/a_4072460770_3212880686.didat");
	xsi_register_executes(pe);
}
