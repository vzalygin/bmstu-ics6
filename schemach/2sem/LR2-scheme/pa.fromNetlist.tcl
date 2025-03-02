
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab_2 -dir "/home/user/vzalygin/LR2-scheme/planAhead_run_5" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/user/vzalygin/LR2-scheme/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/user/vzalygin/LR2-scheme} }
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
