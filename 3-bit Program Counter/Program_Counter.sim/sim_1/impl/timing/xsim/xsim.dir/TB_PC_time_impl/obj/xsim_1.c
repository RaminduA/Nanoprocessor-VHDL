/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_49(char*, char *);
extern void execute_16(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_200(char*, char *);
extern void execute_201(char*, char *);
extern void execute_202(char*, char *);
extern void execute_203(char*, char *);
extern void execute_204(char*, char *);
extern void execute_205(char*, char *);
extern void execute_206(char*, char *);
extern void execute_207(char*, char *);
extern void execute_208(char*, char *);
extern void execute_209(char*, char *);
extern void execute_210(char*, char *);
extern void execute_211(char*, char *);
extern void execute_212(char*, char *);
extern void execute_18(char*, char *);
extern void execute_52(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_59(char*, char *);
extern void execute_29(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_1(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_2(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_55(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_56(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_57(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_58(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_59(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_60(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_61(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_62(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_63(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_64(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_65(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_66(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_67(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_68(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_69(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_70(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_71(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_72(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_73(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_74(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_75(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_76(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_77(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_78(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_27(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_28(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_29(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_30(char*, char *);
extern void execute_104(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[118] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_49, (funcp)execute_16, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_200, (funcp)execute_201, (funcp)execute_202, (funcp)execute_203, (funcp)execute_204, (funcp)execute_205, (funcp)execute_206, (funcp)execute_207, (funcp)execute_208, (funcp)execute_209, (funcp)execute_210, (funcp)execute_211, (funcp)execute_212, (funcp)execute_18, (funcp)execute_52, (funcp)execute_55, (funcp)execute_56, (funcp)vlog_timingcheck_execute_0, (funcp)execute_59, (funcp)execute_29, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_1, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_2, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_55, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_56, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_57, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_58, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_59, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_60, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_61, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_62, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_63, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_64, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_65, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_66, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_67, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_68, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_69, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_70, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_71, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_72, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_73, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_74, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_75, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_76, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_77, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_78, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_27, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_28, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_29, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_30, (funcp)execute_104, (funcp)execute_109, (funcp)execute_110, (funcp)execute_111, (funcp)execute_112, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_74, (funcp)transaction_102, (funcp)transaction_130};
const int NumRelocateId= 118;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/TB_PC_time_impl/xsim.reloc",  (void **)funcTab, 118);
	iki_vhdl_file_variable_register(dp + 32224);
	iki_vhdl_file_variable_register(dp + 32280);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/TB_PC_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/TB_PC_time_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 37368, dp + 37720, 0, 2, 0, 2, 3, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 37256, dp + 37832, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 37312, dp + 38000, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern int xsim_argc_copy ;
extern char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/TB_PC_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/TB_PC_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/TB_PC_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
