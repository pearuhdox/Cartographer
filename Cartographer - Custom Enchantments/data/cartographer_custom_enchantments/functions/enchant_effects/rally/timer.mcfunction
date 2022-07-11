scoreboard players remove @s ca.ral_time 1

#Rally buff application
execute as @s[scores={ca.ral_time=1..}] run attribute @s minecraft:generic.attack_damage modifier add 31-181-1212-26-12011 "rally_effect_atk" 0.25 multiply
execute as @s[scores={ca.ral_time=0}] run attribute @s minecraft:generic.attack_damage modifier remove 31-181-1212-26-12011

execute as @s[scores={ca.ral_time=1..}] run attribute @s minecraft:generic.attack_speed modifier add 31-181-1212-26-119164 "rally_effect_aspd" 0.25 multiply
execute as @s[scores={ca.ral_time=0}] run attribute @s minecraft:generic.attack_speed modifier remove 31-181-1212-26-119164

execute if score @s ca.ral_time matches 0 run playsound minecraft:block.bubble_column.whirlpool_inside player @s ~ ~ ~ 1 2
execute if score @s ca.ral_time matches 0 run playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 2
execute if score @s ca.ral_time matches 0 if entity @s[scores={ca.ral_charge=1..}] as @s at @s run scoreboard players operation @s cdl.heal_queue = @s ca.ral_charge
execute if score @s ca.ral_time matches 0 run scoreboard players set @s ca.ral_charge 0
execute if score @s ca.ral_time matches 0 if score @s cdl.heal_queue matches 1.. run function cd:lib/player/heal

particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.4 0.1 0.4 0 1 normal

execute if entity @s[x_rotation=-90..60] run particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.4 0.1 0.4 0 1 normal
execute if entity @s[x_rotation=61..80] run particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.1 0 0.1 0 1 normal


execute if score @s ca.ral_time matches 0 run scoreboard players set @s ca.ral_bank 0