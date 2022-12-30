execute if entity @a[distance=..10,scores={helper_power=8..11}] run attribute @s minecraft:generic.attack_damage base set 2
execute if entity @a[distance=..10,scores={helper_power=8..11}] run attribute @s minecraft:generic.armor base set 5
execute if entity @a[distance=..10,scores={helper_power=8..11}] run attribute @s minecraft:generic.knockback_resistance base set 0.15

execute if entity @a[distance=..10,scores={helper_power=12..15}] run attribute @s minecraft:generic.attack_damage base set 4
execute if entity @a[distance=..10,scores={helper_power=12..15}] run attribute @s minecraft:generic.armor base set 10
execute if entity @a[distance=..10,scores={helper_power=12..15}] run attribute @s minecraft:generic.knockback_resistance base set 0.2

execute if entity @a[distance=..10,scores={helper_power=16..19}] run attribute @s minecraft:generic.attack_damage base set 6
execute if entity @a[distance=..10,scores={helper_power=16..19}] run attribute @s minecraft:generic.armor base set 15
execute if entity @a[distance=..10,scores={helper_power=16..19}] run attribute @s minecraft:generic.knockback_resistance base set 0.35

execute if entity @a[distance=..10,scores={helper_power=20..}] run attribute @s minecraft:generic.attack_damage base set 8
execute if entity @a[distance=..10,scores={helper_power=20..}] run attribute @s minecraft:generic.armor base set 20
execute if entity @a[distance=..10,scores={helper_power=20..}] run attribute @s minecraft:generic.knockback_resistance base set 0.5