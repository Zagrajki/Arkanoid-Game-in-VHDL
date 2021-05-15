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
extern char *IEEE_P_1242562249;
static const char *ng1 = "fp";
extern char *STD_STANDARD;
static const char *ng3 = "";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
static const char *ng6 = "D:/Users/Mati/Desktop/5 semestr/syf/wtorektest/VGA_tb.vhd";

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


unsigned char work_a_3661045804_3212880686_sub_140341998_3057020925(char *t1, char *t2)
{
    char t4[24];
    char t5[16];
    unsigned char t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int t12;
    unsigned char t13;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t4 + 4U);
    t10 = (t2 != 0);
    if (t10 == 1)
        goto LAB3;

LAB2:    t11 = (t4 + 12U);
    *((char **)t11) = t5;
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t5);
    t13 = ((unsigned char)(t12));
    t0 = t13;

LAB1:    return t0;
LAB3:    *((char **)t7) = t2;
    goto LAB2;

LAB4:;
}

void work_a_3661045804_3212880686_sub_3917680019_3057020925(char *t0, char *t1, char *t2, char *t3, char *t4)
{
    char t5[344];
    char t6[32];
    char t14[16];
    char t20[8];
    char t23[16];
    char t29[8];
    char t53[16];
    char *t7;
    char *t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t37;
    char *t38;
    int t39;
    int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned char t48;
    int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;

LAB0:    t7 = (t0 + 9448);
    t8 = (t4 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t10 = (t5 + 4U);
    t11 = xsi_create_file_variable_in_buffer(0, ng1, t7, t3, t9, 2);
    *((char **)t10) = t11;
    t12 = (t5 + 12U);
    t13 = ((STD_STANDARD) + 384);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 640;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (640 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = (t5 + 132U);
    xsi_create_subtype(t15, ng3, t13, t14, 16);
    t18 = (t5 + 132U);
    t19 = (t12 + 88U);
    *((char **)t19) = t18;
    t21 = (t12 + 56U);
    *((char **)t21) = t20;
    xsi_type_set_default_value(t18, t20, 0);
    t22 = (t12 + 80U);
    *((unsigned int *)t22) = 4U;
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 7;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 7);
    t17 = (t26 * -1);
    t17 = (t17 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t17;
    t25 = (t5 + 220U);
    t27 = (t0 + 7768);
    t28 = (t25 + 88U);
    *((char **)t28) = t27;
    t30 = (t25 + 56U);
    *((char **)t30) = t29;
    xsi_type_set_default_value(t27, t29, 0);
    t31 = (t25 + 64U);
    t32 = (t27 + 80U);
    t33 = *((char **)t32);
    *((char **)t31) = t33;
    t34 = (t25 + 80U);
    *((unsigned int *)t34) = 8U;
    t35 = (t6 + 4U);
    *((char **)t35) = t2;
    t36 = (t6 + 12U);
    t37 = (t3 != 0);
    if (t37 == 1)
        goto LAB3;

LAB2:    t38 = (t6 + 20U);
    *((char **)t38) = t4;
    t39 = 0;
    t40 = 53;

LAB4:    if (t39 <= t40)
        goto LAB5;

LAB7:    t16 = 0;
    t26 = 31;

LAB9:    if (t16 <= t26)
        goto LAB10;

LAB12:    t7 = (t0 + 2968U);
    t8 = *((char **)t7);
    t16 = *((int *)t8);
    t26 = (t16 - 1);
    t39 = t26;
    t40 = 0;

LAB14:    if (t39 >= t40)
        goto LAB15;

LAB17:
LAB1:    t7 = (t5 + 4U);
    t8 = *((char **)t7);
    xsi_delete_file_variable(t8);
    return;
LAB3:    *((char **)t36) = t3;
    goto LAB2;

LAB5:    t41 = (t5 + 4U);
    t42 = *((char **)t41);
    t43 = (t0 + 3928U);
    t44 = *((char **)t43);
    t45 = (t39 - 0);
    t17 = (t45 * 1);
    t46 = (8U * t17);
    t47 = (0 + t46);
    t43 = (t44 + t47);
    t48 = work_a_3661045804_3212880686_sub_140341998_3057020925(t0, t43);
    std_textio_write_char(t42, t48);

LAB6:    if (t39 == t40)
        goto LAB7;

LAB8:    t16 = (t39 + 1);
    t39 = t16;
    goto LAB4;

LAB10:    t7 = (t5 + 4U);
    t8 = *((char **)t7);
    t10 = (t0 + 4048U);
    t11 = *((char **)t10);
    t39 = (t16 - 0);
    t9 = (t39 * 1);
    t17 = (8U * t9);
    t46 = (0 + t17);
    t10 = (t11 + t46);
    t37 = work_a_3661045804_3212880686_sub_140341998_3057020925(t0, t10);
    std_textio_write_char(t8, t37);

LAB11:    if (t16 == t26)
        goto LAB12;

LAB13:    t39 = (t16 + 1);
    t16 = t39;
    goto LAB9;

LAB15:    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = 0;

LAB18:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t16 = *((int *)t8);
    t7 = (t0 + 2848U);
    t10 = *((char **)t7);
    t26 = *((int *)t10);
    t37 = (t16 < t26);
    if (t37 != 0)
        goto LAB19;

LAB21:
LAB16:    if (t39 == t40)
        goto LAB17;

LAB22:    t16 = (t39 + -1);
    t39 = t16;
    goto LAB14;

LAB19:    t7 = xsi_access_variable_all(t2);
    t11 = (t7 + 56U);
    t13 = *((char **)t11);
    t11 = (t12 + 56U);
    t15 = *((char **)t11);
    t45 = *((int *)t15);
    t49 = (t45 - 0);
    t9 = (t49 * 1);
    xsi_vhdl_check_range_of_index(0, 639, 1, t45);
    t17 = (3U * t9);
    t50 = (t39 - 0);
    t46 = (t50 * 1);
    xsi_vhdl_check_range_of_index(0, 479, 1, t39);
    t47 = (1920U * t46);
    t51 = (0 + t47);
    t52 = (t51 + t17);
    t11 = (t13 + t52);
    t19 = ((IEEE_P_2592010699) + 4024);
    t21 = (t0 + 7656);
    t22 = (t21 + 80U);
    t24 = *((char **)t22);
    t18 = xsi_base_array_concat(t18, t53, t19, (char)99, (unsigned char)2, (char)97, t11, t24, (char)101);
    t27 = (t25 + 56U);
    t28 = *((char **)t27);
    t54 = (7 - 7);
    t55 = (t54 * 1U);
    t56 = (0 + t55);
    t27 = (t28 + t56);
    t57 = (1U + 3U);
    memcpy(t27, t18, t57);
    t7 = xsi_access_variable_all(t2);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t8 = (t12 + 56U);
    t11 = *((char **)t8);
    t16 = *((int *)t11);
    t26 = (t16 + 1);
    t45 = (t26 - 0);
    t9 = (t45 * 1);
    xsi_vhdl_check_range_of_index(0, 639, 1, t26);
    t17 = (3U * t9);
    t49 = (t39 - 0);
    t46 = (t49 * 1);
    xsi_vhdl_check_range_of_index(0, 479, 1, t39);
    t47 = (1920U * t46);
    t51 = (0 + t47);
    t52 = (t51 + t17);
    t8 = (t10 + t52);
    t15 = ((IEEE_P_2592010699) + 4024);
    t18 = (t0 + 7656);
    t19 = (t18 + 80U);
    t21 = *((char **)t19);
    t13 = xsi_base_array_concat(t13, t53, t15, (char)99, (unsigned char)2, (char)97, t8, t21, (char)101);
    t22 = (t25 + 56U);
    t24 = *((char **)t22);
    t54 = (7 - 3);
    t55 = (t54 * 1U);
    t56 = (0 + t55);
    t22 = (t24 + t56);
    t57 = (1U + 3U);
    memcpy(t22, t13, t57);
    t7 = (t5 + 4U);
    t8 = *((char **)t7);
    t10 = (t25 + 56U);
    t11 = *((char **)t10);
    t37 = work_a_3661045804_3212880686_sub_140341998_3057020925(t0, t11);
    std_textio_write_char(t8, t37);
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t16 = *((int *)t8);
    t26 = (t16 + 2);
    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t26;
    goto LAB18;

LAB20:;
}

void work_a_3661045804_3212880686_sub_2283317233_3057020925(char *t0, char *t1, int t2)
{
    char t4[8];
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    int t25;

LAB0:    t5 = (t4 + 4U);
    *((int *)t5) = t2;
    t6 = 1;
    t7 = t2;

LAB2:    if (t6 <= t7)
        goto LAB3;

LAB5:
LAB1:    return;
LAB3:    t8 = (t0 + 992U);
    xsi_add_dynamic_wait(t1, t8, -1, -1);

LAB9:    t9 = (t1 + 224U);
    t9 = *((char **)t9);
    xsi_wp_set_status(t9, 1);
    t10 = (t1 + 88U);
    t11 = *((char **)t10);
    t12 = (t11 + 2480U);
    *((unsigned int *)t12) = 1U;
    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 0U);
    getcontext(t15);
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 2480U);
    t19 = *((unsigned int *)t18);
    if (t19 == 1)
        goto LAB10;

LAB11:    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    *((unsigned int *)t22) = 3U;

LAB7:
LAB8:    t23 = (t0 + 992U);
    t24 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t23, 0U, 0U);
    if (t24 == 1)
        goto LAB6;
    else
        goto LAB9;

