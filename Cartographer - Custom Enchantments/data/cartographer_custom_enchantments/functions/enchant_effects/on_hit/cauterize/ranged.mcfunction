execute if entity @s[tag=is_cauterize] run scoreboard players set $brittled ca.cauterize 0
execute if entity @s[tag=is_cauterize] run scoreboard players set $ranged ca.cauterize 1

execute if entity @s[tag=is_cauterize] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize


#Resets
scoreboard players set $ranged ca.cauterize 0


tag @s remove is_cauterize

tag @s remove is_cauterize_1
tag @s remove is_cauterize_2
tag @s remove is_cauterize_3
tag @s remove is_cauterize_4
tag @s remove is_cauterize_5