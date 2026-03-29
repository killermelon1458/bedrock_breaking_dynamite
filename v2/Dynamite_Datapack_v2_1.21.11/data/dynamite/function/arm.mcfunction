kill @e[type=marker,tag=dynamite_block,distance=..0.75,limit=1,sort=nearest]
execute if score $enabled dynamite_cfg matches 1 run tag @s add dynamite
execute if score $enabled dynamite_cfg matches 1 run data merge entity @s {explosion_power:6.0f}
