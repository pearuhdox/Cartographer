execute if score $exalted_type exalted matches 1 run summon zombie ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 2 run summon husk ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 3 run summon drowned ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 4 run summon skeleton ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 5 run summon wither_skeleton ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 6 run summon stray ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 7 run summon vindicator ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 8 run summon pillager ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 9 run summon evoker ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 10 run summon piglin ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 11 run summon piglin_brute ~ ~0.5 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 12 run summon zombified_piglin ~ ~0.5 ~ {Tags:["exalted_respawn"]}

particle minecraft:firework ~ ~1 ~ 0.2 1.25 0.2 0.1 60 normal
playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2 1

data modify storage exalted EntityData set from entity @s HandItems[0].tag.EntityData

execute as @e[tag=exalted_respawn,sort=nearest,limit=1,distance=..2] at @s run function cartographer_mob_abilities:passive/exalted_data

kill @s