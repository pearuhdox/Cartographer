data remove storage cartographer_mob_abilities:summoner data.tag.EntityTag.id

data modify entity @s {} merge from storage cartographer_mob_abilities:summoner data.tag.EntityTag

tp @s ~ ~ ~ facing entity @p feet

execute if score $legionary_close ca.var matches 1 run scoreboard players set @s co_send -6
execute if score $legionary_close ca.var matches 2 run scoreboard players set @s co_send 9

execute if score $legionary_close ca.var matches 1 run scoreboard players set @s co_y 3
execute if score $legionary_close ca.var matches 2 run scoreboard players set @s co_y 4

function motion:motion/push

tag @s add ca.legioned
tag @s add legion_checked