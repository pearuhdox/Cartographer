scoreboard players set $brittled ca.cauterize 0
scoreboard players set $other ca.cauterize 1

scoreboard players operation $cauterize ca.ench_var = @s ca.cauterize

function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize


#Resets
scoreboard players set $other ca.cauterize 0

tag @s remove is_cauterize

tag @s remove is_cauterize_1
tag @s remove is_cauterize_2
tag @s remove is_cauterize_3
tag @s remove is_cauterize_4
tag @s remove is_cauterize_5