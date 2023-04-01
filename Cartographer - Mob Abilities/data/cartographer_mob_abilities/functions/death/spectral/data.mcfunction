data remove storage cartographer_mob_abilities:summoner data.tag.EntityTag.id
data modify entity @s {} merge from storage cartographer_mob_abilities:summoner data.tag.EntityTag

tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s co_y 2

function motion:motion/push

tag @s add ca.spectre
tag @s add spectre_checked