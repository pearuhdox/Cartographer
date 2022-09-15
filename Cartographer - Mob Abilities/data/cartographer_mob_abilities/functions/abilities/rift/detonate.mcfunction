particle explosion ~ ~0.25 ~ 0.75 0 0.75 0 6 normal
playsound minecraft:entity.generic.explode hostile @a[distance=..24] ~ ~ ~ 0.75 1.3

scoreboard players set $explosion ca.dmg_type 1

scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..2] cdl.damage_queue = @s ca.ability_dmg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310204
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2] at @s run tag @s remove no_cdl_msg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2] at @s run function cartographer_mob_abilities:helper/epf/damage_reduce/ask_reduction
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2] at @s run function cd:lib/player/damage/normal

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2] at @s unless score @s ca.rift_cooldown matches 1.. run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:abilities/rift/call_rift_traits

scoreboard players set @a[gamemode=!spectator,gamemode=!creative,distance=..2] ca.rift_cooldown 40

kill @s
