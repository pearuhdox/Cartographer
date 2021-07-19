execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s mob_move_dis 12

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run scoreboard players set @s cdl.Damage_Queue 8
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run scoreboard players set @s cdl.Death_ID 310210
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run function cd:lib/player/damage/normal

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run summon area_effect_cloud ~ ~0.75 ~ {Radius:1.5f,RadiusPerTick:0f,RadiusOnUse:-5f,Duration:20,DurationOnUse:0,Age:0,WaitTime:0,Color:14284287,Tags:["helper_cloud"],Potion:"minecraft:awkward",Effects:[{Id:25b,Amplifier:39b,Duration:5},{Id:28b,Amplifier:0b,Duration:20}]}
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..8] at @s run effect give @s weakness 4 1

stopsound @a[distance=..16] hostile minecraft:item.elytra.flying
playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.75
playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.end_portal.spawn player @a[distance=..16] ~ ~ ~ 0.5 1.75

particle minecraft:instant_effect ~ ~ ~ 4 0.2 4 0.1 250 normal @a
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.2 20 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player