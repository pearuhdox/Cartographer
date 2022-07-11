# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 21-25
# Use       : Ran to deal anywhere from 21 to 25 true damage via a max health modifier.

execute if score @s cdl.damage_queue matches 21 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -21 add
execute if score @s cdl.damage_queue matches 22 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -22 add
execute if score @s cdl.damage_queue matches 23 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -23 add
execute if score @s cdl.damage_queue matches 24 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -24 add
execute if score @s cdl.damage_queue matches 25 run attribute @s minecraft:generic.max_health modifier add 31514192-0114-2651-8151-950000000006 "cdl.player.True_Damage_HP_Mod" -25 add