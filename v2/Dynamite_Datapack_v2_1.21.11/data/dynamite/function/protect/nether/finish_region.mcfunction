scoreboard players operation $nether_min_x dynamite_cfg = $nether_p1_x dynamite_cfg
execute if score $nether_p2_x dynamite_cfg < $nether_min_x dynamite_cfg run scoreboard players operation $nether_min_x dynamite_cfg = $nether_p2_x dynamite_cfg
scoreboard players operation $nether_max_x dynamite_cfg = $nether_p1_x dynamite_cfg
execute if score $nether_p2_x dynamite_cfg > $nether_max_x dynamite_cfg run scoreboard players operation $nether_max_x dynamite_cfg = $nether_p2_x dynamite_cfg

scoreboard players operation $nether_min_y dynamite_cfg = $nether_p1_y dynamite_cfg
execute if score $nether_p2_y dynamite_cfg < $nether_min_y dynamite_cfg run scoreboard players operation $nether_min_y dynamite_cfg = $nether_p2_y dynamite_cfg
scoreboard players operation $nether_max_y dynamite_cfg = $nether_p1_y dynamite_cfg
execute if score $nether_p2_y dynamite_cfg > $nether_max_y dynamite_cfg run scoreboard players operation $nether_max_y dynamite_cfg = $nether_p2_y dynamite_cfg

scoreboard players operation $nether_min_z dynamite_cfg = $nether_p1_z dynamite_cfg
execute if score $nether_p2_z dynamite_cfg < $nether_min_z dynamite_cfg run scoreboard players operation $nether_min_z dynamite_cfg = $nether_p2_z dynamite_cfg
scoreboard players operation $nether_max_z dynamite_cfg = $nether_p1_z dynamite_cfg
execute if score $nether_p2_z dynamite_cfg > $nether_max_z dynamite_cfg run scoreboard players operation $nether_max_z dynamite_cfg = $nether_p2_z dynamite_cfg

scoreboard players set $nether_region_set dynamite_cfg 1
tellraw @s {"text":"Nether protected region is now active.","color":"green"}
