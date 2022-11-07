data modify entity @s Tags set from storage cartographer_mob_abilities:haunt_tags Tags

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/haunt/alchemist_apply

tag @s add setup

tp @s ~ ~ ~ facing entity @p feet

scoreboard players operation @s ca.ability_dmg = $damage ca.ability_dmg