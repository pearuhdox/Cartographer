execute if score $exalted_type exalted matches 1 run summon zombie ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 2 run summon husk ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 3 run summon drowned ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 4 run summon skeleton ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 5 run summon stray ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 6 run summon wither_skeleton ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 7 run summon zombified_piglin ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 8 run summon phantom ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 9 run summon spider ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 10 run summon cave_spider ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 11 run summon silverfish ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 12 run summon endermite ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 13 run summon creeper ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 14 run summon enderman ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 15 run summon blaze ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 16 run summon slime ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 17 run summon magma_cube ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 18 run summon ghast ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 19 run summon vindicator ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 20 run summon evoker ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 21 run summon pillager ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 22 run summon vex ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 23 run summon ravager ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 24 run summon guardian ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 25 run summon elder_guardian ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 26 run summon shulker ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 27 run summon zombie_villager ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 28 run summon bee ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 29 run summon piglin ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 30 run summon piglin_brute ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 31 run summon hoglin ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 32 run summon zoglin ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 33 run summon illusioner ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 34 run summon wolf ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 35 run summon rabbit ~ ~0.65 ~ {Tags:["exalted_respawn"]}
execute if score $exalted_type exalted matches 36 run summon iron_golem ~ ~0.65 ~ {Tags:["exalted_respawn"]}

particle minecraft:firework ~ ~1 ~ 0.2 1.25 0.2 0.1 60 normal
playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2 1

data modify storage exalted EntityData set from entity @s HandItems[0].tag.EntityData

execute as @e[tag=exalted_respawn,sort=nearest,limit=1,distance=..2] at @s run function cartographer_mob_abilities:death/exalted/data

kill @s