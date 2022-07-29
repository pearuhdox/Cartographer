tp @s ^ ^ ^0.25

scoreboard players remove @s ca.raycast 1

execute if entity @a[distance=..1,tag=waiting_loyalty] run playsound minecraft:item.trident.riptide_3 player @a[distance=..1,tag=waiting_loyalty] ~ ~ ~ 0.5 1.5
execute if entity @a[distance=..1,tag=waiting_loyalty] run tag @s add despawn
execute as @a[distance=..1,tag=waiting_loyalty] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/return_item
execute if entity @a[distance=..1,tag=waiting_loyalty] run tag @a[distance=..1] remove waiting_loyalty

execute if entity @s[tag=despawn] run kill @s

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^0.25 run function cartographer_custom_enchantments:enchant_effects/loyalty/movement