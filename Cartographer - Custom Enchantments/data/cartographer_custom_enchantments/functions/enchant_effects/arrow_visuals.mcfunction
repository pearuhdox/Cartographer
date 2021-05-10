execute if entity @s[scores={rend=1..}] run particle minecraft:block redstone_block ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={conductive=1..}] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={pin_down=1..}] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.1 3 normal
execute if entity @s[scores={putrefy=1..}] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={flash=1..}] run particle minecraft:dust 0.945 0.945 0.514 1 ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={frost=1..}] run particle minecraft:item_snowball ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={volatile=1..}] run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={tempo_theft=1..}] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

scoreboard players add @s helper_lifetime 1

execute if entity @s[nbt={inGround:1b}] run tag @s remove custom_arrow