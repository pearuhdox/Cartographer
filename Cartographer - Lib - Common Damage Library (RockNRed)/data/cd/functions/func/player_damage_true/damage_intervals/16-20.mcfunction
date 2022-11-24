# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 16-20
# Use       : Ran to deal anywhere from 16 to 20 true damage via a max health modifier.

execute if score @s cdl.damage_queue matches 16 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -16 add
execute if score @s cdl.damage_queue matches 17 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -17 add
execute if score @s cdl.damage_queue matches 18 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -18 add
execute if score @s cdl.damage_queue matches 19 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -19 add
execute if score @s cdl.damage_queue matches 20 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -20 add