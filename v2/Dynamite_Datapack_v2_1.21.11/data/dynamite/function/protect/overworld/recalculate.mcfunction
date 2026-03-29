execute if score $ow_has_p1 dynamite_cfg matches 1 if score $ow_has_p2 dynamite_cfg matches 1 run function dynamite:protect/overworld/finish_region
execute unless score $ow_has_p1 dynamite_cfg matches 1.. run scoreboard players set $ow_region_set dynamite_cfg 0
execute unless score $ow_has_p2 dynamite_cfg matches 1.. run scoreboard players set $ow_region_set dynamite_cfg 0
