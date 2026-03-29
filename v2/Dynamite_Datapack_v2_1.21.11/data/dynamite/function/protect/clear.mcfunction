summon marker ~ ~ ~ {Tags:["dynamite_dim_probe"]}
execute in minecraft:overworld if entity @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1] run function dynamite:protect/overworld/clear
execute in minecraft:the_nether if entity @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1] run function dynamite:protect/nether/clear
execute in minecraft:the_end if entity @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1] run function dynamite:protect/end/clear
kill @e[type=marker,tag=dynamite_dim_probe,limit=1,distance=..1]
