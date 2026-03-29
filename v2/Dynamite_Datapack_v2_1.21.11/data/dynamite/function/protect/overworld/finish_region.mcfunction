scoreboard players operation $ow_min_x dynamite_cfg = $ow_p1_x dynamite_cfg
execute if score $ow_p2_x dynamite_cfg < $ow_min_x dynamite_cfg run scoreboard players operation $ow_min_x dynamite_cfg = $ow_p2_x dynamite_cfg
scoreboard players operation $ow_max_x dynamite_cfg = $ow_p1_x dynamite_cfg
execute if score $ow_p2_x dynamite_cfg > $ow_max_x dynamite_cfg run scoreboard players operation $ow_max_x dynamite_cfg = $ow_p2_x dynamite_cfg

scoreboard players operation $ow_min_y dynamite_cfg = $ow_p1_y dynamite_cfg
execute if score $ow_p2_y dynamite_cfg < $ow_min_y dynamite_cfg run scoreboard players operation $ow_min_y dynamite_cfg = $ow_p2_y dynamite_cfg
scoreboard players operation $ow_max_y dynamite_cfg = $ow_p1_y dynamite_cfg
execute if score $ow_p2_y dynamite_cfg > $ow_max_y dynamite_cfg run scoreboard players operation $ow_max_y dynamite_cfg = $ow_p2_y dynamite_cfg

scoreboard players operation $ow_min_z dynamite_cfg = $ow_p1_z dynamite_cfg
execute if score $ow_p2_z dynamite_cfg < $ow_min_z dynamite_cfg run scoreboard players operation $ow_min_z dynamite_cfg = $ow_p2_z dynamite_cfg
scoreboard players operation $ow_max_z dynamite_cfg = $ow_p1_z dynamite_cfg
execute if score $ow_p2_z dynamite_cfg > $ow_max_z dynamite_cfg run scoreboard players operation $ow_max_z dynamite_cfg = $ow_p2_z dynamite_cfg

scoreboard players set $ow_region_set dynamite_cfg 1
tellraw @s {"text":"Overworld protected region is now active.","color":"green"}
