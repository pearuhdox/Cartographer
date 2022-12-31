execute as @e[type=#bb:hostile,distance=..8] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/mob_branch

playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 5 1.5

particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

tag @s remove evading

function cartographer_custom_enchantments:enchant_effects/evasion/prime

function #minecraft:cartographer/events/enchantments/passive/evasion