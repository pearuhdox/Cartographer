scoreboard players operation $rally_restore ca.rally = @s ca.rally_mark_amt

scoreboard players set @s ca.rally_mark_amt 0
tag @s remove ca.rally_marked
scoreboard players set @s ca.rally_mark_dur 0

function #minecraft:cartographer/events/enchants_mob_hit/passive/rally