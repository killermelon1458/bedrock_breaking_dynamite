scoreboard players set $can_break dynamite_math 1
execute if score $end_region_set dynamite_cfg matches 1 run function dynamite:dim/end/check_region
execute if score $can_break dynamite_math matches 1 run function dynamite:dim/end/break_blocks
