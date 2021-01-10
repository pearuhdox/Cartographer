execute if entity @s[scores={current=1}] run scoreboard players set @e[type=trident,limit=1,sort=nearest] current 1
execute if entity @s[scores={current=1}] run scoreboard players set @e[type=trident,limit=1,sort=nearest,scores={current=1}] helper_lifetime 1
