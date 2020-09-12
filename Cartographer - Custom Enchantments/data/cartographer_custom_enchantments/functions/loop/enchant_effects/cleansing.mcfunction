execute if entity @s[scores={s_cleansing=1},nbt={ActiveEffects:[{Id:2b}]}] run tag @s add slow_cleanse

execute if entity @s[scores={f_cleansing=1},nbt={ActiveEffects:[{Id:4b}]}] run tag @s add fatigue_cleanse

execute if entity @s[scores={w_cleansing=1},nbt={ActiveEffects:[{Id:18b}]}] run tag @s add weak_cleanse

execute if entity @s[scores={p_cleansing=1},nbt={ActiveEffects:[{Id:19b}]}] run tag @s add poison_cleanse

execute if entity @s[scores={wi_cleansing=1},nbt={ActiveEffects:[{Id:20b}]}] run tag @s add wither_cleanse

execute if entity @s[tag=slow_cleanse,nbt={ActiveEffects:[{Id:2b}]}] run playsound minecraft:block.bell.resonate player @p ~ ~ ~ 2 2

execute if entity @s[tag=fatigue_cleanse,nbt={ActiveEffects:[{Id:4b}]}] run playsound minecraft:block.bell.resonate player @p ~ ~ ~ 2 2

execute if entity @s[tag=weak_cleanse,nbt={ActiveEffects:[{Id:18b}]}] run playsound minecraft:block.bell.resonate player @p ~ ~ ~ 2 2

execute if entity @s[tag=poison_cleanse,nbt={ActiveEffects:[{Id:19b}]}] run playsound minecraft:block.bell.resonate player @p ~ ~ ~ 2 2

execute if entity @s[tag=wither_cleanse,nbt={ActiveEffects:[{Id:20b}]}] run playsound minecraft:block.bell.resonate player @p ~ ~ ~ 2 2

execute if entity @s[tag=slow_cleanse,nbt={ActiveEffects:[{Id:2b}]}] run effect give @s minecraft:hunger 10 3

execute if entity @s[tag=fatigue_cleanse,nbt={ActiveEffects:[{Id:4b}]}] run effect give @s minecraft:hunger 10 3

execute if entity @s[tag=weak_cleanse,nbt={ActiveEffects:[{Id:18b}]}] run effect give @s minecraft:hunger 10 3

execute if entity @s[tag=poison_cleanse,nbt={ActiveEffects:[{Id:19b}]}] run effect give @s minecraft:hunger 10 3

execute if entity @s[tag=wither_cleanse,nbt={ActiveEffects:[{Id:20b}]}] run effect give @s minecraft:hunger 10 3

execute if entity @s[tag=slow_cleanse,nbt={ActiveEffects:[{Id:2b}]}] run effect clear @s minecraft:slowness

execute if entity @s[tag=fatigue_cleanse,nbt={ActiveEffects:[{Id:4b}]}] run effect clear @s minecraft:mining_fatigue

execute if entity @s[tag=weak_cleanse,nbt={ActiveEffects:[{Id:18b}]}] run effect clear @s minecraft:weakness

execute if entity @s[tag=poison_cleanse,nbt={ActiveEffects:[{Id:19b}]}] run effect clear @s minecraft:poison

execute if entity @s[tag=wither_cleanse,nbt={ActiveEffects:[{Id:20b}]}] run effect clear @s minecraft:wither

tag @s remove poison_cleanse

tag @s remove fatigue_cleanse

tag @s remove slow_cleanse

tag @s remove weak_cleanse

tag @s remove wither_cleanse

