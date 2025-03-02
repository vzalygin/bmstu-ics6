
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name l1 -dir "/mnt/c/repos/bmstu-ics6/schemach/2sem/lab3/planAhead_run_2" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/mnt/c/repos/bmstu-ics6/schemach/2sem/lab3/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/mnt/c/repos/bmstu-ics6/schemach/2sem/lab3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
