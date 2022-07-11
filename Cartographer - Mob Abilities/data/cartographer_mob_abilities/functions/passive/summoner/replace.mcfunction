execute if score $swap ca.summon_id matches 1 run summon zombie ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 2 run summon husk ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 3 run summon drowned ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 4 run summon skeleton ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 5 run summon stray ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 6 run summon wither_skeleton ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 7 run summon zombified_piglin ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 8 run summon phantom ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 9 run summon spider ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 10 run summon cave_spider ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 11 run summon silverfish ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 12 run summon endermite ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 13 run summon creeper ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 14 run summon enderman ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 15 run summon blaze ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 16 run summon slime ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 17 run summon magma_cube ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 18 run summon ghast ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 19 run summon vindicator ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 20 run summon evoker ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 21 run summon pillager ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 22 run summon vex ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 23 run summon ravager ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 24 run summon guardian ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 25 run summon elder_guardian ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 26 run summon shulker ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 27 run summon zombie_villager ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 28 run summon bee ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 29 run summon piglin ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 30 run summon piglin_brute ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 31 run summon hoglin ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 32 run summon zoglin ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 33 run summon illusioner ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 34 run summon wolf ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 35 run summon rabbit ~ ~-0.5 ~ {Tags:["ca.summoned"]}
execute if score $swap ca.summon_id matches 36 run summon iron_golem ~ ~-0.5 ~ {Tags:["ca.summoned"]}

tp @s ~ -500 ~

particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 15 normal
particle minecraft:portal ~ ~1 ~ 0.1 0.1 0.1 0.5 15 normal

stopsound @a[distance=..16] * minecraft:entity.vex.ambient
stopsound @a[distance=..16] * minecraft:entity.vex.charge