scoreboard players set @e[type=#bb:arrow,limit=3,distance=..3,sort=nearest] ca.lifetime 1

#Apply Fire to the arrow.
execute as @e[type=#bb:arrow,limit=3,sort=nearest,scores={ca.lifetime=1}] run data merge entity @s {Fire:2000}