scoreboard players operation $lifesteal_time ca.enchant_var = @s ca.lifesteal
scoreboard players operation $lifesteal_time ca.enchant_var *= $20 ca.CONSTANT

scoreboard players operation @s ca.lifesteal_banking = $lifesteal_time ca.enchant_var

playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2

function #minecraft:cartographer/events/enchantments/passive/lifesteal