execute if entity @s[scores={pin_down=1}] run scoreboard players set @e[type=arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply the effect arrow tag
execute if entity @s[scores={pin_down=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run tag @s add effect_arrow

#Apply Bad Omen 2 (Vulnerability 2) for 5 seconds.
execute if entity @s[scores={pin_down=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data merge entity @s {Color:745784,Potion:"minecraft:awkward"}
execute if entity @s[scores={pin_down=1}] run execute as @e[type=arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] run data modify entity @s CustomPotionEffects append value {Id:31b,Amplifier:1b,Duration:100}
