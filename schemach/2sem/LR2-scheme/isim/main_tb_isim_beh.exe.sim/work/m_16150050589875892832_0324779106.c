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
static const char *ng0 = "/mnt/c/repos/bmstu-ics6/schemach/2sem/LR2-scheme/lab2_example.v";
static unsigned int ng1[] = {3U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {4, 0};



static void Cont_21_0(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6432);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 6240);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_23_1(char *t0)
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

LAB0:    t1 = (t0 + 4432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 6256);
    *((int *)t2) = 1;
    t3 = (t0 + 4464);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 1592U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2392U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(25, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3112);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    goto LAB7;

}

static void Cont_29_2(char *t0)
{
    char t5[8];
    char t14[8];
    char t18[8];
    char t44[8];
    char t76[8];
    char t80[8];
    char t109[8];
    char t118[8];
    char t150[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
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
    unsigned int t43;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    int t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t77;
    char *t78;
    char *t79;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    char *t108;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    int t142;
    int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;
    char *t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    char *t178;
    char *t179;
    char *t180;
    char *t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    char *t185;
    unsigned int t186;
    unsigned int t187;
    char *t188;
    unsigned int t189;
    unsigned int t190;
    char *t191;

LAB0:    t1 = (t0 + 4680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t15 = (t0 + 3112);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t19 = (t18 + 4);
    t20 = (t17 + 4);
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t19) = t26;
    memset(t14, 0, 8);
    t27 = (t18 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t18);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t27) == 0)
        goto LAB4;

LAB6:    t33 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t33) = 1;

LAB7:    t34 = (t14 + 4);
    t35 = (t18 + 4);
    t36 = *((unsigned int *)t18);
    t37 = (~(t36));
    *((unsigned int *)t14) = t37;
    *((unsigned int *)t34) = 0;
    if (*((unsigned int *)t35) != 0)
        goto LAB9;

LAB8:    t42 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t42 & 1U);
    t43 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t43 & 1U);
    t45 = *((unsigned int *)t5);
    t46 = *((unsigned int *)t14);
    t47 = (t45 & t46);
    *((unsigned int *)t44) = t47;
    t48 = (t5 + 4);
    t49 = (t14 + 4);
    t50 = (t44 + 4);
    t51 = *((unsigned int *)t48);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB10;

LAB11:
LAB12:    t77 = (t0 + 3112);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memset(t80, 0, 8);
    t81 = (t80 + 4);
    t82 = (t79 + 4);
    t83 = *((unsigned int *)t79);
    t84 = (t83 >> 1);
    t85 = (t84 & 1);
    *((unsigned int *)t80) = t85;
    t86 = *((unsigned int *)t82);
    t87 = (t86 >> 1);
    t88 = (t87 & 1);
    *((unsigned int *)t81) = t88;
    memset(t76, 0, 8);
    t89 = (t80 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t80);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t89) == 0)
        goto LAB13;

LAB15:    t95 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t95) = 1;

LAB16:    t96 = (t76 + 4);
    t97 = (t80 + 4);
    t98 = *((unsigned int *)t80);
    t99 = (~(t98));
    *((unsigned int *)t76) = t99;
    *((unsigned int *)t96) = 0;
    if (*((unsigned int *)t97) != 0)
        goto LAB18;

LAB17:    t104 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t104 & 1U);
    t105 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t105 & 1U);
    t106 = (t0 + 3112);
    t107 = (t106 + 56U);
    t108 = *((char **)t107);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t111 = (t108 + 4);
    t112 = *((unsigned int *)t108);
    t113 = (t112 >> 0);
    t114 = (t113 & 1);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t111);
    t116 = (t115 >> 0);
    t117 = (t116 & 1);
    *((unsigned int *)t110) = t117;
    t119 = *((unsigned int *)t76);
    t120 = *((unsigned int *)t109);
    t121 = (t119 & t120);
    *((unsigned int *)t118) = t121;
    t122 = (t76 + 4);
    t123 = (t109 + 4);
    t124 = (t118 + 4);
    t125 = *((unsigned int *)t122);
    t126 = *((unsigned int *)t123);
    t127 = (t125 | t126);
    *((unsigned int *)t124) = t127;
    t128 = *((unsigned int *)t124);
    t129 = (t128 != 0);
    if (t129 == 1)
        goto LAB19;

LAB20:
LAB21:    t151 = *((unsigned int *)t44);
    t152 = *((unsigned int *)t118);
    t153 = (t151 | t152);
    *((unsigned int *)t150) = t153;
    t154 = (t44 + 4);
    t155 = (t118 + 4);
    t156 = (t150 + 4);
    t157 = *((unsigned int *)t154);
    t158 = *((unsigned int *)t155);
    t159 = (t157 | t158);
    *((unsigned int *)t156) = t159;
    t160 = *((unsigned int *)t156);
    t161 = (t160 != 0);
    if (t161 == 1)
        goto LAB22;

LAB23:
LAB24:    t178 = (t0 + 6496);
    t179 = (t178 + 56U);
    t180 = *((char **)t179);
    t181 = (t180 + 56U);
    t182 = *((char **)t181);
    memset(t182, 0, 8);
    t183 = 1U;
    t184 = t183;
    t185 = (t150 + 4);
    t186 = *((unsigned int *)t150);
    t183 = (t183 & t186);
    t187 = *((unsigned int *)t185);
    t184 = (t184 & t187);
    t188 = (t182 + 4);
    t189 = *((unsigned int *)t182);
    *((unsigned int *)t182) = (t189 | t183);
    t190 = *((unsigned int *)t188);
    *((unsigned int *)t188) = (t190 | t184);
    xsi_driver_vfirst_trans(t178, 0, 0);
    t191 = (t0 + 6272);
    *((int *)t191) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t14) = 1;
    goto LAB7;

LAB9:    t38 = *((unsigned int *)t14);
    t39 = *((unsigned int *)t35);
    *((unsigned int *)t14) = (t38 | t39);
    t40 = *((unsigned int *)t34);
    t41 = *((unsigned int *)t35);
    *((unsigned int *)t34) = (t40 | t41);
    goto LAB8;

