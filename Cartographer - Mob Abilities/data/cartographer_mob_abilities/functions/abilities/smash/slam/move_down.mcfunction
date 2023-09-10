execute unless score @s ca.smash_air matches 30.. run scoreboard players set @s co_send 8
scoreboard players set @s co_y -2
execute if score @s ca.smash_air matches 33.. run scoreboard players set @s co_y -8

scoreboard players add @s ca.smash_air 3

execute if entity @a[distance=..5] unless score @s ca.smash_air matches 27.. run scoreboard players set @s ca.smash_air 27

function motion:motion/push

function cartographer_mob_abilities:abilities/smash/place_particle

execute unless block ~ ~-0.2 ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:abilities/smash/slam/end