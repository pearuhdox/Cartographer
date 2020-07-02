execute if entity @s[scores={sharpshot=1..}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

execute if entity @s[scores={sharpshot=1}] run scoreboard players set @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] sharpshot 1
execute if entity @s[scores={sharpshot=2}] run scoreboard players set @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] sharpshot 2
execute if entity @s[scores={sharpshot=3}] run scoreboard players set @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] sharpshot 3
