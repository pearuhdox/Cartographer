#function #minecraft:cartographer/events/enchantments/ranged/piercing
say test

scoreboard players operation $ranged ca.piercing = $piercing ca.var

execute as @e[type=#bb:arrow,tag=ca.custom_just_fired,distance=..12] at @s run function cartographer_custom_enchantments:enchant_effects/piercing/modify_arrow