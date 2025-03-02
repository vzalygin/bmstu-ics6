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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/mnt/c/repos/bmstu-ics6/schemach/2sem/LR2-scheme/main_tb.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {140U, 0U};
static unsigned int ng4[] = {70U, 0U};
static unsigned int ng5[] = {16U, 0U};
static unsigned int ng6[] = {54U, 0U};
static unsigned int ng7[] = {8U, 0U};



static int sp_click(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(22, ng0);

LAB5:    xsi_set_current_line(23, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(23, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t1 + 6480);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t8 + 4);
    t13 = *((unsigned int *)t8);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    xsi_process_wait(t19, 10000LL);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    t20 = (t1 + 6480);
    t21 = (t1 + 2680);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 1);
    xsi_set_current_line(24, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(24, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 6488);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB9;
    goto LAB1;

LAB9:    t19 = (t1 + 6488);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(25, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(25, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t1 + 6496);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB11;
    goto LAB1;

LAB11:    t19 = (t1 + 6496);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(26, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 48U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(26, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 6504);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB13;
    goto LAB1;

LAB13:    t19 = (t1 + 6504);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(27, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 64U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(27, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t1 + 6512);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB15;
    goto LAB1;

LAB15:    t19 = (t1 + 6512);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(28, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 80U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(28, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 6520);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB17;
    goto LAB1;

LAB17:    t19 = (t1 + 6520);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(29, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 96U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(29, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t1 + 6528);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB19;
    goto LAB1;

LAB19:    t19 = (t1 + 6528);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 10000000LL);
    *((char **)t3) = &&LAB20;
    t0 = 1;
    goto LAB1;

LAB20:    xsi_set_current_line(31, ng0);
    t6 = (t2 + 88U);
    t7 = *((char **)t6);
    t8 = (t7 + 112U);
    xsi_wp_set_status(t8, 1);
    *((char **)t3) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(31, ng0);
    t9 = ((char*)((ng2)));
    t12 = (t1 + 6536);
    memset(t12, 0, 8);
    t10 = 1U;
    t11 = t10;
    t15 = (t9 + 4);
    t13 = *((unsigned int *)t9);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t15);
    t11 = (t11 & t14);
    t18 = (t12 + 4);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t16 | t10);
    t17 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t17 | t11);
    t19 = (t2 + 56U);
    t20 = *((char **)t19);
    xsi_process_wait(t20, 10000LL);
    *((char **)t3) = &&LAB22;
    goto LAB1;

LAB22:    t21 = (t1 + 6536);
    t22 = (t1 + 2680);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 128U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(32, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t1 + 6544);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB24;
    goto LAB1;

LAB24:    t19 = (t1 + 6544);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 144U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(33, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 6552);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB26;
    goto LAB1;

LAB26:    t19 = (t1 + 6552);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 160U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(34, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t1 + 6560);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB28;
    goto LAB1;

LAB28:    t19 = (t1 + 6560);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 176U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(35, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 6568);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB30;
    goto LAB1;

LAB30:    t19 = (t1 + 6568);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 192U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(36, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t1 + 6576);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB32;
    goto LAB1;

LAB32:    t19 = (t1 + 6576);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 208U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(37, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t1 + 6584);
    memset(t8, 0, 8);
    t10 = 1U;
    t11 = t10;
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t9);
    t11 = (t11 & t14);
    t12 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 | t10);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t17 | t11);
    t15 = (t2 + 56U);
    t18 = *((char **)t15);
    xsi_process_wait(t18, 10000LL);
    *((char **)t3) = &&LAB34;
    goto LAB1;

LAB34:    t19 = (t1 + 6584);
    t20 = (t1 + 2680);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 1);
    goto LAB4;

}

static void Always_40_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3720);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 2520);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2520);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_42_1(char *t0)
{
    char *t1;
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
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 4160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);

LAB4:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3968);
    xsi_process_wait(t2, 2000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3968);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB9:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB11:    if (t13 != 0)
        goto LAB12;

LAB7:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB8:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB15:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB17:    if (t13 != 0)
        goto LAB18;

LAB13:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB14:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB21:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB23:    if (t13 != 0)
        goto LAB24;

LAB19:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB20:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB27:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB29:    if (t13 != 0)
        goto LAB30;

LAB25:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB26:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB33:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB35:    if (t13 != 0)
        goto LAB36;

LAB31:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB32:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB39:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB41:    if (t13 != 0)
        goto LAB42;

LAB37:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB38:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB45:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB47:    if (t13 != 0)
        goto LAB48;

LAB43:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB44:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB51:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB53:    if (t13 != 0)
        goto LAB54;

LAB49:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB50:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB57:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB59:    if (t13 != 0)
        goto LAB60;

LAB55:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB56:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB63:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB65:    if (t13 != 0)
        goto LAB66;

LAB61:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB62:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3968);
    t3 = (t0 + 848);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB69:    t5 = (t0 + 4064);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB71:    if (t13 != 0)
        goto LAB72;

LAB67:    t6 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t6);

LAB68:    t14 = (t0 + 4064);
    t15 = *((char **)t14);
    t14 = (t0 + 848);
    t16 = (t0 + 3968);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(69, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB10:;
LAB12:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB9;
    goto LAB1;

LAB16:;
LAB18:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB15;
    goto LAB1;

LAB22:;
LAB24:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB21;
    goto LAB1;

LAB28:;
LAB30:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB27;
    goto LAB1;

LAB34:;
LAB36:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB33;
    goto LAB1;

LAB40:;
LAB42:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB39;
    goto LAB1;

LAB46:;
LAB48:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB45;
    goto LAB1;

LAB52:;
LAB54:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB51;
    goto LAB1;

LAB58:;
LAB60:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB57;
    goto LAB1;

LAB64:;
LAB66:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB63;
    goto LAB1;

LAB70:;
LAB72:    t5 = (t0 + 4160U);
    *((char **)t5) = &&LAB69;
    goto LAB1;

}


extern void work_m_03023240660047001997_0750423891_init()
{
	static char *pe[] = {(void *)Always_40_0,(void *)Initial_42_1};
	static char *se[] = {(void *)sp_click};
	xsi_register_didat("work_m_03023240660047001997_0750423891", "isim/main_tb_isim_beh.exe.sim/work/m_03023240660047001997_0750423891.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
