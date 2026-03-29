execute align xyz run summon marker ~ ~ ~ {Tags:["dynamite_store_pos_temp"]}
execute store result score $temp_x dynamite_math run data get entity @e[type=marker,tag=dynamite_store_pos_temp,sort=nearest,limit=1,distance=..1] Pos[0] 1
execute store result score $temp_y dynamite_math run data get entity @e[type=marker,tag=dynamite_store_pos_temp,sort=nearest,limit=1,distance=..1] Pos[1] 1
execute store result score $temp_z dynamite_math run data get entity @e[type=marker,tag=dynamite_store_pos_temp,sort=nearest,limit=1,distance=..1] Pos[2] 1
kill @e[type=marker,tag=dynamite_store_pos_temp,sort=nearest,limit=1,distance=..1]
