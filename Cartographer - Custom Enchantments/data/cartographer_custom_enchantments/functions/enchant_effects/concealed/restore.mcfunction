execute if score @s ca.concealed matches 1 run scoreboard players set @s ca.conceal_time 61

execute if score @s ca.concealed matches 1 run effect give @s invisibility 3 1 true
execute if score @s ca.concealed matches 2 run effect give @s invisibility 3 2 true
execute if score @s ca.concealed matches 3 run effect give @s invisibility 3 3 true
execute if score @s ca.concealed matches 4.. run effect give @s invisibility 3 4 true


attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.2 multiply

#playsound minecraft:item.firecharge.use player @a[distance=..12] ~ ~ ~ 0.5 0.5
#playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 0.5 0.75
#particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 1 0 1 0.05 15 normal

function #minecraft:cartographer/events/enchantments/passive/concealed
