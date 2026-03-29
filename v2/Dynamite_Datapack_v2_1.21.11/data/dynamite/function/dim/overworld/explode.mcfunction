scoreboard players set $can_break dynamite_math 1
execute if score $ow_region_set dynamite_cfg matches 1 run function dynamite:dim/overworld/check_region
execute if score $can_break dynamite_math matches 1 run function dynamite:dim/overworld/break_blocks
