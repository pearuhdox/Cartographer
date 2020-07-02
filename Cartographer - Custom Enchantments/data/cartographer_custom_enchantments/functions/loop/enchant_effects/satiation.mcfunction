execute if entity @s[scores={satiation=1,helper_kill=1..}] run effect give @s saturation 1 0 true
execute if entity @s[scores={satiation=2,helper_kill=1..}] run effect give @s saturation 1 1 true
execute if entity @s[scores={satiation=3,helper_kill=1..}] run effect give @s saturation 1 2 true
execute if entity @s[scores={satiation=4,helper_kill=1..}] run effect give @s saturation 1 3 true
execute if entity @s[scores={satiation=5,helper_kill=1..}] run effect give @s saturation 1 4 true
execute if entity @s[scores={satiation=6,helper_kill=1..}] run effect give @s saturation 1 5 true

playsound minecraft:entity.generic.eat player @a[distance=..8] ~ ~ ~ 5 1.25