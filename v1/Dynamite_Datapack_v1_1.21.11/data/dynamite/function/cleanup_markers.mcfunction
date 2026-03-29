execute as @e[type=marker,tag=dynamite_block] at @s unless block ~ ~ ~ minecraft:tnt unless entity @e[type=tnt,distance=..0.75,limit=1] run kill @s
