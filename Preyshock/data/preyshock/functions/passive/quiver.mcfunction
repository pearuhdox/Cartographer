function cartographer_core:helper/randomize

scoreboard players operation @s helper_random = @s random

execute if entity @s[scores={helper_random=1..15}] run replaceitem entity @s weapon.offhand tipped_arrow{CustomPotionEffects:[{Id:19b,Amplifier:0b,Duration:140}],Potion:"minecraft:awkward"} 1

execute if entity @s[scores={helper_random=16..30}] run replaceitem entity @s weapon.offhand tipped_arrow{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:140}],Potion:"minecraft:awkward"} 1

execute if entity @s[scores={helper_random=31..45}] run replaceitem entity @s weapon.offhand tipped_arrow{CustomPotionEffects:[{Id:4b,Amplifier:1b,Duration:140}],Potion:"minecraft:awkward"} 1

execute if entity @s[scores={helper_random=46..60}] run replaceitem entity @s weapon.offhand tipped_arrow{CustomPotionEffects:[{Id:18b,Amplifier:0b,Duration:140}],Potion:"minecraft:awkward"} 1

execute if entity @s[scores={helper_random=61..100}] run replaceitem entity @s weapon.offhand arrow

playsound minecraft:block.wooden_door.open player @a[distance=..16] ~ ~ ~ 1 1.2

particle minecraft:effect ~ ~1 ~ 0.3 0.3 0.3 0 20 normal @a