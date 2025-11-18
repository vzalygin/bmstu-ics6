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
static const char *ng0 = "/home/smag/Study/bmstu/6term/EVM/HW/Project/HW/fsm_sequence_checker.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {5U, 0U};
static int ng8[] = {0, 0};
static int ng9[] = {1, 0};



static void Always_66_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 9048);
    *((int *)t2) = 1;
    t3 = (t0 + 7272);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4408);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(68, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4408);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_74_1(char *t0)
{
    char t6[8];
    char t20[8];
    char t28[8];
    char t74[8];
    char t88[8];
    char t95[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    int t119;
    int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;

LAB0:    t1 = (t0 + 7488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 9064);
    *((int *)t2) = 1;
    t3 = (t0 + 7520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);

LAB5:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 2888U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t28, t6, 8);

LAB12:    t60 = (t28 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB20;

LAB21:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 5048);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t19);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t21) != 0)
        goto LAB15;

LAB16:    t29 = *((unsigned int *)t6);
    t30 = *((unsigned int *)t20);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t32 = (t6 + 4);
    t33 = (t20 + 4);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t32);
    t36 = *((unsigned int *)t33);
    t37 = (t35 | t36);
    *((unsigned int *)t34) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t20) = 1;
    goto LAB16;

LAB15:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB16;

LAB17:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t28) = (t40 | t41);
    t42 = (t6 + 4);
    t43 = (t20 + 4);
    t44 = *((unsigned int *)t6);
    t45 = (~(t44));
    t46 = *((unsigned int *)t42);
    t47 = (~(t46));
    t48 = *((unsigned int *)t20);
    t49 = (~(t48));
    t50 = *((unsigned int *)t43);
    t51 = (~(t50));
    t52 = (t45 & t47);
    t53 = (t49 & t51);
    t54 = (~(t52));
    t55 = (~(t53));
    t56 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t56 & t54);
    t57 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB19;

LAB20:    xsi_set_current_line(75, ng0);

LAB23:    xsi_set_current_line(76, ng0);
    t66 = (t0 + 4408);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);

LAB24:    t69 = ((char*)((ng1)));
    t70 = xsi_vlog_unsigned_case_compare(t68, 3, t69, 3);
    if (t70 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng2)));
    t52 = xsi_vlog_unsigned_case_compare(t68, 3, t2, 3);
    if (t52 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng3)));
    t52 = xsi_vlog_unsigned_case_compare(t68, 3, t2, 3);
    if (t52 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng5)));
    t52 = xsi_vlog_unsigned_case_compare(t68, 3, t2, 3);
    if (t52 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng7)));
    t52 = xsi_vlog_unsigned_case_compare(t68, 3, t2, 3);
    if (t52 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng4)));
    t52 = xsi_vlog_unsigned_case_compare(t68, 3, t2, 3);
    if (t52 == 1)
        goto LAB35;

LAB36:
LAB38:
LAB37:    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB39:    goto LAB22;

LAB25:    xsi_set_current_line(77, ng0);

LAB40:    xsi_set_current_line(78, ng0);
    t71 = (t0 + 5048);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    memset(t74, 0, 8);
    t75 = (t73 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t73);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t75) != 0)
        goto LAB43;

LAB44:    t82 = (t74 + 4);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t82);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB45;

LAB46:    memcpy(t95, t74, 8);

LAB47:    t127 = (t95 + 4);
    t128 = *((unsigned int *)t127);
    t129 = (~(t128));
    t130 = *((unsigned int *)t95);
    t131 = (t130 & t129);
    t132 = (t131 != 0);
    if (t132 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB57:    goto LAB39;

LAB27:    xsi_set_current_line(84, ng0);

LAB58:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 5048);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t12) != 0)
        goto LAB61;

LAB62:    t17 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t17);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB63;

LAB64:    memcpy(t28, t6, 8);

LAB65:    t43 = (t28 + 4);
    t61 = *((unsigned int *)t43);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB73;

LAB74:    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB75:    goto LAB39;

LAB29:    xsi_set_current_line(91, ng0);

LAB76:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 5048);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t12) != 0)
        goto LAB79;

LAB80:    t17 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t17);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB81;

LAB82:    memcpy(t28, t6, 8);

LAB83:    t43 = (t28 + 4);
    t61 = *((unsigned int *)t43);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB93:    goto LAB39;

LAB31:    xsi_set_current_line(98, ng0);

LAB94:    xsi_set_current_line(99, ng0);
    t3 = (t0 + 5048);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t12) != 0)
        goto LAB97;

