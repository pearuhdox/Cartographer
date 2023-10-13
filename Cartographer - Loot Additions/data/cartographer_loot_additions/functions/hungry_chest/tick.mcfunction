execute if score @s ca.loot_timer matches 1.. run scoreboard players add @s ca.loot_timer 1
execute if score @s ca.loot_timer matches 2 run playsound minecraft:entity.warden.dig player @a[distance=..12] ~ ~ ~ 1 1.75
execute if score @s ca.loot_timer matches 2 run scoreboard players set @s ca.hunger_time 1200
execute if score @s ca.loot_timer matches 51.. run function cartographer_loot_additions:hungry_chest/open

execute if score @s ca.hunger_time matches 1.. run scoreboard players remove @s ca.hunger_time 1
execute if score @s ca.hunger_count < @s ca.hunger_total if score @s ca.hunger_time matches 0 run function cartographer_loot_additions:hungry_chest/starve