execute unless entity @s[tag=ca.temp_token] run scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

tag @s remove ca.has_kited
tag @s remove ca.has_gap_closed
tag @s remove ca.has_strafed
tag @s remove ca.has_retreated

tag @s remove warned

tag @s remove ca.temp_token

scoreboard players set @s ca.accelerate_stacks 0

execute if entity @s[tag=ca.shrieked] run tag @s remove ca.has_active