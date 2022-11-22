data modify entity @s Tags set from storage cartographer_mob_abilities:info rift.Tags

scoreboard players operation @s ca.ability_dmg = $damage ca.ability_dmg

function cartographer_mob_abilities:abilities/rift/alchemist_apply

execute unless entity @s[tag=ca.inverse] run tp @s ~ ~ ~ ~180 0

execute if entity @s[tag=ca.chase] run scoreboard players operation @s ca.lifetime -= $chase_buffer ca.mob_var
execute if entity @s[tag=ca.chase] run scoreboard players add $chase_buffer ca.mob_var 10

