execute if entity @s[nbt={ActiveEffects:[{Id:15b}]}] run attribute @s minecraft:generic.follow_range modifier add 0-0-0-1-5 blind -100 add
execute if entity @s[nbt={ActiveEffects:[{Id:15b,Duration:1}]}] run attribute @s minecraft:generic.follow_range modifier remove 0-0-0-1-5
