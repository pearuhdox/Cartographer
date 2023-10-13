particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 7 normal
particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.1 7 normal

scoreboard players operation $cau_time ca.ench_var = @s ca.cauterize_time

function cartographer_custom_enchantments:enchant_effects/cauterize/effect

scoreboard players set @s ca.cauterize_time 0