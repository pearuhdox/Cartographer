function cartographer_mob_abilities:projectiles/target/player

#execute as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~0.75 ~

execute unless entity @a[distance=..5] if entity @s[tag=ca.shoot_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~3 ~
execute unless entity @a[distance=..8] if entity @s[tag=ca.shoot_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~
execute unless entity @a[distance=..11] if entity @s[tag=ca.shoot_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~

execute if entity @s[tag=ca.shoot_arrow] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.15 ~
execute if entity @s[tag=ca.shoot_trident] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.15 ~

execute if entity @s[tag=ca.shoot_trap] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~3 ~

execute if entity @s[tag=ca.shoot_grenade] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~

execute if entity @s[tag=ca.shoot_shulker_bullet] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~

execute if entity @s[tag=ca.shoot_magic_missile] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~9 ~

execute if entity @s[tag=ca.shoot_needle] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~0.5 ~

execute unless entity @a[distance=..5] if entity @s[tag=ca.shoot_wither_skull] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.shoot_small_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.shoot_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.shoot_dragon_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~

particle minecraft:poof ~ ~ ~ 0 0 0 0.04 1 normal

scoreboard players set $inaccurate ca.xyz_convert 1
scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -2
scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 2
scoreboard players set $inaccuracy_pitch_min ca.xyz_convert 0
scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 1


execute if entity @s[tag=ca.shoot_trap] run scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -1
execute if entity @s[tag=ca.shoot_trap] run scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 3
execute if entity @s[tag=ca.shoot_trap] run scoreboard players set $inaccuracy_pitch_min ca.xyz_convert -1
execute if entity @s[tag=ca.shoot_trap] run scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 3

execute if entity @s[tag=ca.shoot_grenade] run scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -6
execute if entity @s[tag=ca.shoot_grenade] run scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 6
execute if entity @s[tag=ca.shoot_grenade] run scoreboard players set $inaccuracy_pitch_min ca.xyz_convert -3
execute if entity @s[tag=ca.shoot_grenade] run scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 3

execute unless entity @s[tag=ca.shoot_grenade] run scoreboard players set $reduced_power ca.xyz_convert 4

#Grab Starting Attack Damage Value
execute store result score $damage ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

#Save All Relevant Data
function cartographer_mob_abilities:projectiles/data/get/master_call

execute if entity @s[tag=ca.shoot_arrow] run function cartographer_mob_abilities:projectiles/create/arrow
execute if entity @s[tag=ca.shoot_trident] run function cartographer_mob_abilities:projectiles/create/trident
execute if entity @s[tag=ca.shoot_potion] run function cartographer_mob_abilities:projectiles/create/potion
execute if entity @s[tag=ca.shoot_trap] run function cartographer_mob_abilities:projectiles/create/trap
execute if entity @s[tag=ca.shoot_grenade] run function cartographer_mob_abilities:projectiles/create/grenade
execute if entity @s[tag=ca.shoot_shulker_bullet] run function cartographer_mob_abilities:projectiles/create/shulker_bullet
execute if entity @s[tag=ca.shoot_magic_missile] run function cartographer_mob_abilities:projectiles/create/magic_missile
execute if entity @s[tag=ca.shoot_needle] run function cartographer_mob_abilities:projectiles/create/needle
execute if entity @s[tag=ca.shoot_rift] run function cartographer_mob_abilities:projectiles/create/rift
execute if entity @s[tag=ca.shoot_lightning] run function cartographer_mob_abilities:projectiles/create/lightning
execute if entity @s[tag=ca.shoot_wither_skull] run function cartographer_mob_abilities:projectiles/create/wither_skull
execute if entity @s[tag=ca.shoot_small_fireball] run function cartographer_mob_abilities:projectiles/create/small_fireball
execute if entity @s[tag=ca.shoot_fireball] run function cartographer_mob_abilities:projectiles/create/fireball
execute if entity @s[tag=ca.shoot_dragon_fireball] run function cartographer_mob_abilities:projectiles/create/dragon_fireball