LAB98:    t17 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t17);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB99;

LAB100:    memcpy(t28, t6, 8);

LAB101:    t43 = (t28 + 4);
    t61 = *((unsigned int *)t43);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB109;

LAB110:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB112;

LAB113:    if (*((unsigned int *)t2) != 0)
        goto LAB114;

LAB115:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB116;

LAB117:    memcpy(t74, t6, 8);

LAB118:    t67 = (t74 + 4);
    t85 = *((unsigned int *)t67);
    t89 = (~(t85));
    t90 = *((unsigned int *)t74);
    t91 = (t90 & t89);
    t92 = (t91 != 0);
    if (t92 > 0)
        goto LAB130;

LAB131:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB132:
LAB111:    goto LAB39;

LAB33:    xsi_set_current_line(107, ng0);

LAB133:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB39;

LAB35:    xsi_set_current_line(111, ng0);

LAB134:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB39;

LAB41:    *((unsigned int *)t74) = 1;
    goto LAB44;

LAB43:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB44;

LAB45:    t86 = (t0 + 3048U);
    t87 = *((char **)t86);
    memset(t88, 0, 8);
    t86 = (t87 + 4);
    t89 = *((unsigned int *)t86);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (t91 & t90);
    t93 = (t92 & 1U);
    if (t93 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t86) != 0)
        goto LAB50;

LAB51:    t96 = *((unsigned int *)t74);
    t97 = *((unsigned int *)t88);
    t98 = (t96 & t97);
    *((unsigned int *)t95) = t98;
    t99 = (t74 + 4);
    t100 = (t88 + 4);
    t101 = (t95 + 4);
    t102 = *((unsigned int *)t99);
    t103 = *((unsigned int *)t100);
    t104 = (t102 | t103);
    *((unsigned int *)t101) = t104;
    t105 = *((unsigned int *)t101);
    t106 = (t105 != 0);
    if (t106 == 1)
        goto LAB52;

LAB53:
LAB54:    goto LAB47;

LAB48:    *((unsigned int *)t88) = 1;
    goto LAB51;

LAB50:    t94 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t94) = 1;
    goto LAB51;

LAB52:    t107 = *((unsigned int *)t95);
    t108 = *((unsigned int *)t101);
    *((unsigned int *)t95) = (t107 | t108);
    t109 = (t74 + 4);
    t110 = (t88 + 4);
    t111 = *((unsigned int *)t74);
    t112 = (~(t111));
    t113 = *((unsigned int *)t109);
    t114 = (~(t113));
    t115 = *((unsigned int *)t88);
    t116 = (~(t115));
    t117 = *((unsigned int *)t110);
    t118 = (~(t117));
    t119 = (t112 & t114);
    t120 = (t116 & t118);
    t121 = (~(t119));
    t122 = (~(t120));
    t123 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t123 & t121);
    t124 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t124 & t122);
    t125 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t125 & t121);
    t126 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t126 & t122);
    goto LAB54;

LAB55:    xsi_set_current_line(79, ng0);
    t133 = ((char*)((ng2)));
    t134 = (t0 + 4568);
    xsi_vlogvar_assign_value(t134, t133, 0, 0, 3);
    goto LAB57;

LAB59:    *((unsigned int *)t6) = 1;
    goto LAB62;

LAB61:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB62;

LAB63:    t18 = (t0 + 3208U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t19);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t18) != 0)
        goto LAB68;

LAB69:    t29 = *((unsigned int *)t6);
    t30 = *((unsigned int *)t20);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t27 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t28 + 4);
    t35 = *((unsigned int *)t27);
    t36 = *((unsigned int *)t32);
    t37 = (t35 | t36);
    *((unsigned int *)t33) = t37;
    t38 = *((unsigned int *)t33);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB70;

LAB71:
LAB72:    goto LAB65;

LAB66:    *((unsigned int *)t20) = 1;
    goto LAB69;

LAB68:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB69;

LAB70:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t40 | t41);
    t34 = (t6 + 4);
    t42 = (t20 + 4);
    t44 = *((unsigned int *)t6);
    t45 = (~(t44));
    t46 = *((unsigned int *)t34);
    t47 = (~(t46));
    t48 = *((unsigned int *)t20);
    t49 = (~(t48));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t53 = (t45 & t47);
    t70 = (t49 & t51);
    t54 = (~(t53));
    t55 = (~(t70));
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB72;

