data modify storage cartographer_mob_abilities:summoner data set value {}
data modify storage cartographer_mob_abilities:summoner data set from entity @s HandItems[1]

execute unless score @s ca.summon_id matches 1.. run function cartographer_mob_abilities:ability_traits/legionary/find_type

scoreboard players operation $summon_id ca.summon_id = @s ca.summon_id

execute facing entity @p feet run function cartographer_mob_abilities:ability_traits/legionary/create_eggs

playsound minecraft:entity.vex.charge hostile @a[distance=..16] ~ ~ ~ 2 0.75 1
playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..16] ~ ~ ~ 1 1.3 1