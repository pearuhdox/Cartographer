data remove storage cartographer_mob_abilities:summoner data.tag.EntityTag.id

data modify entity @s {} merge from storage cartographer_mob_abilities:summoner data.tag.EntityTag

tp @s ~ ~ ~ facing entity @p feet

tag @s add ca.summoned
tag @s add summon_checked