scoreboard players set @s ca.effect_oiled_level 0
scoreboard players set @s ca.effect_oiled_duration 0
tag @s remove ca.oil_ignited

execute if predicate cartographer_core:is_on_fire run function cartographer_custom_statuses:effects/oiled/re_ignite