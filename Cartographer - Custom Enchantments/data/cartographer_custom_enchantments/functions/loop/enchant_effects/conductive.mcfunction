execute if entity @s[scores={conductive=1}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply the effect arrow tag
execute if entity @s[scores={conductive=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run tag @s add effect_arrow

#Apply Nausea 21 (Shock Apply) for 5 seconds.
execute if entity @s[scores={conductive=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:8912895,CustomPotionEffects:[{Id:9b,Amplifier:20b,Duration:120}],Potion:"minecraft:awkward"}