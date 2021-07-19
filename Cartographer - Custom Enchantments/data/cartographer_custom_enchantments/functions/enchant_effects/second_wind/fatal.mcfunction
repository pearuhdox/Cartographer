tag @s remove true_death

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 2 1.25 
playsound minecraft:item.totem.use player @a[distance=..16] ~ ~ ~ 0.35 2
particle minecraft:totem_of_undying ~ ~2.5 ~ 0 0 0 0.6 80 normal

execute unless score @s ca.sw_tier matches 0.. run scoreboard players set @s ca.sw_tier 0

execute if score @s ca.sw_tier matches 7201.. run scoreboard players set @s ca.sw_tier 11000
execute if score @s ca.sw_tier matches 3601..7200 run scoreboard players set @s ca.sw_tier 10800
execute if score @s ca.sw_tier matches 1..3600 run scoreboard players set @s ca.sw_tier 7200
execute if score @s ca.sw_tier matches 0 run scoreboard players set @s ca.sw_tier 3600

scoreboard players set @s[scores={ca.sw_tier=3600..7199}] ca.sw_time 200
scoreboard players set @s[scores={ca.sw_tier=7200..10799}] ca.sw_time 140
scoreboard players set @s[scores={ca.sw_tier=10800..}] ca.sw_time 80

effect clear @s

effect give @s[scores={ca.sw_tier=3600..7199}] absorption 10 2 true
effect give @s[scores={ca.sw_tier=7200..10799}] absorption 7 1 true
effect give @s[scores={ca.sw_tier=10800..}] absorption 4 0 true

tag @s add mortal_coil