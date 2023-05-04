scoreboard players operation $fire_aspect ca.evocation = @s ca.fire_aspect
scoreboard players operation $frostbite ca.evocation = @s ca.frostbite

execute on passengers run data modify storage cartographer_custom_statuses:apply_effects data.Effects set from entity @s data.ApplyEffects
execute on passengers run data modify storage cartographer_custom_statuses:status_inflict data.Effects set from entity @s data.StatusInflict

execute as @e[type=#bb:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/afflict_branch