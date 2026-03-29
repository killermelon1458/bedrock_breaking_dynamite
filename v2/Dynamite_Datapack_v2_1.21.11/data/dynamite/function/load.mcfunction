scoreboard objectives add dynamite_cfg dummy
scoreboard objectives add dynamite_math dummy

execute unless score $enabled dynamite_cfg matches 0..1 run scoreboard players set $enabled dynamite_cfg 1

execute unless score $ow_above dynamite_cfg matches 0..1 run scoreboard players set $ow_above dynamite_cfg 1
execute unless score $ow_here dynamite_cfg matches 0..1 run scoreboard players set $ow_here dynamite_cfg 1
execute unless score $ow_below dynamite_cfg matches 0..1 run scoreboard players set $ow_below dynamite_cfg 1
execute unless score $ow_has_p1 dynamite_cfg matches 0..1 run scoreboard players set $ow_has_p1 dynamite_cfg 0
execute unless score $ow_has_p2 dynamite_cfg matches 0..1 run scoreboard players set $ow_has_p2 dynamite_cfg 0
execute unless score $ow_region_set dynamite_cfg matches 0..1 run scoreboard players set $ow_region_set dynamite_cfg 0

execute unless score $nether_above dynamite_cfg matches 0..1 run scoreboard players set $nether_above dynamite_cfg 1
execute unless score $nether_here dynamite_cfg matches 0..1 run scoreboard players set $nether_here dynamite_cfg 1
execute unless score $nether_below dynamite_cfg matches 0..1 run scoreboard players set $nether_below dynamite_cfg 1
execute unless score $nether_has_p1 dynamite_cfg matches 0..1 run scoreboard players set $nether_has_p1 dynamite_cfg 0
execute unless score $nether_has_p2 dynamite_cfg matches 0..1 run scoreboard players set $nether_has_p2 dynamite_cfg 0
execute unless score $nether_region_set dynamite_cfg matches 0..1 run scoreboard players set $nether_region_set dynamite_cfg 0

execute unless score $end_above dynamite_cfg matches 0..1 run scoreboard players set $end_above dynamite_cfg 1
execute unless score $end_here dynamite_cfg matches 0..1 run scoreboard players set $end_here dynamite_cfg 1
execute unless score $end_below dynamite_cfg matches 0..1 run scoreboard players set $end_below dynamite_cfg 1
execute unless score $end_has_p1 dynamite_cfg matches 0..1 run scoreboard players set $end_has_p1 dynamite_cfg 0
execute unless score $end_has_p2 dynamite_cfg matches 0..1 run scoreboard players set $end_has_p2 dynamite_cfg 0
execute unless score $end_region_set dynamite_cfg matches 0..1 run scoreboard players set $end_region_set dynamite_cfg 0