LAB10:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t44) = (t56 | t57);
    t58 = (t5 + 4);
    t59 = (t14 + 4);
    t60 = *((unsigned int *)t5);
    t61 = (~(t60));
    t62 = *((unsigned int *)t58);
    t63 = (~(t62));
    t64 = *((unsigned int *)t14);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (~(t66));
    t68 = (t61 & t63);
    t69 = (t65 & t67);
    t70 = (~(t68));
    t71 = (~(t69));
    t72 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t72 & t70);
    t73 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t73 & t71);
    t74 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t74 & t70);
    t75 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t75 & t71);
    goto LAB12;

LAB13:    *((unsigned int *)t76) = 1;
    goto LAB16;

LAB18:    t100 = *((unsigned int *)t76);
    t101 = *((unsigned int *)t97);
    *((unsigned int *)t76) = (t100 | t101);
    t102 = *((unsigned int *)t96);
    t103 = *((unsigned int *)t97);
    *((unsigned int *)t96) = (t102 | t103);
    goto LAB17;

LAB19:    t130 = *((unsigned int *)t118);
    t131 = *((unsigned int *)t124);
    *((unsigned int *)t118) = (t130 | t131);
    t132 = (t76 + 4);
    t133 = (t109 + 4);
    t134 = *((unsigned int *)t76);
    t135 = (~(t134));
    t136 = *((unsigned int *)t132);
    t137 = (~(t136));
    t138 = *((unsigned int *)t109);
    t139 = (~(t138));
    t140 = *((unsigned int *)t133);
    t141 = (~(t140));
    t142 = (t135 & t137);
    t143 = (t139 & t141);
    t144 = (~(t142));
    t145 = (~(t143));
    t146 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t146 & t144);
    t147 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t147 & t145);
    t148 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t148 & t144);
    t149 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t149 & t145);
    goto LAB21;

LAB22:    t162 = *((unsigned int *)t150);
    t163 = *((unsigned int *)t156);
    *((unsigned int *)t150) = (t162 | t163);
    t164 = (t44 + 4);
    t165 = (t118 + 4);
    t166 = *((unsigned int *)t164);
    t167 = (~(t166));
    t168 = *((unsigned int *)t44);
    t169 = (t168 & t167);
    t170 = *((unsigned int *)t165);
    t171 = (~(t170));
    t172 = *((unsigned int *)t118);
    t173 = (t172 & t171);
    t174 = (~(t169));
    t175 = (~(t173));
    t176 = *((unsigned int *)t156);
    *((unsigned int *)t156) = (t176 & t174);
    t177 = *((unsigned int *)t156);
    *((unsigned int *)t156) = (t177 & t175);
    goto LAB24;

}

static void Cont_30_3(char *t0)
{
    char t3[8];
    char t6[8];
    char *t1;
    char *t2;
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
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 4928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t7) = t14;
    memset(t3, 0, 8);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t6);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t15) == 0)
        goto LAB4;

LAB6:    t21 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t21) = 1;

LAB7:    t22 = (t3 + 4);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t6);
    t25 = (~(t24));
    *((unsigned int *)t3) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB9;

LAB8:    t30 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t30 & 1U);
    t31 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t31 & 1U);
    t32 = (t0 + 6560);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t36, 0, 8);
    t37 = 1U;
    t38 = t37;
    t39 = (t3 + 4);
    t40 = *((unsigned int *)t3);
    t37 = (t37 & t40);
    t41 = *((unsigned int *)t39);
    t38 = (t38 & t41);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t43 | t37);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t44 | t38);
    xsi_driver_vfirst_trans(t32, 0, 0);
    t45 = (t0 + 6288);
    *((int *)t45) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t26 = *((unsigned int *)t3);
    t27 = *((unsigned int *)t23);
    *((unsigned int *)t3) = (t26 | t27);
    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    goto LAB8;

}

static void Cont_32_4(char *t0)
{
    char t6[8];
    char t15[8];
    char t47[8];
    char t51[8];
    char t77[8];
    char t109[8];
    char t131[8];
    char t140[8];
    char t175[8];
    char t184[8];
    char t216[8];
    char t246[8];
    char t249[8];
    char t275[8];
    char t307[8];
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
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
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
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t129;
    char *t130;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    char *t144;
    char *t145;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    int t164;
    int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    char *t174;
    char *t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    char *t188;
    char *t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    char *t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    int t208;
    int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    char *t220;
    char *t221;
    char *t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    char *t230;
    char *t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    char *t244;
    char *t245;
    char *t247;
    char *t248;
    char *t250;
    char *t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    unsigned int t256;
    unsigned int t257;
    char *t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    char *t264;
    char *t265;
    char *t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t274;
    unsigned int t276;
    unsigned int t277;
    unsigned int t278;
    char *t279;
    char *t280;
    char *t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    unsigned int t287;
    unsigned int t288;
    char *t289;
    char *t290;
    unsigned int t291;
    unsigned int t292;
    unsigned int t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    int t299;
    int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    unsigned int t308;
    unsigned int t309;
    unsigned int t310;
    char *t311;
    char *t312;
    char *t313;
    unsigned int t314;
    unsigned int t315;
    unsigned int t316;
    unsigned int t317;
    unsigned int t318;
    unsigned int t319;
    unsigned int t320;
    char *t321;
    char *t322;
    unsigned int t323;
    unsigned int t324;
    unsigned int t325;
    int t326;
    unsigned int t327;
    unsigned int t328;
    unsigned int t329;
    int t330;
    unsigned int t331;
    unsigned int t332;
    unsigned int t333;
    unsigned int t334;
    char *t335;
    char *t336;
    char *t337;
    char *t338;
    char *t339;
    unsigned int t340;
    unsigned int t341;
    char *t342;
    unsigned int t343;
    unsigned int t344;
    char *t345;
    unsigned int t346;
    unsigned int t347;
    char *t348;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1912U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t7) = t14;
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t6);
    t18 = (t16 & t17);
    *((unsigned int *)t15) = t18;
    t19 = (t3 + 4);
    t20 = (t6 + 4);
    t21 = (t15 + 4);
    t22 = *((unsigned int *)t19);
    t23 = *((unsigned int *)t20);
    t24 = (t22 | t23);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB4;

