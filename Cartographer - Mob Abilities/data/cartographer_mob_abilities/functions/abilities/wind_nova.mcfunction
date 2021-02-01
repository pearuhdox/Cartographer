scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

effect give @s slowness 1 6 true

execute as @a[gamemode=survival,distance=..8] at @s run tag @s add wind_novad

execute as @a[gamemode=survival,distance=..8] at @s run scoreboard players set @s damage_queue 8
execute as @a[gamemode=survival,distance=..8] at @s run function cartographer_core:helper/hurt_player/by_score

execute as @a[gamemode=survival,distance=..8] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-1f,Duration:20,DurationOnUse:0,Age:0,WaitTime:0,Color:14284287,Tags:["helper_cloud"],Potion:"minecraft:awkward",Effects:[{Id:25b,Amplifier:39b,Duration:5},{Id:28b,Amplifier:0b,Duration:20}]}

stopsound @a[distance=..16] hostile minecraft:item.elytra.flying
playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.75
playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 1 2

particle minecraft:instant_effect ~ ~ ~ 4 0.2 4 0.1 250 normal @a
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.2 20 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t