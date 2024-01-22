execute if predicate cartographer_core:is_on_fire unless entity @s[tag=ca.oil_ignited] run function cartographer_custom_statuses:effects/oiled/ignite
execute unless predicate cartographer_core:is_on_fire unless entity @s[type=#cartographer_core:fire_immune] if entity @s[tag=ca.oil_ignited] run function cartographer_custom_statuses:effects/oiled/clear

execute if entity @s[type=#cartographer_core:fire_immune] unless entity @s[tag=ca.oil_ignited] run function cartographer_custom_statuses:effects/oiled/ignite

execute unless entity @s[tag=ca.oil_ignited] run particle minecraft:block minecraft:coal_block ~ ~1 ~ 0.1 0.4 0.1 0 2 normal
execute if entity @s[tag=ca.oil_ignited] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0.4 0.1 0.04 1 normal
execute if entity @s[tag=ca.oil_ignited] run particle minecraft:dust_color_transition 0 1 0.85 1.5 0.1 0.1 0.1 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
execute if entity @s[tag=ca.oil_ignited] run particle minecraft:dust_color_transition 0 1 0.85 1.5 0.8 0.8 0.8 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal

scoreboard players operation $oil_mod ca.effect_oiled_duration = @s ca.effect_oiled_duration
scoreboard players operation $oil_mod ca.effect_oiled_duration %= $20 ca.CONSTANT

execute if entity @s[tag=ca.oil_ignited] if score $oil_mod ca.effect_oiled_duration matches 1 run function cartographer_custom_statuses:effects/oiled/damage


scoreboard players remove @s ca.effect_oiled_duration 1