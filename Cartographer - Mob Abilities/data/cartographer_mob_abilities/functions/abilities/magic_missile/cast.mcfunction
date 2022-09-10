execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 4 2

#Cast a generic missile
summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],Pose:{LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}

#Add tags to the missile
scoreboard players set $mm_bla ca.var 0
scoreboard players set $mm_gla ca.var 0
scoreboard players set $mm_ove ca.var 0
scoreboard players set $mm_ven ca.var 0
scoreboard players set $mm_zep ca.var 0
scoreboard players set $mm_hor ca.var 0
scoreboard players set $mm_vol ca.var 0
scoreboard players set $mm_alc ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $mm_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $mm_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $mm_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $mm_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $mm_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $mm_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $mm_vol ca.var 1

execute if entity @s[tag=ca.alchemist] unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:abilities/magic_missile/alchemist_save

execute unless entity @s[tag=ca.ignore_traits_active] as @e[type=armor_stand,tag=magic_missile_projectile,limit=1,sort=nearest] run function cartographer_mob_abilities:abilities/magic_missile/set_traits



execute store result score @s ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

scoreboard players operation @e[tag=magic_missile_projectile,sort=nearest,tag=!checked,limit=1] ca.ability_dmg = @s ca.ability_dmg

tp @e[type=armor_stand,tag=magic_missile_projectile,distance=..1,limit=1,sort=nearest] @s
execute as @e[type=armor_stand,tag=magic_missile_projectile,distance=..1,limit=1,sort=nearest] at @s run tp @s ~ ~2 ~ ~ -90

#Run not on hit traits
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test