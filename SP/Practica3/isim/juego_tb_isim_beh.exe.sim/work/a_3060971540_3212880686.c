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
static const char *ng0 = "C:/Users/Manuel/Practica3/puertos_in.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3060971540_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1824U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6096);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 1984U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2464U);
    t3 = *((char **)t2);
    t2 = (t0 + 3560U);
    t7 = *((char **)t2);
    t17 = *((int *)t7);
    t18 = (t17 - 2);
    t19 = (t18 * -1);
    t20 = (8U * t19);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t8 = (t0 + 6240);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_delta(t8, 0U, 8U, 0LL);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1784U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(57, ng0);
    t7 = xsi_get_transient_memory(8U);
    memset(t7, 0, 8U);
    t11 = t7;
    memset(t11, (unsigned char)2, 8U);
    t12 = (t0 + 6240);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_delta(t12, 0U, 8U, 0LL);
    goto LAB9;

}

static void work_a_3060971540_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1824U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6112);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 1984U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2464U);
    t3 = *((char **)t2);
    t2 = (t0 + 3680U);
    t7 = *((char **)t2);
    t17 = *((int *)t7);
    t18 = (t17 - 2);
    t19 = (t18 * -1);
    t20 = (8U * t19);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t8 = (t0 + 6304);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_delta(t8, 8U, 8U, 0LL);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1784U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(57, ng0);
    t7 = xsi_get_transient_memory(8U);
    memset(t7, 0, 8U);
    t11 = t7;
    memset(t11, (unsigned char)2, 8U);
    t12 = (t0 + 6304);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_delta(t12, 8U, 8U, 0LL);
    goto LAB9;

}

static void work_a_3060971540_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1824U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6128);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 1984U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2464U);
    t3 = *((char **)t2);
    t2 = (t0 + 3800U);
    t7 = *((char **)t2);
    t17 = *((int *)t7);
    t18 = (t17 - 2);
    t19 = (t18 * -1);
    t20 = (8U * t19);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t8 = (t0 + 6368);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_delta(t8, 16U, 8U, 0LL);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1784U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(57, ng0);
    t7 = xsi_get_transient_memory(8U);
    memset(t7, 0, 8U);
    t11 = t7;
    memset(t11, (unsigned char)2, 8U);
    t12 = (t0 + 6368);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_delta(t12, 16U, 8U, 0LL);
    goto LAB9;

}

static void work_a_3060971540_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1984U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1824U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 6144);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(89, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 6432);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(92, ng0);
    t5 = (t0 + 2144U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB6;

LAB8:    t1 = (t0 + 1784U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(93, ng0);
    t5 = (t0 + 2784U);
    t7 = *((char **)t5);
    t5 = (t0 + 2304U);
    t8 = *((char **)t5);
    t5 = (t0 + 8952U);
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t5);
    t16 = (t15 - 2);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(2, 0, -1, t15);
    t18 = (8U * t17);
    t19 = (0 + t18);
    t9 = (t7 + t19);
    t10 = (t0 + 6432);
    t20 = (t10 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB12;

}

static void work_a_3060971540_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    t1 = (t0 + 6496);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6160);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3060971540_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3060971540_3212880686_p_0,(void *)work_a_3060971540_3212880686_p_1,(void *)work_a_3060971540_3212880686_p_2,(void *)work_a_3060971540_3212880686_p_3,(void *)work_a_3060971540_3212880686_p_4};
	xsi_register_didat("work_a_3060971540_3212880686", "isim/juego_tb_isim_beh.exe.sim/work/a_3060971540_3212880686.didat");
	xsi_register_executes(pe);
}
