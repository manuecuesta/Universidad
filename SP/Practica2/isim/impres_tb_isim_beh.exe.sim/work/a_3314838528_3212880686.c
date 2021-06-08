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
static const char *ng0 = "C:/Users/Manuel/Practica1Nuevo/imprime_r.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3314838528_3212880686_p_0(char *t0)
{
    char t21[16];
    char t25[16];
    char t27[16];
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
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t26;
    int t28;
    char *t29;
    static char *nl0[] = {&&LAB11, &&LAB12, &&LAB13, &&LAB14};

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(27U);
    memset(t1, 0, 27U);
    t5 = t1;
    memset(t5, (unsigned char)2, 27U);
    t6 = (t0 + 4152);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 27U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4216);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(60, ng0);
    t5 = (t0 + 2312U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t5 = (char *)((nl0) + t13);
    goto **((char **)t5);

LAB7:    t1 = (t0 + 1632U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(62, ng0);
    t7 = (t0 + 1992U);
    t8 = *((char **)t7);
    t14 = *((unsigned char *)t8);
    t15 = (t14 == (unsigned char)3);
    if (t15 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB10;

LAB12:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 6756U);
    t5 = (t0 + 2768U);
    t6 = *((char **)t5);
    t20 = *((int *)t6);
    t3 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t2, t1, t20);
    if (t3 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB10;

LAB13:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4280);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 6824);
    t5 = (t0 + 4408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 11U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 6835);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t22 = (7 - 3);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t25 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t20 = (3 - 0);
    t26 = (t20 * 1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t10 = (t27 + 0U);
    t16 = (t10 + 0U);
    *((int *)t16) = 3;
    t16 = (t10 + 4U);
    *((int *)t16) = 0;
    t16 = (t10 + 8U);
    *((int *)t16) = -1;
    t28 = (0 - 3);
    t26 = (t28 * -1);
    t26 = (t26 + 1);
    t16 = (t10 + 12U);
    *((unsigned int *)t16) = t26;
    t7 = xsi_base_array_concat(t7, t21, t8, (char)97, t1, t25, (char)97, t5, t27, (char)101);
    t26 = (4U + 4U);
    t3 = (8U != t26);
    if (t3 == 1)
        goto LAB24;

LAB25:    t16 = (t0 + 4472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t29 = *((char **)t19);
    memcpy(t29, t7, 8U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4216);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB14:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 6839);
    t5 = (t0 + 4408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 11U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6850);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t22 = (7 - 7);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t25 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t20 = (3 - 0);
    t26 = (t20 * 1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t10 = (t27 + 0U);
    t16 = (t10 + 0U);
    *((int *)t16) = 7;
    t16 = (t10 + 4U);
    *((int *)t16) = 4;
    t16 = (t10 + 8U);
    *((int *)t16) = -1;
    t28 = (4 - 7);
    t26 = (t28 * -1);
    t26 = (t26 + 1);
    t16 = (t10 + 12U);
    *((unsigned int *)t16) = t26;
    t7 = xsi_base_array_concat(t7, t21, t8, (char)97, t1, t25, (char)97, t5, t27, (char)101);
    t26 = (4U + 4U);
    t3 = (8U != t26);
    if (t3 == 1)
        goto LAB26;

LAB27:    t16 = (t0 + 4472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t29 = *((char **)t19);
    memcpy(t29, t7, 8U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB15:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB16:    xsi_set_current_line(63, ng0);
    t7 = xsi_get_transient_memory(27U);
    memset(t7, 0, 27U);
    t9 = t7;
    memset(t9, (unsigned char)2, 27U);
    t10 = (t0 + 4152);
    t16 = (t10 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 27U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4216);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4280);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 2472U);
    t7 = *((char **)t5);
    t5 = (t0 + 6756U);
    t8 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t21, t7, t5, 1);
    t9 = (t21 + 12U);
    t22 = *((unsigned int *)t9);
    t23 = (1U * t22);
    t4 = (27U != t23);
    if (t4 == 1)
        goto LAB22;

LAB23:    t10 = (t0 + 4152);
    t16 = (t10 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 27U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB22:    xsi_size_not_matching(27U, t23, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(8U, t26, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(8U, t26, 0);
    goto LAB27;

}


extern void work_a_3314838528_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3314838528_3212880686_p_0};
	xsi_register_didat("work_a_3314838528_3212880686", "isim/impres_tb_isim_beh.exe.sim/work/a_3314838528_3212880686.didat");
	xsi_register_executes(pe);
}
