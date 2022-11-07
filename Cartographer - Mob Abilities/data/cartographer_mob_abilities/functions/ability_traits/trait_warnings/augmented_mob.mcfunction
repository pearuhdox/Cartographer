#Runs as/at the player's position
execute if entity @s[tag=ca.aug_temp_blazing] at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.05 30 normal @a
execute if entity @s[tag=ca.aug_temp_glacial] at @s run particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0.02 30 normal @a
execute if entity @s[tag=ca.aug_temp_horrifying] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a

execute if entity @s[tag=ca.aug_temp_webbing] at @s run particle minecraft:block minecraft:cobweb ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a

execute if entity @s[tag=ca.aug_temp_cursing] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a
execute if entity @s[tag=ca.aug_temp_cursing] at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal @a

execute if entity @s[tag=ca.aug_temp_overloading] at @s run particle minecraft:wax_off ~ ~1 ~ 0.5 0.5 0.5 1 30 normal @a

execute if entity @s[tag=ca.aug_temp_venemous] at @s run particle minecraft:item_slime ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a
execute if entity @s[tag=ca.aug_temp_zephyrous] at @s run particle minecraft:dust 0.741 0.98 0.949 1 ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a


execute if entity @s[tag=ca.aug_temp_alchemist] run particle minecraft:ambient_entity_effect ~ ~1 ~ 0.5 0.5 0.5 1 30 normal @a

execute if entity @s[tag=ca.aug_temp_volatile] at @s run playsound minecraft:entity.creeper.primed hostile @a[distance=..20] ~ ~ ~ 2 0.75 0.75