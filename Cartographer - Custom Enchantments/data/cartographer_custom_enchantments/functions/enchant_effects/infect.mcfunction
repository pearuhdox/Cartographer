function #minecraft:cartographer/events/enchants_mob_hit/ranged/infect

scoreboard players set @s ca.effect_infect 4

tag @s[type=#bb:hostile,tag=is_infection] remove is_infection