LAB4:    if (t6 == t7)
        goto LAB5;

LAB12:    t25 = (t6 + 1);
    t6 = t25;
    goto LAB2;

LAB6:    xsi_remove_dynamic_wait(t1, t8);
    goto LAB4;

LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

}

void work_a_3661045804_3212880686_sub_2866468818_3057020925(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4)
{
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
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;

LAB0:    t7 = (t2 + 40U);
    t8 = *((char **)t7);
    t7 = (t8 + t4);
    t9 = *((unsigned char *)t7);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_add_dynamic_wait(t1, t2, -1, -1);

LAB14:    t7 = (t1 + 224U);
    t7 = *((char **)t7);
    xsi_wp_set_status(t7, 1);
    t8 = (t1 + 88U);
    t11 = *((char **)t8);
    t12 = (t11 + 2480U);
    *((unsigned int *)t12) = 1U;
    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 0U);
    getcontext(t15);
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 2480U);
    t20 = *((unsigned int *)t18);
    if (t20 == 1)
        goto LAB15;

LAB16:    t19 = (t1 + 88U);
    t21 = *((char **)t19);
    t22 = (t21 + 2480U);
    *((unsigned int *)t22) = 3U;

LAB12:
LAB13:    t24 = (0U + t3);
    t25 = (0U + t4);
    t9 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, t24, t25);
    if (t9 == 1)
        goto LAB11;
    else
        goto LAB14;

