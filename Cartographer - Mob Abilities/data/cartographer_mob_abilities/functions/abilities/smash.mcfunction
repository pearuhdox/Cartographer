execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ~ ~ ~ run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute as @a[distance=..4.5] at @s run tag @s add smashed
execute as @a[distance=..4.5] at @s run scoreboard players set @s damage_queue 8
execute as @a[distance=..4.5] at @s run function cartographer_core:helper/hurt_player/by_score

data merge entity @s {Motion:[0.0,0.5,0.0]}

data modify entity @s ActiveEffects append value {Id:28b,Duration:10,Amplifier:0b}

tag @s remove airborne
tag @s remove airborne_2
tag @s remove airborne_3
tag @s remove airborne_4
tag @s remove airborne_5
tag @s remove airborne_6
tag @s remove airborne_7
tag @s remove airborne_8
tag @s remove airborne_9
tag @s remove airborne_10

scoreboard players remove @s[scores={recast_count=1..}] recast_count 1

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
execute if entity @s[scores={recast_count=0}] run function cartographer_mob_abilities:helper/token/return
execute if entity @s[scores={recast_count=0}] run tag @s remove attacking
execute if entity @s[scores={recast_count=0}] run tag @s remove tokened
execute if entity @s[scores={recast_count=0}] run tag @s remove can_see_player

schedule function cartographer_mob_abilities:helper/attacked_reset 10t

execute if entity @s[scores={recast_count=1..}] run function cartographer_mob_abilities:charge/smash