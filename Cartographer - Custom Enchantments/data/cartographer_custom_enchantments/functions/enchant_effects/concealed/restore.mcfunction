execute if score @s ca.concealed matches 1 run scoreboard players set @s ca.conceal_time 61
execute if score @s ca.concealed matches 2 run scoreboard players set @s ca.conceal_time 81
execute if score @s ca.concealed matches 3 run scoreboard players set @s ca.conceal_time 101
execute if score @s ca.concealed matches 4 run scoreboard players set @s ca.conceal_time 121
execute if score @s ca.concealed matches 5 run scoreboard players set @s ca.conceal_time 141
execute if score @s ca.concealed matches 6.. run scoreboard players set @s ca.conceal_time 161

effect give @e[type=#bb:hostile,distance=..16] blindness 2 0

execute if score @s ca.armor_count matches 0 run attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.5 multiply
execute if score @s ca.armor_count matches 1 run attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.45 multiply
execute if score @s ca.armor_count matches 2 run attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.4 multiply
execute if score @s ca.armor_count matches 3 run attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.35 multiply
execute if score @s ca.armor_count matches 4 run attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.3 multiply

playsound minecraft:item.firecharge.use player @a[distance=..12] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 0.5 0.75
particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 1 0 1 0.05 20 normal