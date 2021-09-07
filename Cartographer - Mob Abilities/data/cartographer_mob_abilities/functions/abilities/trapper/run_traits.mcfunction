execute if entity @s[tag=!called_trait] as @a[distance=..1.8] at @s run tag @s add ability_tagged

execute if entity @s[tag=!called_trait] if entity @a[distance=..1.8] run function cartographer_mob_abilities:ability_traits/call_all_traits

#execute if entity @s[tag=!called_trait] if entity @a[distance=..1.8] run kill @s

execute if entity @s[tag=!called_trait] as @a[distance=..1.8] at @s run tag @s remove ability_tagged

execute if entity @a[distance=..1.8] run tag @s add called_trait
