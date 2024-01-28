playsound minecraft:block.bell.resonate player @p ~ ~ ~ 2 2
tag @s add ca.cleanse_drain
summon potion ~ ~1.9 ~ {Motion:[0.0,-10.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}

function #minecraft:cartographer/events/enchantments/passive/cleansing
