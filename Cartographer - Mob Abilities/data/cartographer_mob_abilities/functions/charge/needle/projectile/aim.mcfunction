scoreboard players set in math 1
scoreboard players set in1 math 6

function cartographer_core:helper/math/rng/range

scoreboard players operation @s ca.aim = out math

execute if score @s ca.aim matches 1 facing entity @p eyes rotated ~3 ~ run tp @s ~ ~ ~ ~ ~
execute if score @s ca.aim matches 2 facing entity @p eyes rotated ~-3 ~ run tp @s ~ ~ ~ ~ ~

execute if score @s ca.aim matches 3 facing entity @p eyes rotated ~3 ~2 run tp @s ~ ~ ~ ~ ~
execute if score @s ca.aim matches 4 facing entity @p eyes rotated ~-3 ~2 run tp @s ~ ~ ~ ~ ~

execute if score @s ca.aim matches 5 facing entity @p eyes rotated ~3 ~-2 run tp @s ~ ~ ~ ~ ~
execute if score @s ca.aim matches 6 facing entity @p eyes rotated ~-3 ~-2 run tp @s ~ ~ ~ ~ ~

#Transfer parent tags over to AEC
data modify entity @s Tags set from storage cartographer_mob_abilities:info needle.Tags

#Transfer damage amount over to AEC
scoreboard players operation @s ca.ability_dmg = $needle_damage ca.ability_dmg

tag @s add aimed