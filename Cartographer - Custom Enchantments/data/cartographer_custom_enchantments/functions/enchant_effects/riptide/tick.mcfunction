scoreboard players set $hit ca.riptide 0

execute store result score $damage ca.riptide run attribute @s minecraft:generic.attack_damage get
execute if score @s ca.hydraulic matches 1.. at @s run scoreboard players operation $damage ca.riptide /= $2 ca.CONSTANT

scoreboard players operation $fire ca.riptide = @s ca.fire_aspect
scoreboard players operation $knockback ca.riptide = @s ca.knockback
scoreboard players operation $frostbite ca.riptide = @s ca.frostbite
scoreboard players operation $exec ca.riptide = @s ca.executioner
scoreboard players operation $cauterize ca.riptide = @s ca.cauterize


execute unless score @s ca.hydraulic matches 1.. anchored eyes positioned ^ ^-0.6 ^0.75 as @e[distance=..2.2,type=#bb:hostile,sort=nearest,limit=1] at @s run function cartographer_custom_enchantments:enchant_effects/riptide/hit
execute if score @s ca.hydraulic matches 1.. anchored eyes positioned ^ ^-0.6 ^0.75 if entity @e[distance=..2.2,type=#bb:hostile,sort=nearest,limit=1] as @e[distance=..3.75,type=#bb:hostile] at @s run function cartographer_custom_enchantments:enchant_effects/riptide/hit

scoreboard players remove @s ca.riptide_time 1

execute if score $hit ca.riptide matches 1.. run tp @s @s

execute unless block ~ ~-0.01 ~ #cartographer_core:can_raycast run scoreboard players remove @s ca.riptide_time 5
execute if score $hit ca.riptide matches 1.. run scoreboard players set @s ca.riptide_time 0
execute if score $hit ca.riptide matches 1.. if score @s ca.riptide_count matches 1.. run scoreboard players set @s ca.riptide_count_time 1

execute if score @s ca.riptide_time matches ..0 unless score $hit ca.riptide matches 1.. run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 2


scoreboard players operation $mod ca.riptide_time = @s ca.riptide_time
scoreboard players operation $mod ca.riptide_time %= $8 ca.CONSTANT

execute anchored eyes rotated ~ 0 run particle minecraft:cloud ^ ^-0.4 ^-1.5 0 0 0 0.1 1 normal

execute if score $mod ca.riptide_time matches 0 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^ ^-1.2 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 1 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^0.45 ^-0.8 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 2 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^0.8 ^-0.4 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 3 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^0.45 ^0.1 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 4 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^ ^0.4 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 5 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^-0.45 ^0.1 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 6 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^-0.8 ^-0.4 ^-1 0 0 0 0 1 force
execute if score $mod ca.riptide_time matches 7 anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.784 1.8 ^-0.45 ^-0.8 ^-1 0 0 0 0 1 force





