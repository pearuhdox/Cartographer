execute if entity @s[scores={trueshot=1}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

execute if entity @s[scores={trueshot=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] at @s run data merge entity @s {NoGravity:1}