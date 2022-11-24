# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 6-10
# Use       : Ran to deal anywhere from 6 to 10 true damage via a max health modifier.

execute if score @s cdl.damage_queue matches 06 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -6 add
execute if score @s cdl.damage_queue matches 07 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -7 add
execute if score @s cdl.damage_queue matches 08 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -8 add
execute if score @s cdl.damage_queue matches 09 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -9 add
execute if score @s cdl.damage_queue matches 10 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -10 add