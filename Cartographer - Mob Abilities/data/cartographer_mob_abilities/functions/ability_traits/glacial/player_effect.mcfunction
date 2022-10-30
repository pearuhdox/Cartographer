playsound minecraft:block.glass.break hostile @a[distance=..16] ~ ~ ~ 3 0.8

execute if score $global helper_diff matches 1 run scoreboard players set @s ca.glacial_slow 81
execute if score $global helper_diff matches 2 run scoreboard players set @s ca.glacial_slow 121
execute if score $global helper_diff matches 3.. run scoreboard players set @s ca.glacial_slow 161



attribute @s generic.movement_speed modifier remove 31-1315-2129-1212-71213
attribute @s generic.attack_speed modifier remove 31-1315-2129-1212-71213