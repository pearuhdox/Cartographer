particle minecraft:cloud ~ ~1 ~ 0.25 0.4 0.25 0.05 15 normal
particle minecraft:sculk_soul ~ ~ ~ 0.25 0.4 0.25 0.1 15 normal
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 normal

playsound minecraft:entity.allay.death hostile @a[distance=..12] ~ ~ ~ 0.5 1.5

execute if entity @s[type=#bb:undead] run playsound minecraft:entity.zombie_villager.death hostile @a ~ ~ ~ 0.5 0.75
execute if entity @s[type=#bb:arthropod] run playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 0.5 0.75
execute if entity @s[type=#bb:nether] run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 0.5 0.75
execute if entity @s[type=#bb:monstrous] run playsound minecraft:entity.shulker.death hostile @a ~ ~ ~ 0.5 0.75
execute if entity @s[type=#bb:humanoid] run playsound minecraft:entity.vindicator.death hostile @a ~ ~ ~ 0.5 0.75

tp @s ~ -500 ~

kill @s