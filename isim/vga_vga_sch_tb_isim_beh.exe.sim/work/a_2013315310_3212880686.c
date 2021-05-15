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
static const char *ng0 = "D:/Users/Mati/Desktop/5 semestr/syf/wtorektest/vga_driver1.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2013315310_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6384);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t3 = (t0 + 6528);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}

static void work_a_2013315310_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2592U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 < 799);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 6592);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 < 520);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6656);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 2792U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 + 1);
    t3 = (t0 + 6592);
    t10 = (t3 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t9;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

LAB8:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 + 1);
    t1 = (t0 + 6656);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t9;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 512);
    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 6720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 6720);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

}

static void work_a_2013315310_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 3248U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t6 = (t3 < t5);
    if (t6 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 6416);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 6784);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_2013315310_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 3488U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t6 = (t3 < t5);
    if (t6 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 6848);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 6432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 6848);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_2013315310_3212880686_p_4(char *t0)
{
    char t25[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    int t11;
    char *t12;
    int t13;
    unsigned char t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    int t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t26;
    int t27;
    char *t28;
    int t29;
    int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;

LAB0:    xsi_set_current_line(108, ng0);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 3728U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t6 >= t8);
    if (t9 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(115, ng0);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t25, 640, 10);
    t5 = (t0 + 6912);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t12 = (t10 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t4, 10U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(116, ng0);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t25, 480, 9);
    t5 = (t0 + 6976);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t12 = (t10 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t4, 9U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(117, ng0);
    t4 = (t0 + 7040);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(118, ng0);
    t4 = (t0 + 7104);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(119, ng0);
    t4 = (t0 + 7168);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);

LAB3:    t4 = (t0 + 6448);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(109, ng0);
    t4 = (t0 + 2792U);
    t26 = *((char **)t4);
    t27 = *((int *)t26);
    t4 = (t0 + 3728U);
    t28 = *((char **)t4);
    t29 = *((int *)t28);
    t30 = (t27 - t29);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t25, t30, 10);
    t31 = (t0 + 6912);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t4, 10U);
    xsi_driver_first_trans_fast_port(t31);
    xsi_set_current_line(110, ng0);
    t4 = (t0 + 2952U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 3968U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t11 = (t6 - t8);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t25, t11, 9);
    t10 = (t0 + 6976);
    t12 = (t10 + 56U);
    t15 = *((char **)t12);
    t17 = (t15 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t4, 9U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(111, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = (2 - 2);
    t36 = (t6 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t4 = (t5 + t38);
    t1 = *((unsigned char *)t4);
    t7 = (t0 + 7040);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    *((unsigned char *)t17) = t1;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(112, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = (1 - 2);
    t36 = (t6 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t4 = (t5 + t38);
    t1 = *((unsigned char *)t4);
    t7 = (t0 + 7104);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    *((unsigned char *)t17) = t1;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(113, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = (0 - 2);
    t36 = (t6 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t4 = (t5 + t38);
    t1 = *((unsigned char *)t4);
    t7 = (t0 + 7168);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    *((unsigned char *)t17) = t1;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    t4 = (t0 + 2952U);
    t20 = *((char **)t4);
    t21 = *((int *)t20);
    t4 = (t0 + 4088U);
    t22 = *((char **)t4);
    t23 = *((int *)t22);
    t24 = (t21 < t23);
    t1 = t24;
    goto LAB7;

LAB8:    t4 = (t0 + 2952U);
    t15 = *((char **)t4);
    t16 = *((int *)t15);
    t4 = (t0 + 3968U);
    t17 = *((char **)t4);
    t18 = *((int *)t17);
    t19 = (t16 >= t18);
    t2 = t19;
    goto LAB10;

LAB11:    t4 = (t0 + 2792U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t4 = (t0 + 3848U);
    t12 = *((char **)t4);
    t13 = *((int *)t12);
    t14 = (t11 < t13);
    t3 = t14;
    goto LAB13;

}


extern void work_a_2013315310_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2013315310_3212880686_p_0,(void *)work_a_2013315310_3212880686_p_1,(void *)work_a_2013315310_3212880686_p_2,(void *)work_a_2013315310_3212880686_p_3,(void *)work_a_2013315310_3212880686_p_4};
	xsi_register_didat("work_a_2013315310_3212880686", "isim/vga_vga_sch_tb_isim_beh.exe.sim/work/a_2013315310_3212880686.didat");
	xsi_register_executes(pe);
}
