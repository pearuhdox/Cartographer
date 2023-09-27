function cartographer_mob_abilities:death/blood/devious_cleanse

particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:block minecraft:magenta_wool ~ ~1 ~ 0.5 0.5 0.5 1 25 normal

#function cartographer_mob_abilities:death/blood/heal