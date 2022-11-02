playsound minecraft:ambient.basalt_deltas.mood player @a[distance=..16] ~ ~ ~ 1.5 2
playsound minecraft:entity.zombie_horse.death hostile @a[distance=..16] ~ ~ ~ 0.4 0.8
playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..16] ~ ~ ~ 0.5 2

particle minecraft:squid_ink ~ ~0.5 ~ 0.35 0.15 0.35 0.07 10 normal

execute if score $global helper_diff matches 1 run effect give @s wither 4 1

execute if score $global helper_diff matches 2 run effect give @s wither 6 1

execute if score $global helper_diff matches 3.. run effect give @s wither 10 1

function cartographer_mob_abilities:ability_traits/curse/get_effects