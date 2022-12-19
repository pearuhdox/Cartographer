data modify entity @s Owner set from storage cartographer_mob_abilities:projectiles DataTemplate.Owner

execute store result entity @s Warmup int 1 run scoreboard players add $fang_time ca.mob_var 0