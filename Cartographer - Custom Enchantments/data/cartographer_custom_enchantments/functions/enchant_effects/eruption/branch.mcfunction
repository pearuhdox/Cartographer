tag @s add erupting_xp

execute as @e[type=#bb:hostile,distance=..8] at @s run function cartographer_custom_enchantments:enchant_effects/eruption/branch_mob

playsound minecraft:entity.blaze.shoot player @a[distance=..8] ~ ~ ~ 0.5 0.5
particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 1 3 normal 

execute unless score $eruption ca.frostbite matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_flame
execute if score $eruption ca.frostbite matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_snow
execute if score $eruption ca.evocation matches 1.. rotated as @p rotated ~ 0 run function cartographer_custom_enchantments:enchant_effects/eruption/evocation_fangs

data modify storage cartographer_custom_statuses:apply_effects data.Effects set value {}
data modify storage cartographer_custom_statuses:status_inflict data.Effects set value {}

tag @s remove erupting_xp