scoreboard players set @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=ca.custom_just_fired,distance=..12] ca.lifetime 1

#Apply Fire to the arrow.
execute as @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=ca.custom_just_fired,distance=..12] run data merge entity @s {Fire:2000}