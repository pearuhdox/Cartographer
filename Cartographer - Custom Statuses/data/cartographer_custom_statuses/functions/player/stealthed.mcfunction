particle minecraft:smoke ~ ~0.1 ~ 0.15 0.1 0.15 0.025 1 normal


execute unless entity @s[tag=ca.stealthed] run playsound minecraft:item.firecharge.use player @a[distance=..12] ~ ~ ~ 0.5 0.5
execute unless entity @s[tag=ca.stealthed] run playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 0.5 0.75
execute unless entity @s[tag=ca.stealthed] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 1 0 1 0.05 15 normal
tag @s add ca.stealthed