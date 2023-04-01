execute positioned ^ ^ ^9 run function cartographer_mob_abilities:projectiles/target/position

execute as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~-1 ~

execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~3 ~
execute unless entity @a[distance=..8] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~
execute unless entity @a[distance=..11] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~

execute if entity @s[tag=ca.sh_arrow] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute if entity @s[tag=ca.sh_trident] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~

execute if entity @s[tag=ca.sh_trap] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~3 ~

execute if entity @s[tag=ca.sh_grenade] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~

execute if entity @s[tag=ca.sh_shulker_bullet] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~

execute if entity @s[tag=ca.sh_magic_missile] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~9 ~

execute if entity @s[tag=ca.sh_needle] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~0.5 ~

execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_wither_skull] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_small_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_dragon_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~


scoreboard players set $inaccurate ca.xyz_convert 1
scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -2
scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 2
scoreboard players set $inaccuracy_pitch_min ca.xyz_convert 0
scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 1


execute if entity @s[tag=ca.sh_trap] run scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -1
execute if entity @s[tag=ca.sh_trap] run scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 3
execute if entity @s[tag=ca.sh_trap] run scoreboard players set $inaccuracy_pitch_min ca.xyz_convert -1
execute if entity @s[tag=ca.sh_trap] run scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 3

execute if entity @s[tag=ca.sh_grenade] run scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -4
execute if entity @s[tag=ca.sh_grenade] run scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 4
execute if entity @s[tag=ca.sh_grenade] run scoreboard players set $inaccuracy_pitch_min ca.xyz_convert -4
execute if entity @s[tag=ca.sh_grenade] run scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 4

execute unless entity @s[tag=ca.sh_grenade] run scoreboard players set $reduced_power ca.xyz_convert 2

execute if entity @s[tag=ca.sh_magic_missile] run scoreboard players set $inaccuracy_yaw_min ca.xyz_convert -4
execute if entity @s[tag=ca.sh_magic_missile] run scoreboard players set $inaccuracy_yaw_max ca.xyz_convert 4
execute if entity @s[tag=ca.sh_magic_missile] run scoreboard players set $inaccuracy_pitch_min ca.xyz_convert -4
execute if entity @s[tag=ca.sh_magic_missile] run scoreboard players set $inaccuracy_pitch_max ca.xyz_convert 4
execute if entity @s[tag=ca.sh_magic_missile] run function cartographer_mob_abilities:projectiles/helper/get_motion_value/add_inaccuracy_no_motion

#Grab Starting Attack Damage Value
function cartographer_mob_abilities:animations/barrage/calc_damage

#Save All Relevant Data
function cartographer_mob_abilities:projectiles/data/get/master_call

execute if entity @s[tag=ca.sh_arrow] run function cartographer_mob_abilities:projectiles/create/arrow
execute if entity @s[tag=ca.sh_trident] run function cartographer_mob_abilities:projectiles/create/trident
execute if entity @s[tag=ca.sh_potion] run function cartographer_mob_abilities:projectiles/create/potion
execute if entity @s[tag=ca.sh_trap] run function cartographer_mob_abilities:projectiles/create/trap
execute if entity @s[tag=ca.sh_grenade] run function cartographer_mob_abilities:projectiles/create/grenade
execute if entity @s[tag=ca.sh_shulker_bullet] run function cartographer_mob_abilities:projectiles/create/shulker_bullet
execute if entity @s[tag=ca.sh_magic_missile] run function cartographer_mob_abilities:projectiles/create/magic_missile
execute if score $needle_mod ability_charge matches 1 if entity @s[tag=ca.sh_needle] positioned ^1 ^ ^-1 run function cartographer_mob_abilities:projectiles/create/needle
execute if score $needle_mod ability_charge matches 4 if entity @s[tag=ca.sh_needle] positioned ^ ^ ^-1 run function cartographer_mob_abilities:projectiles/create/needle
execute if score $needle_mod ability_charge matches 7 if entity @s[tag=ca.sh_needle] positioned ^-1 ^ ^-1 run function cartographer_mob_abilities:projectiles/create/needle
execute if entity @s[tag=ca.sh_boomerang] run function cartographer_mob_abilities:projectiles/create/boomerang
execute if entity @s[tag=ca.sh_rift] run function cartographer_mob_abilities:projectiles/create/rift
execute if entity @s[tag=ca.sh_lightning] run function cartographer_mob_abilities:projectiles/create/lightning
execute if entity @s[tag=ca.sh_wither_skull] run function cartographer_mob_abilities:projectiles/create/wither_skull
execute if entity @s[tag=ca.sh_small_fireball] run function cartographer_mob_abilities:projectiles/create/small_fireball
execute if entity @s[tag=ca.sh_fireball] run function cartographer_mob_abilities:projectiles/create/fireball
execute if entity @s[tag=ca.sh_dragon_fireball] run function cartographer_mob_abilities:projectiles/create/dragon_fireball
execute if entity @s[tag=ca.sh_spit] run function cartographer_mob_abilities:projectiles/create/spit

