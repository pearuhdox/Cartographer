function cartographer_mob_abilities:projectiles/target/player

execute as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~-3 ~

execute if entity @s[tag=ca.sh_small_fireball] if entity @a[distance=..5] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute if entity @s[tag=ca.sh_wither_skull] if entity @a[distance=..5] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~

execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..5] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..6.5] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~0.5 ~
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..8] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..9.5] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~0.5 ~
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..11] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..14] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..17] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~

execute unless entity @a[distance=..4] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1 ~
execute unless entity @a[distance=..8] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~
execute unless entity @a[distance=..11] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~3 ~
execute unless entity @a[distance=..14] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~
execute unless entity @a[distance=..17] if entity @s[tag=ca.sh_potion] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~5 ~

execute if entity @s[tag=ca.sh_arrow] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.25 ~
execute if entity @s[tag=ca.sh_trident] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.25 ~

execute if entity @s[tag=ca.sh_trap] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~3 ~

execute if entity @s[tag=ca.sh_grenade] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~

execute if entity @s[tag=ca.sh_shulker_bullet] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~4 ~

execute if entity @s[tag=ca.sh_magic_missile] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~

execute if entity @s[tag=ca.sh_needle] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~0.5 ~

execute unless entity @a[distance=..3] if entity @s[tag=ca.sh_wither_skull] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~
execute unless entity @a[distance=..3] if entity @s[tag=ca.sh_small_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~
execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_dragon_fireball] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~1.5 ~

particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.04 1 force

scoreboard players set $reduced_power ca.xyz_convert -8
execute unless entity @s[tag=ca.sh_needle] unless entity @a[distance=..14] run scoreboard players set $reduced_power ca.xyz_convert -16

execute if entity @s[tag=ca.sh_potion] run scoreboard players set $reduced_power ca.xyz_convert -10
execute unless entity @a[distance=..5] if entity @s[tag=ca.sh_potion] run scoreboard players set $reduced_power ca.xyz_convert -12
execute unless entity @a[distance=..8] if entity @s[tag=ca.sh_potion] run scoreboard players set $reduced_power ca.xyz_convert -14

execute if entity @s[tag=ca.sh_grenade] run scoreboard players set $reduced_power ca.xyz_convert -12
execute if entity @s[tag=ca.sh_grenade] unless entity @a[distance=..14] run scoreboard players set $reduced_power ca.xyz_convert -16


#Grab Starting Attack Damage Value
function cartographer_mob_abilities:abilities/sniper_shot/calc_damage


#Save All Relevant Data
function cartographer_mob_abilities:projectiles/data/get/master_call

execute if entity @s[tag=ca.sh_arrow] run function cartographer_mob_abilities:projectiles/create/arrow
execute if entity @s[tag=ca.sh_trident] run function cartographer_mob_abilities:projectiles/create/trident
execute if entity @s[tag=ca.sh_potion] run function cartographer_mob_abilities:projectiles/create/potion
execute if entity @s[tag=ca.sh_trap] run function cartographer_mob_abilities:projectiles/create/trap
execute if entity @s[tag=ca.sh_grenade] run function cartographer_mob_abilities:projectiles/create/grenade
execute if entity @s[tag=ca.sh_shulker_bullet] run function cartographer_mob_abilities:projectiles/create/shulker_bullet
execute if entity @s[tag=ca.sh_magic_missile] run function cartographer_mob_abilities:projectiles/create/magic_missile
execute if entity @s[tag=ca.sh_needle] run function cartographer_mob_abilities:projectiles/create/needle
execute if entity @s[tag=ca.sh_rift] run function cartographer_mob_abilities:projectiles/create/rift
execute if entity @s[tag=ca.sh_lightning] run function cartographer_mob_abilities:projectiles/create/lightning
execute if entity @s[tag=ca.sh_wither_skull] run function cartographer_mob_abilities:projectiles/create/wither_skull
execute if entity @s[tag=ca.sh_small_fireball] run function cartographer_mob_abilities:projectiles/create/small_fireball
execute if entity @s[tag=ca.sh_fireball] run function cartographer_mob_abilities:projectiles/create/fireball
execute if entity @s[tag=ca.sh_dragon_fireball] run function cartographer_mob_abilities:projectiles/create/dragon_fireball

