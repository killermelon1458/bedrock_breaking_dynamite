summon marker ~ ~ ~ {Tags:["dynamite_dim_probe"]}
execute in minecraft:overworld if entity @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1] run function dynamite:protect/overworld/set_pos2
execute in minecraft:the_nether if entity @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1] run function dynamite:protect/nether/set_pos2
execute in minecraft:the_end if entity @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1] run function dynamite:protect/end/set_pos2
kill @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1]