LAB73:    xsi_set_current_line(86, ng0);
    t60 = ((char*)((ng3)));
    t66 = (t0 + 4568);
    xsi_vlogvar_assign_value(t66, t60, 0, 0, 3);
    goto LAB75;

LAB77:    *((unsigned int *)t6) = 1;
    goto LAB80;

LAB79:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB80;

LAB81:    t18 = (t0 + 3368U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t19);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t18) != 0)
        goto LAB86;

LAB87:    t29 = *((unsigned int *)t6);
    t30 = *((unsigned int *)t20);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t27 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t28 + 4);
    t35 = *((unsigned int *)t27);
    t36 = *((unsigned int *)t32);
    t37 = (t35 | t36);
    *((unsigned int *)t33) = t37;
    t38 = *((unsigned int *)t33);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB88;

LAB89:
LAB90:    goto LAB83;

LAB84:    *((unsigned int *)t20) = 1;
    goto LAB87;

LAB86:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB87;

LAB88:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t40 | t41);
    t34 = (t6 + 4);
    t42 = (t20 + 4);
    t44 = *((unsigned int *)t6);
    t45 = (~(t44));
    t46 = *((unsigned int *)t34);
    t47 = (~(t46));
    t48 = *((unsigned int *)t20);
    t49 = (~(t48));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t53 = (t45 & t47);
    t70 = (t49 & t51);
    t54 = (~(t53));
    t55 = (~(t70));
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB90;

LAB91:    xsi_set_current_line(93, ng0);
    t60 = ((char*)((ng5)));
    t66 = (t0 + 4568);
    xsi_vlogvar_assign_value(t66, t60, 0, 0, 3);
    goto LAB93;

LAB95:    *((unsigned int *)t6) = 1;
    goto LAB98;

LAB97:    t13 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB98;

LAB99:    t18 = (t0 + 3208U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t19);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t18) != 0)
        goto LAB104;

LAB105:    t29 = *((unsigned int *)t6);
    t30 = *((unsigned int *)t20);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t27 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t28 + 4);
    t35 = *((unsigned int *)t27);
    t36 = *((unsigned int *)t32);
    t37 = (t35 | t36);
    *((unsigned int *)t33) = t37;
    t38 = *((unsigned int *)t33);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB106;

LAB107:
LAB108:    goto LAB101;

LAB102:    *((unsigned int *)t20) = 1;
    goto LAB105;

LAB104:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB105;

LAB106:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t40 | t41);
    t34 = (t6 + 4);
    t42 = (t20 + 4);
    t44 = *((unsigned int *)t6);
    t45 = (~(t44));
    t46 = *((unsigned int *)t34);
    t47 = (~(t46));
    t48 = *((unsigned int *)t20);
    t49 = (~(t48));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t53 = (t45 & t47);
    t70 = (t49 & t51);
    t54 = (~(t53));
    t55 = (~(t70));
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB108;

LAB109:    xsi_set_current_line(100, ng0);
    t60 = ((char*)((ng3)));
    t66 = (t0 + 4568);
    xsi_vlogvar_assign_value(t66, t60, 0, 0, 3);
    goto LAB111;

LAB112:    *((unsigned int *)t6) = 1;
    goto LAB115;

LAB114:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB115;

LAB116:    t12 = (t0 + 4728);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    t18 = ((char*)((ng6)));
    memset(t20, 0, 8);
    t19 = (t17 + 4);
    t21 = (t18 + 4);
    t22 = *((unsigned int *)t17);
    t23 = *((unsigned int *)t18);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t19);
    t26 = *((unsigned int *)t21);
    t29 = (t25 ^ t26);
    t30 = (t24 | t29);
    t31 = *((unsigned int *)t19);
    t35 = *((unsigned int *)t21);
    t36 = (t31 | t35);
    t37 = (~(t36));
    t38 = (t30 & t37);
    if (t38 != 0)
        goto LAB122;

LAB119:    if (t36 != 0)
        goto LAB121;

LAB120:    *((unsigned int *)t20) = 1;

LAB122:    memset(t28, 0, 8);
    t32 = (t20 + 4);
    t39 = *((unsigned int *)t32);
    t40 = (~(t39));
    t41 = *((unsigned int *)t20);
    t44 = (t41 & t40);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB123;

LAB124:    if (*((unsigned int *)t32) != 0)
        goto LAB125;

