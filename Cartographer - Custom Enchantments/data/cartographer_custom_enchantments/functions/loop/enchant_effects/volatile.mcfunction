execute if entity @s[scores={volatile=1..}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply the effect arrow tag
execute if entity @s[scores={volatile=1..}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run tag @s add effect_arrow

#Apply effect 30 for 5 seconds to the arrow. This is what Volatile tests for.
execute if entity @s[scores={volatile=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:16763940,CustomPotionEffects:[{Id:30b,Amplifier:10b,Duration:100}],Potion:"minecraft:awkward"}
execute if entity @s[scores={volatile=2}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:16763940,CustomPotionEffects:[{Id:30b,Amplifier:11b,Duration:100}],Potion:"minecraft:awkward"}
execute if entity @s[scores={volatile=3}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:16763940,CustomPotionEffects:[{Id:30b,Amplifier:12b,Duration:100}],Potion:"minecraft:awkward"}