LAB2:    xsi_add_dynamic_wait(t1, t2, -1, -1);

LAB8:    t8 = (t1 + 224U);
    t8 = *((char **)t8);
    xsi_wp_set_status(t8, 1);
    t11 = (t1 + 88U);
    t12 = *((char **)t11);
    t13 = (t12 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    getcontext(t16);
    t17 = (t1 + 88U);
    t18 = *((char **)t17);
    t19 = (t18 + 2480U);
    t20 = *((unsigned int *)t19);
    if (t20 == 1)
        goto LAB9;

LAB10:    t21 = (t1 + 88U);
    t22 = *((char **)t21);
    t23 = (t22 + 2480U);
    *((unsigned int *)t23) = 3U;

LAB6:
LAB7:    t24 = (0U + t3);
    t25 = (0U + t4);
    t26 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t2, t24, t25);
    if (t26 == 1)
        goto LAB5;
    else
        goto LAB8;

LAB5:    xsi_remove_dynamic_wait(t1, t2);
    goto LAB3;

LAB9:    xsi_saveStackAndSuspend(t1);
    goto LAB10;

LAB11:    xsi_remove_dynamic_wait(t1, t2);

LAB1:    return;
LAB15:    xsi_saveStackAndSuspend(t1);
    goto LAB16;

}

