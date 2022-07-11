# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 36-40
# Use       : Ran to deal anywhere from 36 to 40 true damage via a max health modifier.

execute if score @s cdl.damage_queue matches 36 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -36 add
execute if score @s cdl.damage_queue matches 37 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -37 add
execute if score @s cdl.damage_queue matches 38 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -38 add
execute if score @s cdl.damage_queue matches 39 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -39 add
execute if score @s cdl.damage_queue matches 40.. run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -40 add