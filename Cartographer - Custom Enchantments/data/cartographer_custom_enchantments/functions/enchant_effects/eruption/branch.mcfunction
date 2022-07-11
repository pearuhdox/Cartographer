tag @s add erupting_xp

execute as @e[type=#bb:hostile,distance=..8] at @s run function cartographer_custom_enchantments:enchant_effects/eruption/branch_mob

playsound minecraft:entity.blaze.shoot player @a[distance=..8] ~ ~ ~ 0.5 0.5
particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 1 3 normal 

execute unless score $eruption ca.frostbite matches 1.. unless score $eruption ca.infection matches 1.. unless score $eruption ca.electrocute matches 1.. unless score $eruption ca.bleeding matches 1.. unless score $eruption ca.exposing matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_flame
execute if score $eruption ca.frostbite matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_snow
execute if score $eruption ca.bleeding matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_bleed
execute if score $eruption ca.infection matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_infection
execute if score $eruption ca.electrocute matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_shock
execute if score $eruption ca.exposing matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_commit
execute if score $eruption ca.possession matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_possession

tag @s remove erupting_xp