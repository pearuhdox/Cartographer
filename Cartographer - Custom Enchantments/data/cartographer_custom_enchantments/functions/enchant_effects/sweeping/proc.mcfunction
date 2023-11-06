playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 1

particle minecraft:sweep_attack ^ ^0.75 ^1.25 0 0 0 0.2 1 force

execute store result score $damage ca.sweeping run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.sweeping *= $80 ca.CONSTANT
scoreboard players operation $damage ca.sweeping /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.sweeping

execute anchored eyes positioned ^ ^-0.5 ^2 positioned ~-1 ~ ~-1 as @e[type=#bb:hostile,dx=3,dy=1,dz=3] at @s run function cartographer_custom_enchantments:enchant_effects/sweeping/damage with storage cartographer:macro.custom_enchantments

execute unless entity @s[tag=ca.sweep_schedule_success] run function cartographer_custom_enchantments:enchant_effects/sweeping/consume