LAB5:
LAB6:    t48 = (t0 + 3112);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    memset(t51, 0, 8);
    t52 = (t51 + 4);
    t53 = (t50 + 4);
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 0);
    t56 = (t55 & 1);
    *((unsigned int *)t51) = t56;
    t57 = *((unsigned int *)t53);
    t58 = (t57 >> 0);
    t59 = (t58 & 1);
    *((unsigned int *)t52) = t59;
    memset(t47, 0, 8);
    t60 = (t51 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t51);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t60) == 0)
        goto LAB7;

LAB9:    t66 = (t47 + 4);
    *((unsigned int *)t47) = 1;
    *((unsigned int *)t66) = 1;

LAB10:    t67 = (t47 + 4);
    t68 = (t51 + 4);
    t69 = *((unsigned int *)t51);
    t70 = (~(t69));
    *((unsigned int *)t47) = t70;
    *((unsigned int *)t67) = 0;
    if (*((unsigned int *)t68) != 0)
        goto LAB12;

LAB11:    t75 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t75 & 1U);
    t76 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t76 & 1U);
    t78 = *((unsigned int *)t15);
    t79 = *((unsigned int *)t47);
    t80 = (t78 & t79);
    *((unsigned int *)t77) = t80;
    t81 = (t15 + 4);
    t82 = (t47 + 4);
    t83 = (t77 + 4);
    t84 = *((unsigned int *)t81);
    t85 = *((unsigned int *)t82);
    t86 = (t84 | t85);
    *((unsigned int *)t83) = t86;
    t87 = *((unsigned int *)t83);
    t88 = (t87 != 0);
    if (t88 == 1)
        goto LAB13;

LAB14:
LAB15:    t110 = (t0 + 1912U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t111 + 4);
    t112 = *((unsigned int *)t110);
    t113 = (~(t112));
    t114 = *((unsigned int *)t111);
    t115 = (t114 & t113);
    t116 = (t115 & 1U);
    if (t116 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t110) == 0)
        goto LAB16;

LAB18:    t117 = (t109 + 4);
    *((unsigned int *)t109) = 1;
    *((unsigned int *)t117) = 1;

LAB19:    t118 = (t109 + 4);
    t119 = (t111 + 4);
    t120 = *((unsigned int *)t111);
    t121 = (~(t120));
    *((unsigned int *)t109) = t121;
    *((unsigned int *)t118) = 0;
    if (*((unsigned int *)t119) != 0)
        goto LAB21;

LAB20:    t126 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t126 & 1U);
    t127 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t127 & 1U);
    t128 = (t0 + 3112);
    t129 = (t128 + 56U);
    t130 = *((char **)t129);
    memset(t131, 0, 8);
    t132 = (t131 + 4);
    t133 = (t130 + 4);
    t134 = *((unsigned int *)t130);
    t135 = (t134 >> 1);
    t136 = (t135 & 1);
    *((unsigned int *)t131) = t136;
    t137 = *((unsigned int *)t133);
    t138 = (t137 >> 1);
    t139 = (t138 & 1);
    *((unsigned int *)t132) = t139;
    t141 = *((unsigned int *)t109);
    t142 = *((unsigned int *)t131);
    t143 = (t141 & t142);
    *((unsigned int *)t140) = t143;
    t144 = (t109 + 4);
    t145 = (t131 + 4);
    t146 = (t140 + 4);
    t147 = *((unsigned int *)t144);
    t148 = *((unsigned int *)t145);
    t149 = (t147 | t148);
    *((unsigned int *)t146) = t149;
    t150 = *((unsigned int *)t146);
    t151 = (t150 != 0);
    if (t151 == 1)
        goto LAB22;

LAB23:
LAB24:    t172 = (t0 + 3112);
    t173 = (t172 + 56U);
    t174 = *((char **)t173);
    memset(t175, 0, 8);
    t176 = (t175 + 4);
    t177 = (t174 + 4);
    t178 = *((unsigned int *)t174);
    t179 = (t178 >> 0);
    t180 = (t179 & 1);
    *((unsigned int *)t175) = t180;
    t181 = *((unsigned int *)t177);
    t182 = (t181 >> 0);
    t183 = (t182 & 1);
    *((unsigned int *)t176) = t183;
    t185 = *((unsigned int *)t140);
    t186 = *((unsigned int *)t175);
    t187 = (t185 & t186);
    *((unsigned int *)t184) = t187;
    t188 = (t140 + 4);
    t189 = (t175 + 4);
    t190 = (t184 + 4);
    t191 = *((unsigned int *)t188);
    t192 = *((unsigned int *)t189);
    t193 = (t191 | t192);
    *((unsigned int *)t190) = t193;
    t194 = *((unsigned int *)t190);
    t195 = (t194 != 0);
    if (t195 == 1)
        goto LAB25;

LAB26:
LAB27:    t217 = *((unsigned int *)t77);
    t218 = *((unsigned int *)t184);
    t219 = (t217 | t218);
    *((unsigned int *)t216) = t219;
    t220 = (t77 + 4);
    t221 = (t184 + 4);
    t222 = (t216 + 4);
    t223 = *((unsigned int *)t220);
    t224 = *((unsigned int *)t221);
    t225 = (t223 | t224);
    *((unsigned int *)t222) = t225;
    t226 = *((unsigned int *)t222);
    t227 = (t226 != 0);
    if (t227 == 1)
        goto LAB28;

LAB29:
LAB30:    t244 = (t0 + 2552U);
    t245 = *((char **)t244);
    t244 = (t0 + 3112);
    t247 = (t244 + 56U);
    t248 = *((char **)t247);
    memset(t249, 0, 8);
    t250 = (t249 + 4);
    t251 = (t248 + 4);
    t252 = *((unsigned int *)t248);
    t253 = (t252 >> 1);
    t254 = (t253 & 1);
    *((unsigned int *)t249) = t254;
    t255 = *((unsigned int *)t251);
    t256 = (t255 >> 1);
    t257 = (t256 & 1);
    *((unsigned int *)t250) = t257;
    memset(t246, 0, 8);
    t258 = (t249 + 4);
    t259 = *((unsigned int *)t258);
    t260 = (~(t259));
    t261 = *((unsigned int *)t249);
    t262 = (t261 & t260);
    t263 = (t262 & 1U);
    if (t263 != 0)
        goto LAB34;

