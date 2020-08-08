scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply Fire to the arrow.
execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Fire:2000}