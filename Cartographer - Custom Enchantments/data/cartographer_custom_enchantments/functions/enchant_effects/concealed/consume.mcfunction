attribute @s minecraft:generic.attack_damage modifier remove 31-1920-51-1220-8

playsound minecraft:entity.player.attack.sweep player @a[distance=..12] ~ ~ ~ 2 0.5

#execute as @e[type=#bb:hostile,distance=..6,nbt=!{HurtTime:0s},limit=1,sort=nearest] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.05 15 normal
scoreboard players set @s ca.conceal_time 0

effect clear @s invisibility