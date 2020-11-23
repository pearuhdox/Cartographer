execute if entity @s[scores={sharpshot=1..}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

execute if entity @s[scores={sharpshot=1}] run scoreboard players set @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] sharpshot 1
execute if entity @s[scores={sharpshot=2}] run scoreboard players set @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] sharpshot 2
execute if entity @s[scores={sharpshot=3}] run scoreboard players set @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] sharpshot 3

execute if entity @s[type=player,scores={sharpshot=1..}] run playsound minecraft:entity.arrow.hit_player player @a[distance=..10] ~ ~ ~ 0.2 1
execute if entity @s[type=player,scores={sharpshot=1..}] run execute positioned ~ ~1.4 ~ run particle minecraft:composter ^ ^ ^1 0.2 0.2 0.2 0.02 5 normal