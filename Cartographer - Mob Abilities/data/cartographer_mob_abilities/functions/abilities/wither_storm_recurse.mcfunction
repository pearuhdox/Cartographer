execute as @e[tag=wither_storm] at @s run playsound minecraft:entity.wither.shoot hostile @a[distance=..24] ~ ~ ~ 2 2
execute as @e[tag=wither_storm] at @s run particle minecraft:large_smoke ~ ~4 ~ 0.2 1 0.2 0.1 10 normal

scoreboard players remove @e[tag=wither_storm,scores={wither_storms=1..}] wither_storms 1

#tag @e[tag=wither_storm_skull,tag=!spread] add spread

execute as @e[tag=wither_storm] at @s run execute if entity @a[distance=..20,limit=1,sort=random] at @s run summon wither_skull ~ ~4 ~ {Tags:["wither_storm_skull"]}

execute if entity @e[scores={wither_storms=1..}] run schedule function cartographer_mob_abilities:abilities/wither_storm_recurse 2t

execute if entity @e[scores={wither_storms=1}] run schedule function cartographer_mob_abilities:abilities/wither_storm_spread 4t