LAB32:    if (*((unsigned int *)t258) == 0)
        goto LAB31;

LAB33:    t264 = (t246 + 4);
    *((unsigned int *)t246) = 1;
    *((unsigned int *)t264) = 1;

LAB34:    t265 = (t246 + 4);
    t266 = (t249 + 4);
    t267 = *((unsigned int *)t249);
    t268 = (~(t267));
    *((unsigned int *)t246) = t268;
    *((unsigned int *)t265) = 0;
    if (*((unsigned int *)t266) != 0)
        goto LAB36;

LAB35:    t273 = *((unsigned int *)t246);
    *((unsigned int *)t246) = (t273 & 1U);
    t274 = *((unsigned int *)t265);
    *((unsigned int *)t265) = (t274 & 1U);
    t276 = *((unsigned int *)t245);
    t277 = *((unsigned int *)t246);
    t278 = (t276 & t277);
    *((unsigned int *)t275) = t278;
    t279 = (t245 + 4);
    t280 = (t246 + 4);
    t281 = (t275 + 4);
    t282 = *((unsigned int *)t279);
    t283 = *((unsigned int *)t280);
    t284 = (t282 | t283);
    *((unsigned int *)t281) = t284;
    t285 = *((unsigned int *)t281);
    t286 = (t285 != 0);
    if (t286 == 1)
        goto LAB37;

LAB38:
LAB39:    t308 = *((unsigned int *)t216);
    t309 = *((unsigned int *)t275);
    t310 = (t308 | t309);
    *((unsigned int *)t307) = t310;
    t311 = (t216 + 4);
    t312 = (t275 + 4);
    t313 = (t307 + 4);
    t314 = *((unsigned int *)t311);
    t315 = *((unsigned int *)t312);
    t316 = (t314 | t315);
    *((unsigned int *)t313) = t316;
    t317 = *((unsigned int *)t313);
    t318 = (t317 != 0);
    if (t318 == 1)
        goto LAB40;

LAB41:
LAB42:    t335 = (t0 + 6624);
    t336 = (t335 + 56U);
    t337 = *((char **)t336);
    t338 = (t337 + 56U);
    t339 = *((char **)t338);
    memset(t339, 0, 8);
    t340 = 1U;
    t341 = t340;
    t342 = (t307 + 4);
    t343 = *((unsigned int *)t307);
    t340 = (t340 & t343);
    t344 = *((unsigned int *)t342);
    t341 = (t341 & t344);
    t345 = (t339 + 4);
    t346 = *((unsigned int *)t339);
    *((unsigned int *)t339) = (t346 | t340);
    t347 = *((unsigned int *)t345);
    *((unsigned int *)t345) = (t347 | t341);
    xsi_driver_vfirst_trans(t335, 1, 1);
    t348 = (t0 + 6304);
    *((int *)t348) = 1;

LAB1:    return;
LAB4:    t27 = *((unsigned int *)t15);
    t28 = *((unsigned int *)t21);
    *((unsigned int *)t15) = (t27 | t28);
    t29 = (t3 + 4);
    t30 = (t6 + 4);
    t31 = *((unsigned int *)t3);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t34 = (~(t33));
    t35 = *((unsigned int *)t6);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (~(t37));
    t39 = (t32 & t34);
    t40 = (t36 & t38);
    t41 = (~(t39));
    t42 = (~(t40));
    t43 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t43 & t41);
    t44 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t44 & t42);
    t45 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t45 & t41);
    t46 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t46 & t42);
    goto LAB6;

LAB7:    *((unsigned int *)t47) = 1;
    goto LAB10;

LAB12:    t71 = *((unsigned int *)t47);
    t72 = *((unsigned int *)t68);
    *((unsigned int *)t47) = (t71 | t72);
    t73 = *((unsigned int *)t67);
    t74 = *((unsigned int *)t68);
    *((unsigned int *)t67) = (t73 | t74);
    goto LAB11;

LAB13:    t89 = *((unsigned int *)t77);
    t90 = *((unsigned int *)t83);
    *((unsigned int *)t77) = (t89 | t90);
    t91 = (t15 + 4);
    t92 = (t47 + 4);
    t93 = *((unsigned int *)t15);
    t94 = (~(t93));
    t95 = *((unsigned int *)t91);
    t96 = (~(t95));
    t97 = *((unsigned int *)t47);
    t98 = (~(t97));
    t99 = *((unsigned int *)t92);
    t100 = (~(t99));
    t101 = (t94 & t96);
    t102 = (t98 & t100);
    t103 = (~(t101));
    t104 = (~(t102));
    t105 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t105 & t103);
    t106 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t106 & t104);
    t107 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t107 & t103);
    t108 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t108 & t104);
    goto LAB15;

LAB16:    *((unsigned int *)t109) = 1;
    goto LAB19;

LAB21:    t122 = *((unsigned int *)t109);
    t123 = *((unsigned int *)t119);
    *((unsigned int *)t109) = (t122 | t123);
    t124 = *((unsigned int *)t118);
    t125 = *((unsigned int *)t119);
    *((unsigned int *)t118) = (t124 | t125);
    goto LAB20;

LAB22:    t152 = *((unsigned int *)t140);
    t153 = *((unsigned int *)t146);
    *((unsigned int *)t140) = (t152 | t153);
    t154 = (t109 + 4);
    t155 = (t131 + 4);
    t156 = *((unsigned int *)t109);
    t157 = (~(t156));
    t158 = *((unsigned int *)t154);
    t159 = (~(t158));
    t160 = *((unsigned int *)t131);
    t161 = (~(t160));
    t162 = *((unsigned int *)t155);
    t163 = (~(t162));
    t164 = (t157 & t159);
    t165 = (t161 & t163);
    t166 = (~(t164));
    t167 = (~(t165));
    t168 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t168 & t166);
    t169 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t169 & t167);
    t170 = *((unsigned int *)t140);
    *((unsigned int *)t140) = (t170 & t166);
    t171 = *((unsigned int *)t140);
    *((unsigned int *)t140) = (t171 & t167);
    goto LAB24;

