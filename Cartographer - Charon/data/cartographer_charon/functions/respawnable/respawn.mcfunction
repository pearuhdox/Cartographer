effect give @p darkness 3 0 true
execute positioned as @p run tp @p ~ ~ ~ facing entity @s feet
summon lightning_bolt ~ ~500 ~ {Silent:1b}

effect give @s glowing 3 0

playsound minecraft:entity.lightning_bolt.impact player @a[distance=..12] ~ ~ ~ 1.5 0.75

playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 1 0.5
playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 1 0.5
playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 1 0.5
playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 1 0.5
playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 1 0.5

particle minecraft:glow ~ ~0.8 ~ 0.25 0.3 0.25 5 30 normal
particle minecraft:wax_off ~ ~4 ~ 0.3 2 0.3 2 50 normal
particle minecraft:poof ~ ~3 ~ 0 1 0 0 15 normal

execute at @p run effect give @e[type=#bb:hostile,distance=..15] blindness 7 0

execute at @p run particle glow ~ ~ ~ 0.4 0.1 0.4 0.1 40 normal @a