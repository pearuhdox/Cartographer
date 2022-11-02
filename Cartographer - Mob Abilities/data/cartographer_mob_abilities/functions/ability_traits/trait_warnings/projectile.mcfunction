#Runs as/at the player's position
execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~ ~ 0 0 0 0.05 1 normal @a
execute if entity @s[tag=ca.glacial] run particle minecraft:snowflake ~ ~ ~ 0 0 0 0.2 1 normal @a
execute if entity @s[tag=ca.horrifying] run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.05 1 normal @a

execute if entity @s[tag=ca.webbing] run particle minecraft:block minecraft:cobweb ~ ~ ~ 0 0 0 0.05 1 normal @a

execute if entity @s[tag=ca.cursing] run particle minecraft:ash ~ ~ ~ 0.3 0.3 0.3 1 20 normal @a

#(Overloading runs twice)
execute if entity @s[tag=ca.overloading] run particle minecraft:wax_off ~ ~ ~ 0.2 0.2 0.2 1 1 normal @a

execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~ ~ 0 0 0 1 1 normal @a
execute if entity @s[tag=ca.zephyrous] run particle cloud ~ ~ ~ 0 0 0 0.1 1 normal @a

#Position Independent
execute if entity @s[tag=ca.celestial] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.05 1 normal @a

execute if entity @s[tag=ca.alchemist] run particle minecraft:ambient_entity_effect ~ ~ ~ 0.2 0.2 0.2 1 1 normal @a

#Runs at the mob position
execute if entity @s[tag=ca.volatile] run playsound minecraft:entity.creeper.primed hostile @a[distance=..12] ~ ~ ~ 0.6 0.75 0.75
execute if entity @s[tag=ca.volatile] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 1 normal @a

#say Running Traits