scoreboard players set $can_break dynamite_math 1
execute if score $nether_region_set dynamite_cfg matches 1 run function dynamite:dim/nether/check_region
execute if score $can_break dynamite_math matches 1 run function dynamite:dim/nether/break_blocks
