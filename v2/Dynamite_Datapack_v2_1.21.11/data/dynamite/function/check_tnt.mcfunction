tag @s add dynamite_checked
execute if entity @e[type=marker,tag=dynamite_block,distance=..0.75,limit=1] run function dynamite:arm
