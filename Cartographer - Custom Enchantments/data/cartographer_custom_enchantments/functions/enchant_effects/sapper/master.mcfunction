function #minecraft:cartographer/events/enchantments/tool/sapper

scoreboard players operation $sapper_time ca.enchant_var = @s ca.sapper
scoreboard players operation $sapper_time ca.enchant_var *= $20 ca.CONSTANT

scoreboard players operation @s ca.sapper_banking = $sapper_time ca.enchant_var

playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2

scoreboard players set $do_sapper ca.var 1