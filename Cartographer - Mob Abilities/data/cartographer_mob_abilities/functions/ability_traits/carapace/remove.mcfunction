playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 1.3
playsound minecraft:entity.shulker.hurt_closed hostile @a[distance=..16] ~ ~ ~ 1 0.5

particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 6 normal

scoreboard players remove @s ca.carapace_stacks 1

execute if score @s ca.carapace_stacks matches 1 run summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["invulnerable_notice"],CustomName:'{"text":"🛡 Carapace (1/4) 🛡","color":"#B1E5DC","bold":true,"italic":false}'}
execute if score @s ca.carapace_stacks matches 2 run summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["invulnerable_notice"],CustomName:'{"text":"🛡 Carapace (2/4) 🛡","color":"#B1E5DC","bold":true,"italic":false}'}
execute if score @s ca.carapace_stacks matches 3 run summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["invulnerable_notice"],CustomName:'{"text":"🛡 Carapace (3/4) 🛡","color":"#B1E5DC","bold":true,"italic":false}'}

execute if score @s ca.carapace_stacks matches 0 run function cartographer_mob_abilities:ability_traits/carapace/clear