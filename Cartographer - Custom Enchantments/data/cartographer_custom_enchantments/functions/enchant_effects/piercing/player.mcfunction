#function #minecraft:cartographer/events/enchantments/ranged/piercing

scoreboard players operation $ranged ca.piercing = @s ca.piercing

execute as @e[type=#bb:arrow,tag=ca.custom_just_fired,distance=..12] at @s run function cartographer_custom_enchantments:enchant_effects/piercing/modify_arrow