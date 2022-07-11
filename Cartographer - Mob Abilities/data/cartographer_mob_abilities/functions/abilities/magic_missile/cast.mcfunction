execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 4 2

#Cast a trait missile
execute if entity @s[tag=ca.volatile,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;74006677,1113408302,-2031464240,1928709901],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE2YzZlMzU3NTk0ZWQzYTQxOGU0ZTE4MjIzYjEzMWNiMGEyYzY4NjQ0MTg0NjU4OGM1YTI0YTVmZjRjIn19fQ=="}]}}}}]}
execute if entity @s[tag=ca.volatile] run tag @s add casted_missile

execute if entity @s[tag=ca.blazing,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1185639029,1846363053,-1787704507,813969860],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUwMDI5MmY0YWZlNTJkMTBmMjk5ZGZiMjYwMzYzMjI4MzA0NTAzMzFlMDAzMDg0YmIyMjAzMzM1MzA2NjRlMSJ9fX0="}]}}}}]}
execute if entity @s[tag=ca.blazing] run tag @s add casted_missile

execute if entity @s[tag=ca.glacial,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1693906174,2001095101,-1414613378,-1290065675],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWU1OTI0Nzk4YTQ4N2Y5OWJhMDhlNTRhNWIxMzA2OTJjYzU4NjkwMmE4N2UxZGVlMjEzODEzZWY4YzY2In19fQ=="}]}}}}]}
execute if entity @s[tag=ca.glacial] run tag @s add casted_missile

execute if entity @s[tag=ca.overloading,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;840442344,808341467,-1098961563,768567377],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDY5OTRkNzFiODc1ZjA4N2U2NGRlYTliNGEwYTVjYjlmNGViOWFiMGU4ZDkwNjBkZmRlN2Y2ODAzYmFhMTc3OSJ9fX0="}]}}}}]}
execute if entity @s[tag=ca.overloading] run tag @s add casted_missile

execute if entity @s[tag=ca.venemous,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2005034609,78401485,-1304821334,-2063198474],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEyYTAzYTRjMTFiNGQ0NzI0NzJlN2U0NTkzZDJlMTI2YTYyNTllMzNjYzgxZjQ0ZWIwNWNmMDQyZDA3Njk2NyJ9fX0="}]}}}}]}
execute if entity @s[tag=ca.venemous] run tag @s add casted_missile

execute if entity @s[tag=ca.zephyrous,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1901391180,-981119600,-1617867937,795265780],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjgyMjAyODJmMmVlNTk5NTExYjRmYzc0NjExMWM5NzM2ZDdiNDkxZThiY2ZiNjQ4YThhMTU2MjkyODFlZTUifX19"}]}}}}]}
execute if entity @s[tag=ca.zephyrous] run tag @s add casted_missile

execute if entity @s[tag=ca.horrifying,tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1048396531,2059159011,-1939323280,-630683356],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIwMWFlMWE4YTA0ZGY1MjY1NmY1ZTQ4MTNlMWZiY2Y5Nzg3N2RiYmZiYzQyNjhkMDQzMTZkNmY5Zjc1MyJ9fX0="}]}}}}]}
execute if entity @s[tag=ca.horrifying] run tag @s add casted_missile

#Add tags to the missile
scoreboard players set $mm_bla ca.var 0
scoreboard players set $mm_gla ca.var 0
scoreboard players set $mm_ove ca.var 0
scoreboard players set $mm_ven ca.var 0
scoreboard players set $mm_zep ca.var 0
scoreboard players set $mm_hor ca.var 0
scoreboard players set $mm_vol ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $mm_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $mm_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $mm_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $mm_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $mm_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $mm_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $mm_vol ca.var 1

execute as @e[type=armor_stand,tag=magic_missile_projectile] run function cartographer_mob_abilities:abilities/magic_missile/set_traits

#Cast a generic missile
execute if entity @s[tag=!casted_missile] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["magic_missile_hitbox"],Attributes:[{Name:generic.max_health,Base:2}]}],NoGravity:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
tag @s remove casted_missile

execute store result score @s ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

scoreboard players operation @e[tag=magic_missile_projectile,sort=nearest,tag=!checked,limit=1] ca.ability_dmg = @s ca.ability_dmg

tp @e[type=armor_stand,tag=magic_missile_projectile,distance=..1,limit=1,sort=nearest] @s
execute as @e[type=armor_stand,tag=magic_missile_projectile,distance=..1,limit=1,sort=nearest] at @s run tp @s ~ ~2 ~ ~ -90

#Run not on hit traits
function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test