LAB126:    t46 = *((unsigned int *)t6);
    t47 = *((unsigned int *)t28);
    t48 = (t46 & t47);
    *((unsigned int *)t74) = t48;
    t34 = (t6 + 4);
    t42 = (t28 + 4);
    t43 = (t74 + 4);
    t49 = *((unsigned int *)t34);
    t50 = *((unsigned int *)t42);
    t51 = (t49 | t50);
    *((unsigned int *)t43) = t51;
    t54 = *((unsigned int *)t43);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB127;

LAB128:
LAB129:    goto LAB118;

LAB121:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB122;

LAB123:    *((unsigned int *)t28) = 1;
    goto LAB126;

LAB125:    t33 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB126;

LAB127:    t56 = *((unsigned int *)t74);
    t57 = *((unsigned int *)t43);
    *((unsigned int *)t74) = (t56 | t57);
    t60 = (t6 + 4);
    t66 = (t28 + 4);
    t58 = *((unsigned int *)t6);
    t59 = (~(t58));
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (~(t63));
    t65 = *((unsigned int *)t66);
    t76 = (~(t65));
    t52 = (t59 & t62);
    t53 = (t64 & t76);
    t77 = (~(t52));
    t78 = (~(t53));
    t79 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t79 & t77);
    t80 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t80 & t78);
    t83 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t83 & t77);
    t84 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t84 & t78);
    goto LAB129;

LAB130:    xsi_set_current_line(102, ng0);
    t69 = ((char*)((ng7)));
    t71 = (t0 + 4568);
    xsi_vlogvar_assign_value(t71, t69, 0, 0, 3);
    goto LAB132;

}

static void Always_121_2(char *t0)
{
    char t6[8];
    char t21[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;

LAB0:    t1 = (t0 + 7736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 9080);
    *((int *)t2) = 1;
    t3 = (t0 + 7768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(121, ng0);

LAB5:    xsi_set_current_line(122, ng0);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB10;

LAB11:    memcpy(t29, t6, 8);

LAB12:    t57 = (t29 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t29);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(127, ng0);

LAB24:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 12, t5, 32);
    t12 = (t0 + 4888);
    xsi_vlogvar_wait_assign_value(t12, t6, 0, 0, 12, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 4888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1424);
    t12 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t13);
    t23 = (t16 | t17);
    t24 = (~(t23));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB28;

LAB25:    if (t23 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t6) = 1;

LAB28:    t19 = (t6 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t30 = *((unsigned int *)t6);
    t31 = (t30 & t27);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB31:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 4888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1288);
    t12 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t13);
    t23 = (t16 | t17);
    t24 = (~(t23));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB36;

LAB33:    if (t23 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t6) = 1;

LAB36:    t19 = (t6 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t30 = *((unsigned int *)t6);
    t31 = (t30 & t27);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB39:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t18 = (t0 + 5368);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t22 = (t20 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t20);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t22) != 0)
        goto LAB15;

LAB16:    t30 = *((unsigned int *)t6);
    t31 = *((unsigned int *)t21);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = (t6 + 4);
    t34 = (t21 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t21) = 1;
    goto LAB16;

LAB15:    t28 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB16;

LAB17:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    t43 = (t6 + 4);
    t44 = (t21 + 4);
    t45 = *((unsigned int *)t43);
    t46 = (~(t45));
    t47 = *((unsigned int *)t6);
    t48 = (t47 & t46);
    t49 = *((unsigned int *)t44);
    t50 = (~(t49));
    t51 = *((unsigned int *)t21);
    t52 = (t51 & t50);
    t53 = (~(t48));
    t54 = (~(t52));
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t53);
    t56 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t56 & t54);
    goto LAB19;

LAB20:    xsi_set_current_line(122, ng0);

LAB23:    xsi_set_current_line(123, ng0);
    t63 = ((char*)((ng8)));
    t64 = (t0 + 4888);
    xsi_vlogvar_wait_assign_value(t64, t63, 0, 0, 12, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB22;

LAB27:    t18 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(130, ng0);

LAB32:    xsi_set_current_line(130, ng0);
    t20 = ((char*)((ng9)));
    t22 = (t0 + 5048);
    xsi_vlogvar_wait_assign_value(t22, t20, 0, 0, 1, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB31;

LAB35:    t18 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(133, ng0);
    t20 = ((char*)((ng9)));
    t22 = (t0 + 5208);
    xsi_vlogvar_wait_assign_value(t22, t20, 0, 0, 1, 0LL);
    goto LAB39;

}

static void Always_139_3(char *t0)
{
    char t6[8];
    char t21[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;

LAB0:    t1 = (t0 + 7984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 9096);
    *((int *)t2) = 1;
    t3 = (t0 + 8016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(139, ng0);

LAB5:    xsi_set_current_line(140, ng0);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB10;

LAB11:    memcpy(t29, t6, 8);

LAB12:    t57 = (t29 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t29);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(145, ng0);

LAB24:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 5528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 12, t5, 32);
    t12 = (t0 + 5528);
    xsi_vlogvar_wait_assign_value(t12, t6, 0, 0, 12, 0LL);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 5528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1696);
    t12 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t13);
    t23 = (t16 | t17);
    t24 = (~(t23));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB28;

LAB25:    if (t23 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t6) = 1;

LAB28:    t19 = (t6 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t30 = *((unsigned int *)t6);
    t31 = (t30 & t27);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB31:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 5528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1560);
    t12 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t13);
    t23 = (t16 | t17);
    t24 = (~(t23));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB35;

