playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.5 1.3
playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 1 1.3

attribute @s generic.armor modifier remove 31-131-3118-1161-3500
attribute @s minecraft:generic.knockback_resistance modifier remove 31-131-3118-1161-3500

particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 6 normal

tag @s remove carapaced