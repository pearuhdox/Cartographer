#Give a random enemy close to a player an attack token.
execute as @r at @s run execute as @e[sort=random,limit=1,type=#cartographer_core:hostile,tag=has_active,tag=!tokened,scores={cooldown=0}] at @s run function cartographer_mob_abilities:token/token_enemy

#Run 3 Second Passives (Breaker)
execute if entity @e[tag=breaker] run execute as @e[tag=breaker] at @s run function cartographer_mob_abilities:passive/breaker

#Give players tokens back if eligible.
execute as @a at @s run function cartographer_mob_abilities:token/token_player


#Check if player cooldown or token scores are not set. Set them to 0 if so.
execute as @a at @s run execute unless entity @s[scores={cooldown=0..}] run scoreboard players set @s cooldown 0
execute as @a at @s run execute unless entity @s[scores={helper_tokens=0..}] run scoreboard players set @s helper_tokens 0

schedule function cartographer_mob_abilities:loop/3_second/base 3s