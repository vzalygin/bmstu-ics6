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
static const char *ng0 = "/mnt/c/repos/bmstu-ics6/schemach/2sem/lab3/led_decode.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {129U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {207U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {146U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {134U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {204U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {164U, 0U};
static unsigned int ng13[] = {6U, 0U};
static unsigned int ng14[] = {160U, 0U};
static unsigned int ng15[] = {7U, 0U};
static unsigned int ng16[] = {143U, 0U};
static unsigned int ng17[] = {8U, 0U};
static unsigned int ng18[] = {128U, 0U};
static unsigned int ng19[] = {9U, 0U};
static unsigned int ng20[] = {132U, 0U};
static unsigned int ng21[] = {10U, 0U};
static unsigned int ng22[] = {136U, 0U};
static unsigned int ng23[] = {11U, 0U};
static unsigned int ng24[] = {224U, 0U};
static unsigned int ng25[] = {12U, 0U};
static unsigned int ng26[] = {177U, 0U};
static unsigned int ng27[] = {13U, 0U};
static unsigned int ng28[] = {194U, 0U};
static unsigned int ng29[] = {14U, 0U};
static unsigned int ng30[] = {176U, 0U};
static unsigned int ng31[] = {15U, 0U};
static unsigned int ng32[] = {184U, 0U};
static unsigned int ng33[] = {255U, 255U};



static void Always_5_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(5, ng0);
    t2 = (t0 + 2680);
    *((int *)t2) = 1;
    t3 = (t0 + 2392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(6, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB36;

LAB37:
LAB39:
LAB38:    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng33)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB40:    goto LAB2;

LAB6:    xsi_set_current_line(7, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1448);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 8);
    goto LAB40;

LAB8:    xsi_set_current_line(8, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB10:    xsi_set_current_line(9, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB12:    xsi_set_current_line(10, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB14:    xsi_set_current_line(11, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB16:    xsi_set_current_line(12, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB18:    xsi_set_current_line(13, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB20:    xsi_set_current_line(14, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB22:    xsi_set_current_line(15, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB24:    xsi_set_current_line(16, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB26:    xsi_set_current_line(17, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB28:    xsi_set_current_line(18, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB30:    xsi_set_current_line(19, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB32:    xsi_set_current_line(20, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB34:    xsi_set_current_line(21, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

LAB36:    xsi_set_current_line(22, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB40;

}


extern void work_m_06447966657262419338_3755466038_init()
{
	static char *pe[] = {(void *)Always_5_0};
	xsi_register_didat("work_m_06447966657262419338_3755466038", "isim/main_tb_isim_beh.exe.sim/work/m_06447966657262419338_3755466038.didat");
	xsi_register_executes(pe);
}
