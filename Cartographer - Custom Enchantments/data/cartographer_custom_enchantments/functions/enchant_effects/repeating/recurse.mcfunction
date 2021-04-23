data modify storage cartographer_core:pl_data working_data.RepeatingTest set value {}

scoreboard players set $arrow_type repeating 0

scoreboard players set $arrow_type repeating 1
data modify storage cartographer_core:pl_data working_data.RepeatingTest_temp set value []
data modify storage cartographer_core:pl_data working_data.RepeatingTest_temp append from entity @s Inventory[{id:"minecraft:tipped_arrow"}]
data modify storage cartographer_core:pl_data working_data.RepeatingTest set from storage cartographer_core:pl_data working_data.RepeatingTest_temp[0]
execute if data storage cartographer_core:pl_data working_data.RepeatingTest.id run tag @s add loading_tipped

execute unless entity @s[tag=loading_tipped] run scoreboard players set $arrow_type repeating 2
execute unless entity @s[tag=loading_tipped] run data modify storage cartographer_core:pl_data working_data.RepeatingTest set from entity @s Inventory[{id:"minecraft:spectral_arrow"}]
execute unless entity @s[tag=loading_tipped] run execute if data storage cartographer_core:pl_data working_data.RepeatingTest.id run tag @s add loading_spectral

execute unless entity @s[tag=loading_tipped] run execute unless entity @s[tag=loading_spectral] run scoreboard players set $arrow_type repeating 3
execute unless entity @s[tag=loading_tipped] run execute unless entity @s[tag=loading_spectral] run data modify storage cartographer_core:pl_data working_data.RepeatingTest set from entity @s Inventory[{id:"minecraft:arrow"}]
execute unless entity @s[tag=loading_tipped] run execute unless entity @s[tag=loading_spectral] run execute if data storage cartographer_core:pl_data working_data.RepeatingTest.id run tag @s add loading_normal

execute unless data storage cartographer_core:pl_data working_data.RepeatingTest.id run scoreboard players set @s helper_ammo 0

execute if data storage cartographer_core:pl_data working_data.RepeatingTest.id run data modify storage cartographer_core:pl_data working_data.RepeatingList append from storage cartographer_core:pl_data working_data.RepeatingTest

scoreboard players add $ammo_save helper_ammo 1

clear @s[gamemode=!creative,tag=loading_normal,scores={helper_ammo=2..}] arrow 1
clear @s[gamemode=!creative,tag=loading_spectral,scores={helper_ammo=2..}] spectral_arrow 1
clear @s[gamemode=!creative,tag=loading_tipped,scores={helper_ammo=2..}] tipped_arrow 1

tag @s remove loading_tipped
tag @s remove loading_spectral
tag @s remove loading_normal

scoreboard players remove @s[scores={helper_ammo=1..}] helper_ammo 1
execute if entity @s[scores={helper_ammo=1..}] run function cartographer_custom_enchantments:enchant_effects/repeating/recurse