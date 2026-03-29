function dynamite:_store_aligned_pos
scoreboard players operation $nether_p2_x dynamite_cfg = $temp_x dynamite_math
scoreboard players operation $nether_p2_y dynamite_cfg = $temp_y dynamite_math
scoreboard players operation $nether_p2_z dynamite_cfg = $temp_z dynamite_math
scoreboard players set $nether_has_p2 dynamite_cfg 1
tellraw @s ["",{"text":"Nether protected region pos2 set to ","color":"gold"},{"text":"(","color":"yellow"},{"score":{"name":"$nether_p2_x","objective":"dynamite_cfg"}},{"text":", ","color":"yellow"},{"score":{"name":"$nether_p2_y","objective":"dynamite_cfg"}},{"text":", ","color":"yellow"},{"score":{"name":"$nether_p2_z","objective":"dynamite_cfg"}},{"text":")","color":"yellow"}]
function dynamite:protect/nether/recalculate
