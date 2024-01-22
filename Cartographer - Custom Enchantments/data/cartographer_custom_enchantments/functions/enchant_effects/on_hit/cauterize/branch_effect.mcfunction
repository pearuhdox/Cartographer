particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 7 normal
particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.1 7 normal

scoreboard players operation $cau_time ca.ench_var = @s ca.cauterize_time
scoreboard players operation $cau_time ca.ench_var *= $10 ca.CONSTANT

function cartographer_custom_enchantments:enchant_effects/on_hit/cauterize/effect

scoreboard players set @s ca.cauterize_time 0