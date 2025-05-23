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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_16150050589875892832_0324779106_init();
    work_m_10021739113852256964_1604064968_init();
    work_m_09983211145958355669_2766103011_init();
    work_m_06447966657262419338_3755466038_init();
    work_m_07644151216430898129_0286164271_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_07644151216430898129_0286164271");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
