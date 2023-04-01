data remove storage cartographer_mob_abilities:summoner data.tag.EntityTag.id

data modify entity @s {} merge from storage cartographer_mob_abilities:summoner data.tag.EntityTag

tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s co_send 3
scoreboard players set @s co_y 3

function motion:motion/push

tag @s add ca.corpse_crawler_summoned
tag @s add corpse_crawler_checked