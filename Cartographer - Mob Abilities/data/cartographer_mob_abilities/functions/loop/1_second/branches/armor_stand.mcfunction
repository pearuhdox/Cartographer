#Add lifetime to ability markers. Kill them if they are too old. Remove old Invulnerable notices.
execute as @s[type=armor_stand,tag=ability_marker] run function cartographer_mob_abilities:loop/1_second/ability_marker_branch
execute as @s[type=armor_stand,tag=invulnerable_notice] at @s run function cartographer_mob_abilities:passive/purge_notices

#Exalted Weapon Despawning
scoreboard players add @s[type=armor_stand,tag=exalted_weapon] exalted 1
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run playsound minecraft:block.bell.use hostile @a[distance=..12] ~ ~ ~ 0.1 2
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run playsound minecraft:entity.player.levelup hostile @a[distance=..12] ~ ~ ~ 0.5 2
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run particle minecraft:cloud ~ ~1 ~ 0.1 0.5 0.1 0.1 20 normal
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run kill @s