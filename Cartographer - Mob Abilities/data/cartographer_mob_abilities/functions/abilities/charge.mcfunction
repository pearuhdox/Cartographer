scoreboard players set @s ca.raycast 21

tag @s add has_charged

function cartographer_mob_abilities:abilities/charge/calc_damage

execute store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
execute store result storage cartographer:macro.mob_abilities aim_direction_y int 1 run scoreboard players get @s ca.aim_direction_y
function cartographer_mob_abilities:abilities/charge/macro with storage cartographer:macro.mob_abilities

#Trait Effects (outside of raycast call)
execute if entity @a[tag=ability_tagged] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

execute as @a[distance=..16] run tag @s remove ran_over

execute as @a[distance=..16] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16] ~ ~ ~ 2 2

#Reset is done in reset function to give half second delay between accelerate calls