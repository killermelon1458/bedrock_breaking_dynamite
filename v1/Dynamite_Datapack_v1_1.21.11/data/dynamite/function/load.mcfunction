scoreboard objectives add dynamite_state dummy
execute unless score $config dynamite_state matches 0..1 run scoreboard players set $config dynamite_state 1
