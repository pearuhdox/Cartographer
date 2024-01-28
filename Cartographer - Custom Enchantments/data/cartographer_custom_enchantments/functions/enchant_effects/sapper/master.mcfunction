function #minecraft:cartographer/events/enchantments/tool/sapper

scoreboard players operation $sapper_time ca.enchant_var = @s ca.sapper
scoreboard players operation $sapper_time ca.enchant_var *= $20 ca.CONSTANT

scoreboard players operation @s ca.sapper_banking = $sapper_time ca.enchant_var

playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 5 normal 