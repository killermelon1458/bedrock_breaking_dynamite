execute if score $end_has_p1 dynamite_cfg matches 1 if score $end_has_p2 dynamite_cfg matches 1 run function dynamite:protect/end/finish_region
execute unless score $end_has_p1 dynamite_cfg matches 1.. run scoreboard players set $end_region_set dynamite_cfg 0
execute unless score $end_has_p2 dynamite_cfg matches 1.. run scoreboard players set $end_region_set dynamite_cfg 0
