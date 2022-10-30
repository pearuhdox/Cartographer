playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 2 0.75
playsound minecraft:entity.spider.death hostile @a[distance=..16] ~ ~ ~ 2 0.5

execute if score $global helper_diff matches 1 if entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 4 0
execute if score $global helper_diff matches 1 unless entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 2 1

execute if score $global helper_diff matches 2 if entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 6 0
execute if score $global helper_diff matches 2 unless entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 3 1

execute if score $global helper_diff matches 3.. if entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 10 0
execute if score $global helper_diff matches 3.. unless entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 5 1