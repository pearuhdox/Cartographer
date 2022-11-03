playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1.5 0.8
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.5 0.8

function cartographer_mob_abilities:abilities/storm/visuals/master/line
function cartographer_mob_abilities:abilities/storm/visuals/master/detonate

scoreboard players operation $lightning ca.ability_dmg = @s ca.ability_dmg

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/storm/alchemist_get_effects

tag @a[distance=..2] add ability_tagged

function cartographer_mob_abilities:abilities/storm/call_storm_traits

execute as @a[distance=..2] at @s run function cartographer_mob_abilities:abilities/storm/detonate_player
execute positioned ~-0.5 ~2 ~-0.5 as @a[dx=0,dz=0,dy=4] at @s run function cartographer_mob_abilities:abilities/storm/detonate_player

kill @s