#Give a random enemy close to a player an attack token. This is a nested function. Here, it runs a Line of Sight check.
tag @r add los_target
execute as @a[tag=los_target] at @s run execute as @e[sort=random,limit=1,type=#cartographer_core:hostile,distance=..30,tag=has_active,tag=!tokened,scores={cooldown=0}] at @s run function cartographer_mob_abilities:token/los_check

tag @a remove los_target

#Run 3 Second Passives (Breaker)
execute as @e[type=#cartographer_core:hostile,tag=breaker] at @s run function cartographer_mob_abilities:passive/breaker

#Give players tokens back if eligible.
execute as @a[scores={cooldown=0,helper_tokens=..0,helper_diff=1}] at @s run function cartographer_mob_abilities:token/token_player
execute as @a[scores={cooldown=0,helper_tokens=..1,helper_diff=2}] at @s run function cartographer_mob_abilities:token/token_player
execute as @a[scores={cooldown=0,helper_tokens=..2,helper_diff=3}] at @s run function cartographer_mob_abilities:token/token_player
execute as @a[scores={cooldown=0,helper_tokens=..3,helper_diff=4}] at @s run function cartographer_mob_abilities:token/token_player
execute as @a[scores={cooldown=0,helper_tokens=..4,helper_diff=5}] at @s run function cartographer_mob_abilities:token/token_player

#Remove a cooldown point from the player.
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1

#Check if player cooldown or token scores are not set. Set them to 0 if so.
execute as @a at @s run execute unless entity @s[scores={cooldown=0..}] run scoreboard players set @s cooldown 0
execute as @a at @s run execute unless entity @s[scores={helper_tokens=0..}] run scoreboard players set @s helper_tokens 0