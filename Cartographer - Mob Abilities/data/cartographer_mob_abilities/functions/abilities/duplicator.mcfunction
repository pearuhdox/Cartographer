scoreboard players set @s cooldown 20

scoreboard players set @s ability_charge 0

effect give @s slowness 1 6 true

particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 40

particle minecraft:smoke ~ ~ ~ 0.5 0.3 0.5 0.05 40

execute if entity @s[type=zombie] run summon zombie ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=zombie] run summon zombie ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=husk] run summon husk ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=husk] run summon husk ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=drowned] run summon drowned ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=drowned] run summon drowned ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=skeleton] run summon skeleton ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=skeleton] run summon skeleton ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=stray] run summon stray ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=stray] run summon stray ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=wither_skeleton] run summon wither_skeleton ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=wither_skeleton] run summon wither_skeleton ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=zombified_piglin] run summon zombified_piglin ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=zombified_piglin] run summon zombified_piglin ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=piglin] run summon piglin ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=piglin] run summon piglin ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=vindicator] run summon vindicator ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=vindicator] run summon vindicator ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=pillager] run summon pillager ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=pillager] run summon pillager ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=creeper] run summon creeper ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=creeper] run summon creeper ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=spider] run summon spider ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=spider] run summon spider ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=pillager] run summon cave_spider ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute if entity @s[type=pillager] run summon cave_spider ~ ~ ~ {DeathLootTable:"nothing",Tags:["duplicate","has_active"]}

execute as @e[tag=duplicate,distance=..1] at @s run data modify entity @s ArmorItems set from entity @e[tag=duplicator,distance=..1,limit=1] ArmorItems

execute as @e[tag=duplicate,distance=..1] at @s run data modify entity @s HandItems set from entity @e[tag=duplicator,distance=..1,limit=1] HandItems

#execute as @e[tag=duplicate,distance=..1] at @s run data modify entity @s Attributes set from entity @e[tag=duplicator,distance=..1,limit=1] Attributes

execute as @e[tag=duplicate,distance=..1] at @s run data modify entity @s CustomName set from entity @e[tag=duplicator,distance=..1,limit=1] CustomName

execute as @e[tag=duplicate,distance=..1] at @s run data modify entity @s Health set value 5

scoreboard players set @e[tag=duplicate,distance=..2] cooldown 10

playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 3 1.3

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 3
tag @s remove tokened
