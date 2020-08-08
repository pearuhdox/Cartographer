function cartographer_core:helper/randomize

scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={echo=1,helper_melee=..20}] run particle minecraft:enchant ^ ^1 ^1 0.25 0.25 0.25 1 30 normal
execute if entity @s[scores={echo=2,helper_melee=..40}] run particle minecraft:enchant ^ ^1 ^1 0.25 0.25 0.25 1 30 normal
execute if entity @s[scores={echo=3,helper_melee=..60}] run particle minecraft:enchant ^ ^1 ^1 0.25 0.25 0.25 1 30 normal

execute if entity @s[scores={echo=1,helper_melee=..20}] run playsound minecraft:block.enchantment_table.use player @p ~ ~ ~ 1 2
execute if entity @s[scores={echo=2,helper_melee=..40}] run playsound minecraft:block.enchantment_table.use player @p ~ ~ ~ 1 2
execute if entity @s[scores={echo=3,helper_melee=..60}] run playsound minecraft:block.enchantment_table.use player @p ~ ~ ~ 1 2

execute if entity @s[scores={echo=1,helper_melee=..20}] run effect give @s haste 1 9 true
execute if entity @s[scores={echo=2,helper_melee=..40}] run effect give @s haste 1 9 true
execute if entity @s[scores={echo=3,helper_melee=..60}] run effect give @s haste 1 9 true