LAB32:    if (t23 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t6) = 1;

LAB35:    t19 = (t6 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t30 = *((unsigned int *)t6);
    t31 = (t30 & t27);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB38:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t18 = (t0 + 6008);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t22 = (t20 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t20);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t22) != 0)
        goto LAB15;

LAB16:    t30 = *((unsigned int *)t6);
    t31 = *((unsigned int *)t21);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = (t6 + 4);
    t34 = (t21 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t21) = 1;
    goto LAB16;

LAB15:    t28 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB16;

LAB17:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    t43 = (t6 + 4);
    t44 = (t21 + 4);
    t45 = *((unsigned int *)t43);
    t46 = (~(t45));
    t47 = *((unsigned int *)t6);
    t48 = (t47 & t46);
    t49 = *((unsigned int *)t44);
    t50 = (~(t49));
    t51 = *((unsigned int *)t21);
    t52 = (t51 & t50);
    t53 = (~(t48));
    t54 = (~(t52));
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t53);
    t56 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t56 & t54);
    goto LAB19;

LAB20:    xsi_set_current_line(140, ng0);

LAB23:    xsi_set_current_line(141, ng0);
    t63 = ((char*)((ng8)));
    t64 = (t0 + 5528);
    xsi_vlogvar_wait_assign_value(t64, t63, 0, 0, 12, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB22;

LAB27:    t18 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(148, ng0);
    t20 = ((char*)((ng9)));
    t22 = (t0 + 5688);
    xsi_vlogvar_wait_assign_value(t22, t20, 0, 0, 1, 0LL);
    goto LAB31;

LAB34:    t18 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(151, ng0);
    t20 = ((char*)((ng9)));
    t22 = (t0 + 5848);
    xsi_vlogvar_wait_assign_value(t22, t20, 0, 0, 1, 0LL);
    goto LAB38;

}

static void Cont_157_4(char *t0)
{
    char t6[8];
    char t22[8];
    char t39[8];
    char t55[8];
    char t63[8];
    char t91[8];
    char t108[8];
    char t124[8];
    char t132[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    char *t162;
    char *t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    unsigned int t168;
    unsigned int t169;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;

LAB0:    t1 = (t0 + 8232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    memcpy(t63, t22, 8);

LAB14:    memset(t91, 0, 8);
    t92 = (t63 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t63);
    t96 = (t95 & t94);
    t97 = (t96 & 1U);
    if (t97 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t92) != 0)
        goto LAB28;

LAB29:    t99 = (t91 + 4);
    t100 = *((unsigned int *)t91);
    t101 = (!(t100));
    t102 = *((unsigned int *)t99);
    t103 = (t101 || t102);
    if (t103 > 0)
        goto LAB30;

LAB31:    memcpy(t132, t91, 8);

LAB32:    t160 = (t0 + 9224);
    t161 = (t160 + 56U);
    t162 = *((char **)t161);
    t163 = (t162 + 56U);
    t164 = *((char **)t163);
    memset(t164, 0, 8);
    t165 = 1U;
    t166 = t165;
    t167 = (t132 + 4);
    t168 = *((unsigned int *)t132);
    t165 = (t165 & t168);
    t169 = *((unsigned int *)t167);
    t166 = (t166 & t169);
    t170 = (t164 + 4);
    t171 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t171 | t165);
    t172 = *((unsigned int *)t170);
    *((unsigned int *)t170) = (t172 | t166);
    xsi_driver_vfirst_trans(t160, 0, 0);
    t173 = (t0 + 9112);
    *((int *)t173) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 4408);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng4)));
    memset(t39, 0, 8);
    t40 = (t37 + 4);
    t41 = (t38 + 4);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB18;

LAB15:    if (t51 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t39) = 1;

