execute if block ~ ~ ~ minecraft:tnt align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=dynamite_block,distance=..0.1] run summon marker ~ ~ ~ {Tags:["dynamite_block"]}
execute if block ~ ~ ~ minecraft:tnt run tag @s add dynamite_raycast_found