LAB25:    t196 = *((unsigned int *)t184);
    t197 = *((unsigned int *)t190);
    *((unsigned int *)t184) = (t196 | t197);
    t198 = (t140 + 4);
    t199 = (t175 + 4);
    t200 = *((unsigned int *)t140);
    t201 = (~(t200));
    t202 = *((unsigned int *)t198);
    t203 = (~(t202));
    t204 = *((unsigned int *)t175);
    t205 = (~(t204));
    t206 = *((unsigned int *)t199);
    t207 = (~(t206));
    t208 = (t201 & t203);
    t209 = (t205 & t207);
    t210 = (~(t208));
    t211 = (~(t209));
    t212 = *((unsigned int *)t190);
    *((unsigned int *)t190) = (t212 & t210);
    t213 = *((unsigned int *)t190);
    *((unsigned int *)t190) = (t213 & t211);
    t214 = *((unsigned int *)t184);
    *((unsigned int *)t184) = (t214 & t210);
    t215 = *((unsigned int *)t184);
    *((unsigned int *)t184) = (t215 & t211);
    goto LAB27;

LAB28:    t228 = *((unsigned int *)t216);
    t229 = *((unsigned int *)t222);
    *((unsigned int *)t216) = (t228 | t229);
    t230 = (t77 + 4);
    t231 = (t184 + 4);
    t232 = *((unsigned int *)t230);
    t233 = (~(t232));
    t234 = *((unsigned int *)t77);
    t235 = (t234 & t233);
    t236 = *((unsigned int *)t231);
    t237 = (~(t236));
    t238 = *((unsigned int *)t184);
    t239 = (t238 & t237);
    t240 = (~(t235));
    t241 = (~(t239));
    t242 = *((unsigned int *)t222);
    *((unsigned int *)t222) = (t242 & t240);
    t243 = *((unsigned int *)t222);
    *((unsigned int *)t222) = (t243 & t241);
    goto LAB30;

LAB31:    *((unsigned int *)t246) = 1;
    goto LAB34;

LAB36:    t269 = *((unsigned int *)t246);
    t270 = *((unsigned int *)t266);
    *((unsigned int *)t246) = (t269 | t270);
    t271 = *((unsigned int *)t265);
    t272 = *((unsigned int *)t266);
    *((unsigned int *)t265) = (t271 | t272);
    goto LAB35;

LAB37:    t287 = *((unsigned int *)t275);
    t288 = *((unsigned int *)t281);
    *((unsigned int *)t275) = (t287 | t288);
    t289 = (t245 + 4);
    t290 = (t246 + 4);
    t291 = *((unsigned int *)t245);
    t292 = (~(t291));
    t293 = *((unsigned int *)t289);
    t294 = (~(t293));
    t295 = *((unsigned int *)t246);
    t296 = (~(t295));
    t297 = *((unsigned int *)t290);
    t298 = (~(t297));
    t299 = (t292 & t294);
    t300 = (t296 & t298);
    t301 = (~(t299));
    t302 = (~(t300));
    t303 = *((unsigned int *)t281);
    *((unsigned int *)t281) = (t303 & t301);
    t304 = *((unsigned int *)t281);
    *((unsigned int *)t281) = (t304 & t302);
    t305 = *((unsigned int *)t275);
    *((unsigned int *)t275) = (t305 & t301);
    t306 = *((unsigned int *)t275);
    *((unsigned int *)t275) = (t306 & t302);
    goto LAB39;

LAB40:    t319 = *((unsigned int *)t307);
    t320 = *((unsigned int *)t313);
    *((unsigned int *)t307) = (t319 | t320);
    t321 = (t216 + 4);
    t322 = (t275 + 4);
    t323 = *((unsigned int *)t321);
    t324 = (~(t323));
    t325 = *((unsigned int *)t216);
    t326 = (t325 & t324);
    t327 = *((unsigned int *)t322);
    t328 = (~(t327));
    t329 = *((unsigned int *)t275);
    t330 = (t329 & t328);
    t331 = (~(t326));
    t332 = (~(t330));
    t333 = *((unsigned int *)t313);
    *((unsigned int *)t313) = (t333 & t331);
    t334 = *((unsigned int *)t313);
    *((unsigned int *)t313) = (t334 & t332);
    goto LAB42;

}

static void Cont_34_5(char *t0)
{
    char t4[8];
    char t7[8];
    char t33[8];
    char t65[8];
    char t69[8];
    char t95[8];
    char t127[8];
    char t149[8];
    char t158[8];
    char t190[8];
    char t221[8];
    char t233[8];
    char t242[8];
    char t274[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t66;
    char *t67;
    char *t68;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
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
    char *t128;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    char *t148;
    char *t150;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    int t182;
    int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    char *t195;
    char *t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    char *t204;
    char *t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    char *t218;
    char *t219;
    char *t220;
    char *t222;
    char *t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    char *t230;
    char *t231;
    char *t232;
    char *t234;
    char *t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    char *t246;
    char *t247;
    char *t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    char *t256;
    char *t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    int t266;
    int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t275;
    unsigned int t276;
    unsigned int t277;
    char *t278;
    char *t279;
    char *t280;
    unsigned int t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    unsigned int t287;
    char *t288;
    char *t289;
    unsigned int t290;
    unsigned int t291;
    unsigned int t292;
    int t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    char *t302;
    char *t303;
    char *t304;
    char *t305;
    char *t306;
    unsigned int t307;
    unsigned int t308;
    char *t309;
    unsigned int t310;
    unsigned int t311;
    char *t312;
    unsigned int t313;
    unsigned int t314;
    char *t315;

LAB0:    t1 = (t0 + 5424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2552U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t8) = t15;
    memset(t4, 0, 8);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (~(t17));
    t19 = *((unsigned int *)t7);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t16) == 0)
        goto LAB4;

