function dynamite:_store_aligned_pos
scoreboard players operation $nether_p1_x dynamite_cfg = $temp_x dynamite_math
scoreboard players operation $nether_p1_y dynamite_cfg = $temp_y dynamite_math
scoreboard players operation $nether_p1_z dynamite_cfg = $temp_z dynamite_math
scoreboard players set $nether_has_p1 dynamite_cfg 1
tellraw @s ["",{"text":"Nether protected region pos1 set to ","color":"gold"},{"text":"(","color":"yellow"},{"score":{"name":"$nether_p1_x","objective":"dynamite_cfg"}},{"text":", ","color":"yellow"},{"score":{"name":"$nether_p1_y","objective":"dynamite_cfg"}},{"text":", ","color":"yellow"},{"score":{"name":"$nether_p1_z","objective":"dynamite_cfg"}},{"text":")","color":"yellow"}]
function dynamite:protect/nether/recalculate
