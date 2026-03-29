execute if score $nether_has_p1 dynamite_cfg matches 1 if score $nether_has_p2 dynamite_cfg matches 1 run function dynamite:protect/nether/finish_region
execute unless score $nether_has_p1 dynamite_cfg matches 1.. run scoreboard players set $nether_region_set dynamite_cfg 0
execute unless score $nether_has_p2 dynamite_cfg matches 1.. run scoreboard players set $nether_region_set dynamite_cfg 0
