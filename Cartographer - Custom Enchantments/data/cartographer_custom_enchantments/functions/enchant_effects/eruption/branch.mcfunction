tag @s add erupting_xp

execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run function cartographer_custom_enchantments:enchant_effects/eruption/branch_mob

playsound minecraft:entity.blaze.shoot player @a[distance=..8] ~ ~ ~ 0.5 0.5
particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 1 3 normal 

execute unless score $eruption frostbite matches 1.. unless score $eruption decay matches 1.. unless score $eruption overload matches 1.. unless score $eruption vicious matches 1.. unless score $eruption committed matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_flame
execute if score $eruption frostbite matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_snow
execute if score $eruption vicious matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_bleed
execute if score $eruption decay matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_decay
execute if score $eruption overload matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_shock
execute if score $eruption committed matches 1.. run function cartographer_custom_enchantments:enchant_effects/eruption/particle_commit

tag @s remove erupting_xp