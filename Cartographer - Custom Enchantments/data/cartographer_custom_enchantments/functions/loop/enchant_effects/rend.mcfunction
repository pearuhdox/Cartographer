execute if entity @s[scores={rend=1}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply the effect arrow tag
execute if entity @s[scores={rend=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run tag @s add effect_arrow

#Apply Nausea 20 (Bleed for 5 seconds) for 5 seconds.
execute if entity @s[scores={rend=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:6362132,CustomPotionEffects:[{Id:9b,Amplifier:19b,Duration:120}],Potion:"minecraft:awkward"}