LAB18:    memset(t55, 0, 8);
    t56 = (t39 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t56) != 0)
        goto LAB21;

LAB22:    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t55);
    t66 = (t64 | t65);
    *((unsigned int *)t63) = t66;
    t67 = (t22 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t54 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t55) = 1;
    goto LAB22;

LAB21:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB22;

LAB23:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t22 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (~(t79));
    t81 = *((unsigned int *)t22);
    t82 = (t81 & t80);
    t83 = *((unsigned int *)t78);
    t84 = (~(t83));
    t85 = *((unsigned int *)t55);
    t86 = (t85 & t84);
    t87 = (~(t82));
    t88 = (~(t86));
    t89 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t89 & t87);
    t90 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t90 & t88);
    goto LAB25;

LAB26:    *((unsigned int *)t91) = 1;
    goto LAB29;

LAB28:    t98 = (t91 + 4);
    *((unsigned int *)t91) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB29;

LAB30:    t104 = (t0 + 4408);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    t107 = ((char*)((ng7)));
    memset(t108, 0, 8);
    t109 = (t106 + 4);
    t110 = (t107 + 4);
    t111 = *((unsigned int *)t106);
    t112 = *((unsigned int *)t107);
    t113 = (t111 ^ t112);
    t114 = *((unsigned int *)t109);
    t115 = *((unsigned int *)t110);
    t116 = (t114 ^ t115);
    t117 = (t113 | t116);
    t118 = *((unsigned int *)t109);
    t119 = *((unsigned int *)t110);
    t120 = (t118 | t119);
    t121 = (~(t120));
    t122 = (t117 & t121);
    if (t122 != 0)
        goto LAB36;

LAB33:    if (t120 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t108) = 1;

LAB36:    memset(t124, 0, 8);
    t125 = (t108 + 4);
    t126 = *((unsigned int *)t125);
    t127 = (~(t126));
    t128 = *((unsigned int *)t108);
    t129 = (t128 & t127);
    t130 = (t129 & 1U);
    if (t130 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t125) != 0)
        goto LAB39;

LAB40:    t133 = *((unsigned int *)t91);
    t134 = *((unsigned int *)t124);
    t135 = (t133 | t134);
    *((unsigned int *)t132) = t135;
    t136 = (t91 + 4);
    t137 = (t124 + 4);
    t138 = (t132 + 4);
    t139 = *((unsigned int *)t136);
    t140 = *((unsigned int *)t137);
    t141 = (t139 | t140);
    *((unsigned int *)t138) = t141;
    t142 = *((unsigned int *)t138);
    t143 = (t142 != 0);
    if (t143 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB32;

LAB35:    t123 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t123) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t124) = 1;
    goto LAB40;

LAB39:    t131 = (t124 + 4);
    *((unsigned int *)t124) = 1;
    *((unsigned int *)t131) = 1;
    goto LAB40;

LAB41:    t144 = *((unsigned int *)t132);
    t145 = *((unsigned int *)t138);
    *((unsigned int *)t132) = (t144 | t145);
    t146 = (t91 + 4);
    t147 = (t124 + 4);
    t148 = *((unsigned int *)t146);
    t149 = (~(t148));
    t150 = *((unsigned int *)t91);
    t151 = (t150 & t149);
    t152 = *((unsigned int *)t147);
    t153 = (~(t152));
    t154 = *((unsigned int *)t124);
    t155 = (t154 & t153);
    t156 = (~(t151));
    t157 = (~(t155));
    t158 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t158 & t156);
    t159 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t159 & t157);
    goto LAB43;

}

static void Always_160_5(char *t0)
{
    char t6[8];
    char t20[8];
    char t27[8];
    char t80[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t81;

LAB0:    t1 = (t0 + 8480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 9128);
    *((int *)t2) = 1;
    t3 = (t0 + 8512);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(160, ng0);

LAB5:    xsi_set_current_line(161, ng0);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB10;

LAB11:    memcpy(t27, t6, 8);

LAB12:    t55 = (t27 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t27);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 5048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t5) != 0)
        goto LAB26;

LAB27:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB28;

LAB29:    memcpy(t27, t6, 8);

LAB30:    t55 = (t27 + 4);
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t63 = *((unsigned int *)t27);
    t64 = (t63 & t60);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB38;

LAB39:
LAB40:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t18 = (t0 + 3688U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t21 = *((unsigned int *)t18);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t18) != 0)
        goto LAB15;

LAB16:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t20);
    t30 = (t28 | t29);
    *((unsigned int *)t27) = t30;
    t31 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t20) = 1;
    goto LAB16;