void work_a_3661045804_3212880686_sub_1327135219_3057020925(char *t0, char *t1, char *t2, char *t3, int64 t4, int64 t5)
{
    char t6[80];
    char t7[40];
    char t22[16];
    char t24[16];
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;

LAB0:    t8 = (t6 + 4U);
    t9 = ((STD_TEXTIO) + 3280);
    t10 = (t8 + 56U);
    *((char **)t10) = t9;
    t11 = (t8 + 40U);
    *((char **)t11) = 0;
    t12 = (t8 + 64U);
    *((int *)t12) = 1;
    t13 = (t8 + 48U);
    *((char **)t13) = 0;
    t14 = (t7 + 4U);
    t15 = (t2 != 0);
    if (t15 == 1)
        goto LAB3;

LAB2:    t16 = (t7 + 12U);
    *((char **)t16) = t3;
    t17 = (t7 + 20U);
    *((int64 *)t17) = t4;
    t18 = (t7 + 28U);
    *((int64 *)t18) = t5;
    t19 = (t0 + 13966);
    t23 = ((STD_STANDARD) + 1008);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 1;
    t26 = (t25 + 4U);
    *((int *)t26) = 2;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (2 - 1);
    t28 = (t27 * 1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t21 = xsi_base_array_concat(t21, t22, t23, (char)97, t2, t3, (char)97, t19, t24, (char)101);
    t26 = (t3 + 12U);
    t28 = *((unsigned int *)t26);
    t28 = (t28 * 1U);
    t29 = (t28 + 2U);
    t30 = (char *)alloca(t29);
    memcpy(t30, t21, t29);
    std_textio_write7(STD_TEXTIO, t1, t8, t30, t22, (unsigned char)0, 0);
    std_textio_write8(STD_TEXTIO, t1, t8, t4, (unsigned char)0, 0, t5);
    t9 = ((STD_TEXTIO) + 1480U);
    std_textio_writeline(STD_TEXTIO, t1, t9, t8);

LAB1:    xsi_access_variable_delete(t8);
    return;
LAB3:    *((char **)t14) = t2;
    goto LAB2;

}

static void work_a_3661045804_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    int t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 6112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(195, ng6);
    t2 = (t0 + 7384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(196, ng6);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (2 * t7);
    t2 = (t0 + 5920);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(198, ng6);
    t2 = (t0 + 4528U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t2 = (t0 + 13968);
    *((int *)t2) = 1;
    t4 = (t0 + 13972);
    *((int *)t4) = t9;
    t10 = 1;
    t11 = t9;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(205, ng6);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(199, ng6);
    t5 = (t0 + 7384);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(200, ng6);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5920);
    xsi_process_wait(t2, t8);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 13968);
    t10 = *((int *)t2);
    t3 = (t0 + 13972);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB11;

LAB20:    t9 = (t10 + 1);
    t10 = t9;
    t4 = (t0 + 13968);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    xsi_set_current_line(201, ng6);
    t2 = (t0 + 7384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(202, ng6);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5920);
    xsi_process_wait(t2, t8);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}

static void work_a_3661045804_3212880686_p_1(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    int64 t15;
    int64 t16;

LAB0:    t1 = (t0 + 6360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(215, ng6);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 6168);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(217, ng6);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(222, ng6);

LAB17:    t2 = (t0 + 7192);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(218, ng6);

LAB13:    t2 = (t0 + 7176);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB11:    t9 = (t0 + 7176);
    *((int *)t9) = 0;
    xsi_set_current_line(219, ng6);
    t4 = xsi_get_sim_current_time();
    t2 = (t0 + 4648U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int64 *)t2) = t4;
    goto LAB9;

LAB12:    t7 = (t0 + 1472U);
    t8 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t7, 0U, 0U);
    if (t8 == 1)
        goto LAB11;
    else
        goto LAB13;

LAB14:    goto LAB12;

