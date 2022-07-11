# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 1-5
# Use       : Ran to deal anywhere from 1 to 5 true damage via a max health modifier.

execute if score @s cdl.damage_queue matches 01 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -1 add
execute if score @s cdl.damage_queue matches 02 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -2 add
execute if score @s cdl.damage_queue matches 03 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -3 add
execute if score @s cdl.damage_queue matches 04 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -4 add
execute if score @s cdl.damage_queue matches 05 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -5 add