LAB15:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB16;

LAB17:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t6 + 4);
    t42 = (t20 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (~(t43));
    t45 = *((unsigned int *)t6);
    t46 = (t45 & t44);
    t47 = *((unsigned int *)t42);
    t48 = (~(t47));
    t49 = *((unsigned int *)t20);
    t50 = (t49 & t48);
    t51 = (~(t46));
    t52 = (~(t50));
    t53 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t53 & t51);
    t54 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t54 & t52);
    goto LAB19;

LAB20:    xsi_set_current_line(161, ng0);

LAB23:    xsi_set_current_line(162, ng0);
    t61 = ((char*)((ng8)));
    t62 = (t0 + 4728);
    xsi_vlogvar_wait_assign_value(t62, t61, 0, 0, 3, 0LL);
    goto LAB22;

LAB24:    *((unsigned int *)t6) = 1;
    goto LAB27;

LAB26:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB27;

LAB28:    t18 = (t0 + 2888U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t17 = *((unsigned int *)t18);
    t21 = (~(t17));
    t22 = *((unsigned int *)t19);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t18) != 0)
        goto LAB33;

LAB34:    t25 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t20);
    t29 = (t25 & t28);
    *((unsigned int *)t27) = t29;
    t31 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t27 + 4);
    t30 = *((unsigned int *)t31);
    t34 = *((unsigned int *)t32);
    t35 = (t30 | t34);
    *((unsigned int *)t33) = t35;
    t36 = *((unsigned int *)t33);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB30;

LAB31:    *((unsigned int *)t20) = 1;
    goto LAB34;

LAB33:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB34;

LAB35:    t38 = *((unsigned int *)t27);
    t39 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t38 | t39);
    t41 = (t6 + 4);
    t42 = (t20 + 4);
    t40 = *((unsigned int *)t6);
    t43 = (~(t40));
    t44 = *((unsigned int *)t41);
    t45 = (~(t44));
    t47 = *((unsigned int *)t20);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t51 = (~(t49));
    t46 = (t43 & t45);
    t50 = (t48 & t51);
    t52 = (~(t46));
    t53 = (~(t50));
    t54 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t54 & t52);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t53);
    t57 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t57 & t52);
    t58 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t58 & t53);
    goto LAB37;

LAB38:    xsi_set_current_line(163, ng0);

LAB41:    xsi_set_current_line(164, ng0);
    t61 = (t0 + 4408);
    t62 = (t61 + 56U);
    t66 = *((char **)t62);

LAB42:    t67 = ((char*)((ng5)));
    t68 = xsi_vlog_unsigned_case_compare(t66, 3, t67, 3);
    if (t68 == 1)
        goto LAB43;

LAB44:
LAB46:
LAB45:    xsi_set_current_line(167, ng0);

LAB51:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 4728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4728);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB47:    goto LAB40;

LAB43:    xsi_set_current_line(165, ng0);
    t69 = (t0 + 3208U);
    t70 = *((char **)t69);
    t69 = (t70 + 4);
    t71 = *((unsigned int *)t69);
    t72 = (~(t71));
    t73 = *((unsigned int *)t70);
    t74 = (t73 & t72);
    t75 = (t74 != 0);
    if (t75 > 0)
        goto LAB48;

LAB49:
LAB50:    goto LAB47;

LAB48:    xsi_set_current_line(166, ng0);
    t76 = (t0 + 4728);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    t79 = ((char*)((ng9)));
    memset(t80, 0, 8);
    xsi_vlog_unsigned_add(t80, 32, t78, 3, t79, 32);
    t81 = (t0 + 4728);
    xsi_vlogvar_wait_assign_value(t81, t80, 0, 0, 3, 0LL);
    goto LAB50;

}

