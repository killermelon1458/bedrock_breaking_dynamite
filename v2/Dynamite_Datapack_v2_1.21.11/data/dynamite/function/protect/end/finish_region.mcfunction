scoreboard players operation $end_min_x dynamite_cfg = $end_p1_x dynamite_cfg
execute if score $end_p2_x dynamite_cfg < $end_min_x dynamite_cfg run scoreboard players operation $end_min_x dynamite_cfg = $end_p2_x dynamite_cfg
scoreboard players operation $end_max_x dynamite_cfg = $end_p1_x dynamite_cfg
execute if score $end_p2_x dynamite_cfg > $end_max_x dynamite_cfg run scoreboard players operation $end_max_x dynamite_cfg = $end_p2_x dynamite_cfg

scoreboard players operation $end_min_y dynamite_cfg = $end_p1_y dynamite_cfg
execute if score $end_p2_y dynamite_cfg < $end_min_y dynamite_cfg run scoreboard players operation $end_min_y dynamite_cfg = $end_p2_y dynamite_cfg
scoreboard players operation $end_max_y dynamite_cfg = $end_p1_y dynamite_cfg
execute if score $end_p2_y dynamite_cfg > $end_max_y dynamite_cfg run scoreboard players operation $end_max_y dynamite_cfg = $end_p2_y dynamite_cfg

scoreboard players operation $end_min_z dynamite_cfg = $end_p1_z dynamite_cfg
execute if score $end_p2_z dynamite_cfg < $end_min_z dynamite_cfg run scoreboard players operation $end_min_z dynamite_cfg = $end_p2_z dynamite_cfg
scoreboard players operation $end_max_z dynamite_cfg = $end_p1_z dynamite_cfg
execute if score $end_p2_z dynamite_cfg > $end_max_z dynamite_cfg run scoreboard players operation $end_max_z dynamite_cfg = $end_p2_z dynamite_cfg

scoreboard players set $end_region_set dynamite_cfg 1
tellraw @s {"text":"End protected region is now active.","color":"green"}
