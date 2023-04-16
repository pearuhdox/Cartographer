execute if score @s ca.concealed matches 1 run scoreboard players set @s ca.conceal_time 31
execute if score @s ca.concealed matches 2 run scoreboard players set @s ca.conceal_time 51
execute if score @s ca.concealed matches 3 run scoreboard players set @s ca.conceal_time 71
execute if score @s ca.concealed matches 4 run scoreboard players set @s ca.conceal_time 91
execute if score @s ca.concealed matches 5 run scoreboard players set @s ca.conceal_time 111
execute if score @s ca.concealed matches 6.. run scoreboard players set @s ca.conceal_time 131


attribute @s minecraft:generic.attack_damage modifier add 31-1920-51-1220-8 "ca_stealth" 0.2 multiply

playsound minecraft:item.firecharge.use player @a[distance=..12] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 0.5 0.75
particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 1 0 1 0.05 20 normal

function #minecraft:cartographer/events/enchantments/passive/concealed
