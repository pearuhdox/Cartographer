execute if entity @s[scores={frost=1}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply the effect arrow tag
execute if entity @s[scores={frost=1..}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run tag @s add effect_arrow

#Apply Slowness 2 for 5 seconds to the arrow.
execute if entity @s[scores={frost=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:11783423,Potion:"minecraft:awkward"}
execute if entity @s[scores={frost=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data modify entity @s CustomPotionEffects append value {Id:2b,Amplifier:1b,Duration:100}
