#Runs as/at the player's position
execute if entity @s[tag=ca.blazing] at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.05 30 normal @a
execute if entity @s[tag=ca.glacial] at @s run particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0.02 30 normal @a
execute if entity @s[tag=ca.horrifying] at @s run particle minecraft:dust 0.259 0.094 0.639 1 ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a

#(Overloading runs twice)
execute if entity @s[tag=ca.overloading] at @s run particle minecraft:wax_off ~ ~1 ~ 0.5 0.5 0.5 1 30 normal @a

execute if entity @s[tag=ca.venemous] at @s run particle minecraft:item_slime ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a
execute if entity @s[tag=ca.zephyrous] at @s run particle minecraft:dust 0.741 0.98 0.949 1 ~ ~1 ~ 0.5 0.5 0.5 0.1 30 normal @a

#Position Independent
execute if entity @s[tag=ca.celestial] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.05 30 normal @a
execute if entity @s[tag=ca.aftershock] run particle minecraft:block dirt ~ ~0.3 ~ 0.5 0.1 0.5 0.05 20 normal @a

#Runs at the mob position
execute if entity @s[tag=ca.predator] at @s run particle minecraft:cloud ~ ~0.2 ~ 0 0 0 0.1 10 normal @a
execute if entity @s[tag=ca.evocative] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.05 30 normal @a
execute if entity @s[tag=ca.volatile] at @s run playsound minecraft:entity.creeper.primed hostile @a[distance=..20] ~ ~ ~ 2 0.75 0.75

#say Running Traits