LAB6:    t22 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t22) = 1;

LAB7:    t23 = (t4 + 4);
    t24 = (t7 + 4);
    t25 = *((unsigned int *)t7);
    t26 = (~(t25));
    *((unsigned int *)t4) = t26;
    *((unsigned int *)t23) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB9;

LAB8:    t31 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t31 & 1U);
    t32 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t32 & 1U);
    t34 = *((unsigned int *)t3);
    t35 = *((unsigned int *)t4);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t37 = (t3 + 4);
    t38 = (t4 + 4);
    t39 = (t33 + 4);
    t40 = *((unsigned int *)t37);
    t41 = *((unsigned int *)t38);
    t42 = (t40 | t41);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB10;

LAB11:
LAB12:    t66 = (t0 + 3112);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    memset(t69, 0, 8);
    t70 = (t69 + 4);
    t71 = (t68 + 4);
    t72 = *((unsigned int *)t68);
    t73 = (t72 >> 0);
    t74 = (t73 & 1);
    *((unsigned int *)t69) = t74;
    t75 = *((unsigned int *)t71);
    t76 = (t75 >> 0);
    t77 = (t76 & 1);
    *((unsigned int *)t70) = t77;
    memset(t65, 0, 8);
    t78 = (t69 + 4);
    t79 = *((unsigned int *)t78);
    t80 = (~(t79));
    t81 = *((unsigned int *)t69);
    t82 = (t81 & t80);
    t83 = (t82 & 1U);
    if (t83 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t78) == 0)
        goto LAB13;

LAB15:    t84 = (t65 + 4);
    *((unsigned int *)t65) = 1;
    *((unsigned int *)t84) = 1;

LAB16:    t85 = (t65 + 4);
    t86 = (t69 + 4);
    t87 = *((unsigned int *)t69);
    t88 = (~(t87));
    *((unsigned int *)t65) = t88;
    *((unsigned int *)t85) = 0;
    if (*((unsigned int *)t86) != 0)
        goto LAB18;

LAB17:    t93 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t93 & 1U);
    t94 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t94 & 1U);
    t96 = *((unsigned int *)t33);
    t97 = *((unsigned int *)t65);
    t98 = (t96 & t97);
    *((unsigned int *)t95) = t98;
    t99 = (t33 + 4);
    t100 = (t65 + 4);
    t101 = (t95 + 4);
    t102 = *((unsigned int *)t99);
    t103 = *((unsigned int *)t100);
    t104 = (t102 | t103);
    *((unsigned int *)t101) = t104;
    t105 = *((unsigned int *)t101);
    t106 = (t105 != 0);
    if (t106 == 1)
        goto LAB19;

LAB20:
LAB21:    t128 = (t0 + 2552U);
    t129 = *((char **)t128);
    memset(t127, 0, 8);
    t128 = (t129 + 4);
    t130 = *((unsigned int *)t128);
    t131 = (~(t130));
    t132 = *((unsigned int *)t129);
    t133 = (t132 & t131);
    t134 = (t133 & 1U);
    if (t134 != 0)
        goto LAB25;

LAB23:    if (*((unsigned int *)t128) == 0)
        goto LAB22;

LAB24:    t135 = (t127 + 4);
    *((unsigned int *)t127) = 1;
    *((unsigned int *)t135) = 1;

LAB25:    t136 = (t127 + 4);
    t137 = (t129 + 4);
    t138 = *((unsigned int *)t129);
    t139 = (~(t138));
    *((unsigned int *)t127) = t139;
    *((unsigned int *)t136) = 0;
    if (*((unsigned int *)t137) != 0)
        goto LAB27;

LAB26:    t144 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t144 & 1U);
    t145 = *((unsigned int *)t136);
    *((unsigned int *)t136) = (t145 & 1U);
    t146 = (t0 + 3112);
    t147 = (t146 + 56U);
    t148 = *((char **)t147);
    memset(t149, 0, 8);
    t150 = (t149 + 4);
    t151 = (t148 + 4);
    t152 = *((unsigned int *)t148);
    t153 = (t152 >> 0);
    t154 = (t153 & 1);
    *((unsigned int *)t149) = t154;
    t155 = *((unsigned int *)t151);
    t156 = (t155 >> 0);
    t157 = (t156 & 1);
    *((unsigned int *)t150) = t157;
    t159 = *((unsigned int *)t127);
    t160 = *((unsigned int *)t149);
    t161 = (t159 & t160);
    *((unsigned int *)t158) = t161;
    t162 = (t127 + 4);
    t163 = (t149 + 4);
    t164 = (t158 + 4);
    t165 = *((unsigned int *)t162);
    t166 = *((unsigned int *)t163);
    t167 = (t165 | t166);
    *((unsigned int *)t164) = t167;
    t168 = *((unsigned int *)t164);
    t169 = (t168 != 0);
    if (t169 == 1)
        goto LAB28;

LAB29:
LAB30:    t191 = *((unsigned int *)t95);
    t192 = *((unsigned int *)t158);
    t193 = (t191 | t192);
    *((unsigned int *)t190) = t193;
    t194 = (t95 + 4);
    t195 = (t158 + 4);
    t196 = (t190 + 4);
    t197 = *((unsigned int *)t194);
    t198 = *((unsigned int *)t195);
    t199 = (t197 | t198);
    *((unsigned int *)t196) = t199;
    t200 = *((unsigned int *)t196);
    t201 = (t200 != 0);
    if (t201 == 1)
        goto LAB31;