static void Always_176_6(char *t0)
{
    char t13[8];
    char t22[8];
    char t37[8];
    char t45[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    int t69;
    int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;

LAB0:    t1 = (t0 + 8728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(176, ng0);
    t2 = (t0 + 9144);
    *((int *)t2) = 1;
    t3 = (t0 + 8760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(176, ng0);

LAB5:    xsi_set_current_line(177, ng0);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(180, ng0);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB13;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB13:    memset(t22, 0, 8);
    t23 = (t13 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t23) != 0)
        goto LAB16;

LAB17:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB18;

LAB19:    memcpy(t45, t22, 8);

LAB20:    t77 = (t45 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t45);
    t81 = (t80 & t79);
    t82 = (t81 != 0);
    if (t82 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(183, ng0);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB35;

LAB32:    if (t18 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t13) = 1;

LAB35:    memset(t22, 0, 8);
    t23 = (t13 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t23) != 0)
        goto LAB38;

LAB39:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB40;

LAB41:    memcpy(t45, t22, 8);

LAB42:    t77 = (t45 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t45);
    t81 = (t80 & t79);
    t82 = (t81 != 0);
    if (t82 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(186, ng0);

LAB54:    xsi_set_current_line(187, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB52:
LAB30:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(177, ng0);

LAB9:    xsi_set_current_line(178, ng0);
    t11 = ((char*)((ng8)));
    t12 = (t0 + 4088);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(179, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    *((unsigned int *)t22) = 1;
    goto LAB17;

LAB16:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB17;

LAB18:    t34 = (t0 + 5848);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t36);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t38) != 0)
        goto LAB23;

LAB24:    t46 = *((unsigned int *)t22);
    t47 = *((unsigned int *)t37);
    t48 = (t46 & t47);
    *((unsigned int *)t45) = t48;
    t49 = (t22 + 4);
    t50 = (t37 + 4);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t49);
    t53 = *((unsigned int *)t50);
    t54 = (t52 | t53);
    *((unsigned int *)t51) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB20;

LAB21:    *((unsigned int *)t37) = 1;
    goto LAB24;

LAB23:    t44 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB24;

LAB25:    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    *((unsigned int *)t45) = (t57 | t58);
    t59 = (t22 + 4);
    t60 = (t37 + 4);
    t61 = *((unsigned int *)t22);
    t62 = (~(t61));
    t63 = *((unsigned int *)t59);
    t64 = (~(t63));
    t65 = *((unsigned int *)t37);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (~(t67));
    t69 = (t62 & t64);
    t70 = (t66 & t68);
    t71 = (~(t69));
    t72 = (~(t70));
    t73 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t73 & t71);
    t74 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t74 & t72);
    t75 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t75 & t71);
    t76 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t76 & t72);
    goto LAB27;

LAB28:    xsi_set_current_line(180, ng0);

LAB31:    xsi_set_current_line(181, ng0);
    t83 = ((char*)((ng9)));
    t84 = (t0 + 4088);
    xsi_vlogvar_wait_assign_value(t84, t83, 0, 0, 1, 0LL);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB30;

LAB34:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t22) = 1;
    goto LAB39;

LAB38:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB39;

LAB40:    t34 = (t0 + 5848);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t36);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t38) != 0)
        goto LAB45;

LAB46:    t46 = *((unsigned int *)t22);
    t47 = *((unsigned int *)t37);
    t48 = (t46 & t47);
    *((unsigned int *)t45) = t48;
    t49 = (t22 + 4);
    t50 = (t37 + 4);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t49);
    t53 = *((unsigned int *)t50);
    t54 = (t52 | t53);
    *((unsigned int *)t51) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB42;

LAB43:    *((unsigned int *)t37) = 1;
    goto LAB46;

LAB45:    t44 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB46;

LAB47:    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    *((unsigned int *)t45) = (t57 | t58);
    t59 = (t22 + 4);
    t60 = (t37 + 4);
    t61 = *((unsigned int *)t22);
    t62 = (~(t61));
    t63 = *((unsigned int *)t59);
    t64 = (~(t63));
    t65 = *((unsigned int *)t37);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (~(t67));
    t69 = (t62 & t64);
    t70 = (t66 & t68);
    t71 = (~(t69));
    t72 = (~(t70));
    t73 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t73 & t71);
    t74 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t74 & t72);
    t75 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t75 & t71);
    t76 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t76 & t72);
    goto LAB49;

LAB50:    xsi_set_current_line(183, ng0);

LAB53:    xsi_set_current_line(184, ng0);
    t83 = ((char*)((ng8)));
    t84 = (t0 + 4088);
    xsi_vlogvar_wait_assign_value(t84, t83, 0, 0, 1, 0LL);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB52;

}


extern void work_m_00666078275340033487_2867291346_init()
{
	static char *pe[] = {(void *)Always_66_0,(void *)Always_74_1,(void *)Always_121_2,(void *)Always_139_3,(void *)Cont_157_4,(void *)Always_160_5,(void *)Always_176_6};
	xsi_register_didat("work_m_00666078275340033487_2867291346", "isim/fsm_sequence_checket_tb_isim_beh.exe.sim/work/m_00666078275340033487_2867291346.didat");
	xsi_register_executes(pe);
}
