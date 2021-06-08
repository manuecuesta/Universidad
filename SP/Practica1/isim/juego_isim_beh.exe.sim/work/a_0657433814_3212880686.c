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
static const char *ng0 = "C:/Users/Manuel/Practica1/vga_ctrl.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3905759485_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0657433814_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 7032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 7192);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 7192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB6;

LAB8:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB10;

LAB11:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7192);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

}

static void work_a_0657433814_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7256);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7048);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0657433814_3212880686_p_2(char *t0)
{
    char t15[16];
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
    int t13;
    unsigned char t14;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2272U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 7064);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(83, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 7320);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(84, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t2 = t1;
    memset(t2, (unsigned char)2, 10U);
    t5 = (t0 + 7384);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 7448);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 7512);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t2 = (t0 + 10608U);
    t7 = (t0 + 3888U);
    t8 = *((char **)t7);
    t13 = *((int *)t8);
    t14 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t6, t2, t13);
    if (t14 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(93, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t2 = t1;
    memset(t2, (unsigned char)2, 10U);
    t5 = (t0 + 7320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t5);

LAB12:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 10608U);
    t5 = (t0 + 3888U);
    t6 = *((char **)t5);
    t13 = *((int *)t6);
    t4 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t2, t1, t13);
    if (t4 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10624U);
    t5 = (t0 + 4008U);
    t6 = *((char **)t5);
    t13 = *((int *)t6);
    t3 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t2, t1, t13);
    if (t3 != 0)
        goto LAB24;

LAB25:
LAB17:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 10608U);
    t5 = (t0 + 4128U);
    t6 = *((char **)t5);
    t13 = *((int *)t6);
    t4 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t2, t1, t13);
    if (t4 == 1)
        goto LAB29;

LAB30:    t3 = (unsigned char)0;

LAB31:    if (t3 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7448);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB27:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10624U);
    t5 = (t0 + 4368U);
    t6 = *((char **)t5);
    t13 = *((int *)t6);
    t4 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t2, t1, t13);
    if (t4 == 1)
        goto LAB35;

LAB36:    t3 = (unsigned char)0;

LAB37:    if (t3 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 7512);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB33:    goto LAB6;

LAB8:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(91, ng0);
    t7 = (t0 + 2472U);
    t9 = *((char **)t7);
    t7 = (t0 + 10608U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t9, t7, 1);
    t16 = (t15 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (10U != t18);
    if (t19 == 1)
        goto LAB14;

LAB15:    t20 = (t0 + 7320);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t10, 10U);
    xsi_driver_first_trans_fast(t20);
    goto LAB12;

LAB14:    xsi_size_not_matching(10U, t18, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(97, ng0);
    t8 = (t0 + 2632U);
    t10 = *((char **)t8);
    t8 = (t0 + 10624U);
    t16 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t10, t8, 1);
    t20 = (t15 + 12U);
    t17 = *((unsigned int *)t20);
    t18 = (1U * t17);
    t12 = (10U != t18);
    if (t12 == 1)
        goto LAB22;

LAB23:    t21 = (t0 + 7384);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t26 = *((char **)t24);
    memcpy(t26, t16, 10U);
    xsi_driver_first_trans_fast(t21);
    goto LAB17;

LAB19:    t5 = (t0 + 2632U);
    t7 = *((char **)t5);
    t5 = (t0 + 10624U);
    t8 = (t0 + 4008U);
    t9 = *((char **)t8);
    t25 = *((int *)t9);
    t11 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t7, t5, t25);
    t3 = t11;
    goto LAB21;

LAB22:    xsi_size_not_matching(10U, t18, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(99, ng0);
    t5 = xsi_get_transient_memory(10U);
    memset(t5, 0, 10U);
    t7 = t5;
    memset(t7, (unsigned char)2, 10U);
    t8 = (t0 + 7384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t16 = (t10 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t5, 10U);
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB26:    xsi_set_current_line(103, ng0);
    t8 = (t0 + 7448);
    t10 = (t8 + 56U);
    t16 = *((char **)t10);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB27;

LAB29:    t5 = (t0 + 2472U);
    t7 = *((char **)t5);
    t5 = (t0 + 10608U);
    t8 = (t0 + 4248U);
    t9 = *((char **)t8);
    t25 = *((int *)t9);
    t11 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t7, t5, t25);
    t3 = t11;
    goto LAB31;

LAB32:    xsi_set_current_line(108, ng0);
    t8 = (t0 + 7512);
    t10 = (t8 + 56U);
    t16 = *((char **)t10);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB33;

LAB35:    t5 = (t0 + 2632U);
    t7 = *((char **)t5);
    t5 = (t0 + 10624U);
    t8 = (t0 + 4488U);
    t9 = *((char **)t8);
    t25 = *((int *)t9);
    t11 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t7, t5, t25);
    t3 = t11;
    goto LAB37;

}

static void work_a_0657433814_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 10608U);
    t4 = (t0 + 2928U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t7 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t3, t2, t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t17 = (t0 + 7576);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 7080);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 7576);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t4 = (t0 + 2632U);
    t8 = *((char **)t4);
    t4 = (t0 + 10624U);
    t9 = (t0 + 3408U);
    t10 = *((char **)t9);
    t11 = *((int *)t10);
    t12 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t8, t4, t11);
    t1 = t12;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0657433814_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(118, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7640);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7096);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0657433814_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(119, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7704);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7112);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0657433814_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0657433814_3212880686_p_0,(void *)work_a_0657433814_3212880686_p_1,(void *)work_a_0657433814_3212880686_p_2,(void *)work_a_0657433814_3212880686_p_3,(void *)work_a_0657433814_3212880686_p_4,(void *)work_a_0657433814_3212880686_p_5};
	xsi_register_didat("work_a_0657433814_3212880686", "isim/juego_isim_beh.exe.sim/work/a_0657433814_3212880686.didat");
	xsi_register_executes(pe);
}