LAB32:
LAB33:    t218 = (t0 + 3112);
    t219 = (t218 + 56U);
    t220 = *((char **)t219);
    memset(t221, 0, 8);
    t222 = (t221 + 4);
    t223 = (t220 + 4);
    t224 = *((unsigned int *)t220);
    t225 = (t224 >> 1);
    t226 = (t225 & 1);
    *((unsigned int *)t221) = t226;
    t227 = *((unsigned int *)t223);
    t228 = (t227 >> 1);
    t229 = (t228 & 1);
    *((unsigned int *)t222) = t229;
    t230 = (t0 + 3112);
    t231 = (t230 + 56U);
    t232 = *((char **)t231);
    memset(t233, 0, 8);
    t234 = (t233 + 4);
    t235 = (t232 + 4);
    t236 = *((unsigned int *)t232);
    t237 = (t236 >> 0);
    t238 = (t237 & 1);
    *((unsigned int *)t233) = t238;
    t239 = *((unsigned int *)t235);
    t240 = (t239 >> 0);
    t241 = (t240 & 1);
    *((unsigned int *)t234) = t241;
    t243 = *((unsigned int *)t221);
    t244 = *((unsigned int *)t233);
    t245 = (t243 & t244);
    *((unsigned int *)t242) = t245;
    t246 = (t221 + 4);
    t247 = (t233 + 4);
    t248 = (t242 + 4);
    t249 = *((unsigned int *)t246);
    t250 = *((unsigned int *)t247);
    t251 = (t249 | t250);
    *((unsigned int *)t248) = t251;
    t252 = *((unsigned int *)t248);
    t253 = (t252 != 0);
    if (t253 == 1)
        goto LAB34;

LAB35:
LAB36:    t275 = *((unsigned int *)t190);
    t276 = *((unsigned int *)t242);
    t277 = (t275 | t276);
    *((unsigned int *)t274) = t277;
    t278 = (t190 + 4);
    t279 = (t242 + 4);
    t280 = (t274 + 4);
    t281 = *((unsigned int *)t278);
    t282 = *((unsigned int *)t279);
    t283 = (t281 | t282);
    *((unsigned int *)t280) = t283;
    t284 = *((unsigned int *)t280);
    t285 = (t284 != 0);
    if (t285 == 1)
        goto LAB37;

LAB38:
LAB39:    t302 = (t0 + 6688);
    t303 = (t302 + 56U);
    t304 = *((char **)t303);
    t305 = (t304 + 56U);
    t306 = *((char **)t305);
    memset(t306, 0, 8);
    t307 = 1U;
    t308 = t307;
    t309 = (t274 + 4);
    t310 = *((unsigned int *)t274);
    t307 = (t307 & t310);
    t311 = *((unsigned int *)t309);
    t308 = (t308 & t311);
    t312 = (t306 + 4);
    t313 = *((unsigned int *)t306);
    *((unsigned int *)t306) = (t313 | t307);
    t314 = *((unsigned int *)t312);
    *((unsigned int *)t312) = (t314 | t308);
    xsi_driver_vfirst_trans(t302, 0, 0);
    t315 = (t0 + 6320);
    *((int *)t315) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB9:    t27 = *((unsigned int *)t4);
    t28 = *((unsigned int *)t24);
    *((unsigned int *)t4) = (t27 | t28);
    t29 = *((unsigned int *)t23);
    t30 = *((unsigned int *)t24);
    *((unsigned int *)t23) = (t29 | t30);
    goto LAB8;

LAB10:    t45 = *((unsigned int *)t33);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t33) = (t45 | t46);
    t47 = (t3 + 4);
    t48 = (t4 + 4);
    t49 = *((unsigned int *)t3);
    t50 = (~(t49));
    t51 = *((unsigned int *)t47);
    t52 = (~(t51));
    t53 = *((unsigned int *)t4);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (~(t55));
    t57 = (t50 & t52);
    t58 = (t54 & t56);
    t59 = (~(t57));
    t60 = (~(t58));
    t61 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t61 & t59);
    t62 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t62 & t60);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    t64 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t64 & t60);
    goto LAB12;

LAB13:    *((unsigned int *)t65) = 1;
    goto LAB16;

LAB18:    t89 = *((unsigned int *)t65);
    t90 = *((unsigned int *)t86);
    *((unsigned int *)t65) = (t89 | t90);
    t91 = *((unsigned int *)t85);
    t92 = *((unsigned int *)t86);
    *((unsigned int *)t85) = (t91 | t92);
    goto LAB17;

LAB19:    t107 = *((unsigned int *)t95);
    t108 = *((unsigned int *)t101);
    *((unsigned int *)t95) = (t107 | t108);
    t109 = (t33 + 4);
    t110 = (t65 + 4);
    t111 = *((unsigned int *)t33);
    t112 = (~(t111));
    t113 = *((unsigned int *)t109);
    t114 = (~(t113));
    t115 = *((unsigned int *)t65);
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
    goto LAB21;

LAB22:    *((unsigned int *)t127) = 1;
    goto LAB25;

LAB27:    t140 = *((unsigned int *)t127);
    t141 = *((unsigned int *)t137);
    *((unsigned int *)t127) = (t140 | t141);
    t142 = *((unsigned int *)t136);
    t143 = *((unsigned int *)t137);
    *((unsigned int *)t136) = (t142 | t143);
    goto LAB26;

LAB28:    t170 = *((unsigned int *)t158);
    t171 = *((unsigned int *)t164);
    *((unsigned int *)t158) = (t170 | t171);
    t172 = (t127 + 4);
    t173 = (t149 + 4);
    t174 = *((unsigned int *)t127);
    t175 = (~(t174));
    t176 = *((unsigned int *)t172);
    t177 = (~(t176));
    t178 = *((unsigned int *)t149);
    t179 = (~(t178));
    t180 = *((unsigned int *)t173);
    t181 = (~(t180));
    t182 = (t175 & t177);
    t183 = (t179 & t181);
    t184 = (~(t182));
    t185 = (~(t183));
    t186 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t186 & t184);
    t187 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t187 & t185);
    t188 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t188 & t184);
    t189 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t189 & t185);
    goto LAB30;

LAB31:    t202 = *((unsigned int *)t190);
    t203 = *((unsigned int *)t196);
    *((unsigned int *)t190) = (t202 | t203);
    t204 = (t95 + 4);
    t205 = (t158 + 4);
    t206 = *((unsigned int *)t204);
    t207 = (~(t206));
    t208 = *((unsigned int *)t95);
    t209 = (t208 & t207);
    t210 = *((unsigned int *)t205);
    t211 = (~(t210));
    t212 = *((unsigned int *)t158);
    t213 = (t212 & t211);
    t214 = (~(t209));
    t215 = (~(t213));
    t216 = *((unsigned int *)t196);
    *((unsigned int *)t196) = (t216 & t214);
    t217 = *((unsigned int *)t196);
    *((unsigned int *)t196) = (t217 & t215);
    goto LAB33;

