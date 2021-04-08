execute if entity @s[tag=rend_arrow] run particle minecraft:block redstone_block ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=conductive_arrow] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=pin_arrow] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=decay_arrow] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=flash_arrow] run particle minecraft:dust 0.945 0.945 0.514 1 ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=frost_arrow] run particle minecraft:item_snowball ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=volatile_arrow] run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=tempo_arrow] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[nbt={inGround:1b}] run tag @s remove custom_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove rend_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove conductive_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove decay_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove flash_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove pin_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove frost_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove volatile_arrow
execute if entity @s[nbt={inGround:1b}] run tag @s remove tempo_arrow