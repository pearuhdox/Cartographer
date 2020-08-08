execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run effect give @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] speed 8 0
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run effect give @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] speed 8 0
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run effect give @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] speed 8 0

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run effect give @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] haste 8 0
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run effect give @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] haste 8 1

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] at @s run particle minecraft:dust 1 0.6 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 normal
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] at @s run particle minecraft:dust 1 0.6 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 normal
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] at @s run particle minecraft:dust 1 0.6 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 normal

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 2
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 2
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:9b}]}] at @s run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 2

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run particle minecraft:dust 1 0.6 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 normal
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run particle minecraft:dust 1 0.6 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 normal
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run particle minecraft:dust 1 0.6 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 normal

effect clear @s nausea