LAB34:    t254 = *((unsigned int *)t242);
    t255 = *((unsigned int *)t248);
    *((unsigned int *)t242) = (t254 | t255);
    t256 = (t221 + 4);
    t257 = (t233 + 4);
    t258 = *((unsigned int *)t221);
    t259 = (~(t258));
    t260 = *((unsigned int *)t256);
    t261 = (~(t260));
    t262 = *((unsigned int *)t233);
    t263 = (~(t262));
    t264 = *((unsigned int *)t257);
    t265 = (~(t264));
    t266 = (t259 & t261);
    t267 = (t263 & t265);
    t268 = (~(t266));
    t269 = (~(t267));
    t270 = *((unsigned int *)t248);
    *((unsigned int *)t248) = (t270 & t268);
    t271 = *((unsigned int *)t248);
    *((unsigned int *)t248) = (t271 & t269);
    t272 = *((unsigned int *)t242);
    *((unsigned int *)t242) = (t272 & t268);
    t273 = *((unsigned int *)t242);
    *((unsigned int *)t242) = (t273 & t269);
    goto LAB36;

LAB37:    t286 = *((unsigned int *)t274);
    t287 = *((unsigned int *)t280);
    *((unsigned int *)t274) = (t286 | t287);
    t288 = (t190 + 4);
    t289 = (t242 + 4);
    t290 = *((unsigned int *)t288);
    t291 = (~(t290));
    t292 = *((unsigned int *)t190);
    t293 = (t292 & t291);
    t294 = *((unsigned int *)t289);
    t295 = (~(t294));
    t296 = *((unsigned int *)t242);
    t297 = (t296 & t295);
    t298 = (~(t293));
    t299 = (~(t297));
    t300 = *((unsigned int *)t280);
    *((unsigned int *)t280) = (t300 & t298);
    t301 = *((unsigned int *)t280);
    *((unsigned int *)t280) = (t301 & t299);
    goto LAB39;

}

static void Always_36_6(char *t0)
{
    char t6[8];
    char t20[8];
    char t36[8];
    char t44[8];
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 6336);
    *((int *)t2) = 1;
    t3 = (t0 + 5704);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1592U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB5;

LAB6:    if (*((unsigned int *)t4) != 0)
        goto LAB7;

LAB8:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB9;

LAB10:    memcpy(t44, t6, 8);

LAB11:    t72 = (t44 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t44);
    t76 = (t75 & t74);
    t77 = (t76 != 0);
    if (t77 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 21, t5, 32);
    t12 = (t0 + 3272);
    xsi_vlogvar_wait_assign_value(t12, t6, 0, 0, 21, 0LL);

LAB25:    goto LAB2;

LAB5:    *((unsigned int *)t6) = 1;
    goto LAB8;

LAB7:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB8;

LAB9:    t18 = (t0 + 2712U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng2)));
    memset(t20, 0, 8);
    t21 = (t19 + 4);
    t22 = (t18 + 4);
    t23 = *((unsigned int *)t19);
    t24 = *((unsigned int *)t18);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB15;

LAB12:    if (t32 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t20) = 1;

LAB15:    memset(t36, 0, 8);
    t37 = (t20 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t20);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t37) != 0)
        goto LAB18;

LAB19:    t45 = *((unsigned int *)t6);
    t46 = *((unsigned int *)t36);
    t47 = (t45 | t46);
    *((unsigned int *)t44) = t47;
    t48 = (t6 + 4);
    t49 = (t36 + 4);
    t50 = (t44 + 4);
    t51 = *((unsigned int *)t48);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB20;

LAB21:
LAB22:    goto LAB11;

LAB14:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB15;

LAB16:    *((unsigned int *)t36) = 1;
    goto LAB19;

LAB18:    t43 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB19;

LAB20:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t44) = (t56 | t57);
    t58 = (t6 + 4);
    t59 = (t36 + 4);
    t60 = *((unsigned int *)t58);
    t61 = (~(t60));
    t62 = *((unsigned int *)t6);
    t63 = (t62 & t61);
    t64 = *((unsigned int *)t59);
    t65 = (~(t64));
    t66 = *((unsigned int *)t36);
    t67 = (t66 & t65);
    t68 = (~(t63));
    t69 = (~(t67));
    t70 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t70 & t68);
    t71 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t71 & t69);
    goto LAB22;

LAB23:    xsi_set_current_line(38, ng0);
    t78 = ((char*)((ng2)));
    t79 = (t0 + 3272);
    xsi_vlogvar_wait_assign_value(t79, t78, 0, 0, 21, 0LL);
    goto LAB25;

}

static void Cont_42_7(char *t0)
{
    char t7[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 5920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    t6 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_power(t7, 32, t5, 32, t6, 32, 1);
    memset(t8, 0, 8);
    t9 = (t4 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    t24 = (t0 + 6752);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 1U;
    t30 = t29;
    t31 = (t8 + 4);
    t32 = *((unsigned int *)t8);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t31);
    t30 = (t30 & t33);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t35 | t29);
    t36 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t36 | t30);
    xsi_driver_vfirst_trans(t24, 0, 0);
    t37 = (t0 + 6352);
    *((int *)t37) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

}


extern void work_m_16150050589875892832_0324779106_init()
{
	static char *pe[] = {(void *)Cont_21_0,(void *)Always_23_1,(void *)Cont_29_2,(void *)Cont_30_3,(void *)Cont_32_4,(void *)Cont_34_5,(void *)Always_36_6,(void *)Cont_42_7};
	xsi_register_didat("work_m_16150050589875892832_0324779106", "isim/main_tb_isim_beh.exe.sim/work/m_16150050589875892832_0324779106.didat");
	xsi_register_executes(pe);
}