LAB15:    t7 = (t0 + 7192);
    *((int *)t7) = 0;
    xsi_set_current_line(223, ng6);
    t2 = (t0 + 6168);
    t3 = (t0 + 13976);
    t9 = (t10 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 1;
    t11 = (t9 + 4U);
    *((int *)t11) = 14;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t12 = (14 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t13;
    t4 = xsi_get_sim_current_time();
    t11 = (t0 + 4648U);
    t14 = *((char **)t11);
    t15 = *((int64 *)t14);
    t16 = (t4 - t15);
    work_a_3661045804_3212880686_sub_1327135219_3057020925(t0, t2, t3, t10, t16, 1000000LL);
    xsi_set_current_line(225, ng6);

LAB21:    t2 = (t0 + 7208);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB16:    t3 = (t0 + 1472U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t5 == 1)
        goto LAB15;
    else
        goto LAB17;

LAB18:    goto LAB16;

LAB19:    t7 = (t0 + 7208);
    *((int *)t7) = 0;
    xsi_set_current_line(226, ng6);
    t2 = (t0 + 6168);
    t3 = (t0 + 13990);
    t9 = (t10 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 1;
    t11 = (t9 + 4U);
    *((int *)t11) = 9;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t12 = (9 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t13;
    t4 = xsi_get_sim_current_time();
    t11 = (t0 + 4648U);
    t14 = *((char **)t11);
    t15 = *((int64 *)t14);
    t16 = (t4 - t15);
    work_a_3661045804_3212880686_sub_1327135219_3057020925(t0, t2, t3, t10, t16, 1000000LL);
    xsi_set_current_line(228, ng6);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB20:    t3 = (t0 + 1472U);
    t5 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t5 == 1)
        goto LAB19;
    else
        goto LAB21;

LAB22:    goto LAB20;

LAB23:    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3661045804_3212880686_p_2(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    int64 t15;
    int64 t16;

LAB0:    t1 = (t0 + 6608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(238, ng6);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 6416);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(240, ng6);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(245, ng6);

LAB17:    t2 = (t0 + 7240);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(241, ng6);

LAB13:    t2 = (t0 + 7224);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB11:    t9 = (t0 + 7224);
    *((int *)t9) = 0;
    xsi_set_current_line(242, ng6);
    t4 = xsi_get_sim_current_time();
    t2 = (t0 + 4768U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int64 *)t2) = t4;
    goto LAB9;

LAB12:    t7 = (t0 + 1632U);
    t8 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t7, 0U, 0U);
    if (t8 == 1)
        goto LAB11;
    else
        goto LAB13;

LAB14:    goto LAB12;

LAB15:    t7 = (t0 + 7240);
    *((int *)t7) = 0;
    xsi_set_current_line(246, ng6);
    t2 = (t0 + 6416);
    t3 = (t0 + 13999);
    t9 = (t10 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 1;
    t11 = (t9 + 4U);
    *((int *)t11) = 14;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t12 = (14 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t13;
    t4 = xsi_get_sim_current_time();
    t11 = (t0 + 4768U);
    t14 = *((char **)t11);
    t15 = *((int64 *)t14);
    t16 = (t4 - t15);
    work_a_3661045804_3212880686_sub_1327135219_3057020925(t0, t2, t3, t10, t16, 1000000LL);
    xsi_set_current_line(248, ng6);

LAB21:    t2 = (t0 + 7256);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB16:    t3 = (t0 + 1632U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t5 == 1)
        goto LAB15;
    else
        goto LAB17;

LAB18:    goto LAB16;

LAB19:    t7 = (t0 + 7256);
    *((int *)t7) = 0;
    xsi_set_current_line(249, ng6);
    t2 = (t0 + 6416);
    t3 = (t0 + 14013);
    t9 = (t10 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 1;
    t11 = (t9 + 4U);
    *((int *)t11) = 9;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t12 = (9 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t13;
    t4 = xsi_get_sim_current_time();
    t11 = (t0 + 4768U);
    t14 = *((char **)t11);
    t15 = *((int64 *)t14);
    t16 = (t4 - t15);
    work_a_3661045804_3212880686_sub_1327135219_3057020925(t0, t2, t3, t10, t16, 1000000000LL);
    xsi_set_current_line(251, ng6);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB20:    t3 = (t0 + 1632U);
    t5 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t5 == 1)
        goto LAB19;
    else
        goto LAB21;

LAB22:    goto LAB20;

LAB23:    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3661045804_3212880686_p_3(char *t0)
{
    char t18[16];
    char t21[16];
    char t54[16];
    char t55[16];
    char t56[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    int t14;
    int t15;
    unsigned char t16;
    unsigned char t17;
    char *t19;
    unsigned char t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    int t40;
    int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;

LAB0:    t1 = (t0 + 6856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(262, ng6);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 6664);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(264, ng6);
    t2 = (t0 + 8216);
    t3 = xsi_variable_create(ng3, t2, 0, 0, 0, 0);
    t5 = (t0 + 5168U);
    xsi_access_variable_set_value(t5, t3);
    xsi_set_current_line(266, ng6);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t6 = *((int *)t3);
    t2 = (t0 + 14022);
    *((int *)t2) = 1;
    t5 = (t0 + 14026);
    *((int *)t5) = t6;
    t7 = 1;
    t8 = t6;

LAB8:    if (t7 <= t8)
        goto LAB9;

LAB11:    xsi_set_current_line(295, ng6);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(268, ng6);
    t9 = (t0 + 6664);
    t10 = (t0 + 1632U);
    work_a_3661045804_3212880686_sub_2866468818_3057020925(t0, t9, t10, 0U, 0U);
    xsi_set_current_line(270, ng6);
    t2 = (t0 + 3688U);
    t3 = *((char **)t2);
    t6 = *((int *)t3);
    t2 = (t0 + 14030);
    *((int *)t2) = 1;
    t5 = (t0 + 14034);
    *((int *)t5) = t6;
    t11 = 1;
    t12 = t6;

LAB12:    if (t11 <= t12)
        goto LAB13;

LAB15:    xsi_set_current_line(274, ng6);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t6 = *((int *)t3);
    t11 = (t6 - 1);
    t2 = (t0 + 14038);
    *((int *)t2) = 0;
    t5 = (t0 + 14042);
    *((int *)t5) = t11;
    t12 = 0;
    t13 = t11;

LAB17:    if (t12 <= t13)
        goto LAB18;

LAB20:    xsi_set_current_line(286, ng6);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t6 = *((int *)t3);
    t16 = (t6 > 1);
    if (t16 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(291, ng6);
    t2 = (t0 + 6664);
    t3 = (t0 + 5168U);
    t5 = (t0 + 5384U);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t9 = (t0 + 14059);
    t23 = ((STD_STANDARD) + 1008);
    t24 = (t0 + 12964U);
    t25 = (t21 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 1;
    t26 = (t25 + 4U);
    *((int *)t26) = 4;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t6 = (4 - 1);
    t27 = (t6 * 1);
    t27 = (t27 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t27;
    t22 = xsi_base_array_concat(t22, t18, t23, (char)97, t10, t24, (char)97, t9, t21, (char)101);
    t27 = (5U + 4U);
    t26 = (char *)alloca(t27);
    memcpy(t26, t22, t27);
    work_a_3661045804_3212880686_sub_3917680019_3057020925(t0, t2, t3, t26, t18);

LAB28:
LAB10:    t2 = (t0 + 14022);
    t7 = *((int *)t2);
    t3 = (t0 + 14026);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB11;

LAB30:    t6 = (t7 + 1);
    t7 = t6;
    t5 = (t0 + 14022);
    *((int *)t5) = t7;
    goto LAB8;

LAB13:    xsi_set_current_line(271, ng6);
    t9 = (t0 + 6664);
    t10 = (t0 + 1472U);
    work_a_3661045804_3212880686_sub_2866468818_3057020925(t0, t9, t10, 0U, 0U);

LAB14:    t2 = (t0 + 14030);
    t11 = *((int *)t2);
    t3 = (t0 + 14034);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB15;

LAB16:    t6 = (t11 + 1);
    t11 = t6;
    t5 = (t0 + 14030);
    *((int *)t5) = t11;
    goto LAB12;

LAB18:    xsi_set_current_line(276, ng6);
    t9 = (t0 + 6664);
    t10 = (t0 + 1472U);
    work_a_3661045804_3212880686_sub_2866468818_3057020925(t0, t9, t10, 0U, 0U);
    xsi_set_current_line(277, ng6);
    t2 = (t0 + 6664);
    t3 = (t0 + 3448U);
    t5 = *((char **)t3);
    t6 = *((int *)t5);
    t11 = (2 * t6);
    work_a_3661045804_3212880686_sub_2283317233_3057020925(t0, t2, t11);
    xsi_set_current_line(279, ng6);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t6 = *((int *)t3);
    t11 = (t6 - 1);
    t2 = (t0 + 14046);
    *((int *)t2) = 0;
    t5 = (t0 + 14050);
    *((int *)t5) = t11;
    t14 = 0;
    t15 = t11;

LAB21:    if (t14 <= t15)
        goto LAB22;

LAB24:
LAB19:    t2 = (t0 + 14038);
    t12 = *((int *)t2);
    t3 = (t0 + 14042);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB20;

LAB26:    t6 = (t12 + 1);
    t12 = t6;
    t5 = (t0 + 14038);
    *((int *)t5) = t12;
    goto LAB17;

LAB22:    xsi_set_current_line(280, ng6);
    t9 = (t0 + 6664);
    work_a_3661045804_3212880686_sub_2283317233_3057020925(t0, t9, 2);
    xsi_set_current_line(281, ng6);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t16 = *((unsigned char *)t3);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t17 = *((unsigned char *)t5);
    t9 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t18, t9, (char)99, t16, (char)99, t17, (char)101);
    t10 = (t0 + 2152U);
    t19 = *((char **)t10);
    t20 = *((unsigned char *)t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_base_array_concat(t10, t21, t22, (char)97, t2, t18, (char)99, t20, (char)101);
    t23 = (t0 + 5168U);
    t24 = xsi_access_variable_all(t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t25 = (t0 + 14046);
    t6 = *((int *)t25);
    t11 = (t6 - 0);
    t27 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 639, 1, *((int *)t25));
    t28 = (3U * t27);
    t29 = (t0 + 14038);
    t30 = (t0 + 5168U);
    t31 = xsi_access_variable_all(t30);
    t32 = (t31 + 64U);
    t32 = *((char **)t32);
    t33 = (t32 + 0U);
    t34 = *((int *)t33);
    t35 = (t0 + 5168U);
    t36 = xsi_access_variable_all(t35);
    t37 = (t36 + 64U);
    t37 = *((char **)t37);
    t38 = (t37 + 8U);
    t39 = *((int *)t38);
    t40 = *((int *)t29);
    t41 = (t40 - t34);
    t42 = (t41 * t39);
    t43 = (t0 + 5168U);
    t44 = xsi_access_variable_all(t43);
    t45 = (t44 + 64U);
    t45 = *((char **)t45);
    t46 = (t45 + 4U);
    t47 = *((int *)t46);
    xsi_vhdl_check_range_of_index(t34, t47, t39, *((int *)t29));
    t48 = (1920U * t42);
    t49 = (0 + t48);
    t50 = (t49 + t28);
    t51 = (t26 + t50);
    t52 = (1U + 1U);
    t53 = (t52 + 1U);
    memcpy(t51, t10, t53);

LAB23:    t2 = (t0 + 14046);
    t14 = *((int *)t2);
    t3 = (t0 + 14050);
    t15 = *((int *)t3);
    if (t14 == t15)
        goto LAB24;

LAB25:    t6 = (t14 + 1);
    t14 = t6;
    t5 = (t0 + 14046);
    *((int *)t5) = t14;
    goto LAB21;

LAB27:    xsi_set_current_line(287, ng6);
    t2 = xsi_get_transient_memory(2U);
    memset(t2, 0, 2U);
    t5 = t2;
    memset(t5, (unsigned char)48, 2U);
    t9 = (t0 + 5528U);
    t10 = (t9 + 56U);
    t19 = *((char **)t10);
    t10 = (t19 + 0);
    memcpy(t10, t2, 2U);
    xsi_set_current_line(288, ng6);
    t2 = ((STD_STANDARD) + 384);
    t3 = (t0 + 14022);
    t5 = xsi_int_to_mem(*((int *)t3));
    t9 = xsi_string_variable_get_image(t18, t2, t5);
    t10 = (t0 + 5528U);
    t19 = (t10 + 56U);
    t22 = *((char **)t19);
    t19 = ((STD_STANDARD) + 384);
    t23 = (t0 + 14022);
    t24 = xsi_int_to_mem(*((int *)t23));
    t25 = xsi_string_variable_get_image(t21, t19, t24);
    t26 = (t21 + 12U);
    t27 = *((unsigned int *)t26);
    t28 = (2 - t27);
    xsi_vhdl_check_range_of_slice(2, 1, -1, t27, 1, -1);
    t42 = (t28 * 1U);
    t48 = (0 + t42);
    t29 = (t22 + t48);
    t30 = (t18 + 12U);
    t49 = *((unsigned int *)t30);
    memcpy(t29, t9, t49);
    xsi_set_current_line(289, ng6);
    t2 = (t0 + 6664);
    t3 = (t0 + 5168U);
    t5 = (t0 + 5384U);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t9 = (t0 + 14054);
    t23 = ((STD_STANDARD) + 1008);
    t24 = (t0 + 12964U);
    t25 = (t21 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 1;
    t26 = (t25 + 4U);
    *((int *)t26) = 1;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t6 = (1 - 1);
    t27 = (t6 * 1);
    t27 = (t27 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t27;
    t22 = xsi_base_array_concat(t22, t18, t23, (char)97, t10, t24, (char)97, t9, t21, (char)101);
    t26 = (t0 + 5528U);
    t29 = (t26 + 56U);
    t30 = *((char **)t29);
    t31 = ((STD_STANDARD) + 1008);
    t32 = (t0 + 13076U);
    t29 = xsi_base_array_concat(t29, t54, t31, (char)97, t22, t18, (char)97, t30, t32, (char)101);
    t33 = (t0 + 14055);
    t37 = ((STD_STANDARD) + 1008);
    t38 = (t56 + 0U);
    t43 = (t38 + 0U);
    *((int *)t43) = 1;
    t43 = (t38 + 4U);
    *((int *)t43) = 4;
    t43 = (t38 + 8U);
    *((int *)t43) = 1;
    t11 = (4 - 1);
    t27 = (t11 * 1);
    t27 = (t27 + 1);
    t43 = (t38 + 12U);
    *((unsigned int *)t43) = t27;
    t36 = xsi_base_array_concat(t36, t55, t37, (char)97, t29, t54, (char)97, t33, t56, (char)101);
    t27 = (5U + 1U);
    t28 = (t27 + 2U);
    t42 = (t28 + 4U);
    t43 = (char *)alloca(t42);
    memcpy(t43, t36, t42);
    work_a_3661045804_3212880686_sub_3917680019_3057020925(t0, t2, t3, t43, t55);
    goto LAB28;

LAB31:    goto LAB2;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

}


void ieee_p_2592010699_sub_3130575329_503743352();

void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_3661045804_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3661045804_3212880686_p_0,(void *)work_a_3661045804_3212880686_p_1,(void *)work_a_3661045804_3212880686_p_2,(void *)work_a_3661045804_3212880686_p_3};
	static char *se[] = {(void *)work_a_3661045804_3212880686_sub_140341998_3057020925,(void *)work_a_3661045804_3212880686_sub_3917680019_3057020925,(void *)work_a_3661045804_3212880686_sub_2283317233_3057020925,(void *)work_a_3661045804_3212880686_sub_2866468818_3057020925,(void *)work_a_3661045804_3212880686_sub_1327135219_3057020925};
	xsi_register_didat("work_a_3661045804_3212880686", "isim/vga_vga_sch_tb_isim_beh.exe.sim/work/a_3661045804_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 7);
	xsi_register_resolution_function(2, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 7);
}
