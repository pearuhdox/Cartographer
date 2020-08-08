execute if entity @s[scores={tempo_theft=1..}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Nausea 10 Represents Tempo Theft
execute if entity @s[scores={tempo_theft=1..}] run effect give @s minecraft:nausea 3 9 true

#Apply the effect arrow tag
execute if entity @s[scores={tempo_theft=1..}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run tag @s add effect_arrow

#Nausea 11, 12, 13 represent Tempo Theft on mobs.
execute if entity @s[scores={tempo_theft=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:15380735,CustomPotionEffects:[{Id:9b,Amplifier:10b,Duration:100}],Potion:"minecraft:awkward"}
execute if entity @s[scores={tempo_theft=2}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:15380735,CustomPotionEffects:[{Id:9b,Amplifier:11b,Duration:100}],Potion:"minecraft:awkward"}
execute if entity @s[scores={tempo_theft=3}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:15380735,CustomPotionEffects:[{Id:9b,Amplifier:12b,Duration:100}],Potion:"minecraft:awkward"}