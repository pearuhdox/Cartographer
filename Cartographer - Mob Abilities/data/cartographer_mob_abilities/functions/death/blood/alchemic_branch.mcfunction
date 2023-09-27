particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 normal

scoreboard players set @s mob_move_dis 7
execute summon minecraft:area_effect_cloud run function cartographer_mob_abilities:death/blood/alchemic_set_effects

#function cartographer_mob_abilities:death/blood/heal