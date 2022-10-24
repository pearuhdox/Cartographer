data modify entity @s Item set from storage cartographer_mob_abilities:summoner data
tag @s add ca.data_fixed

scoreboard players operation @s ca.summon_id = $summon_id ca.summon_id

execute if entity @s[tag=ca.left] run scoreboard players set @s co_yaw 2
execute if entity @s[tag=ca.right] run scoreboard players set @s co_yaw -2

execute if entity @a[distance=..6] run scoreboard players set @s co_send 5
execute unless entity @a[distance=..6] run scoreboard players set @s co_send 7

scoreboard players set @s co_y 2

function motion:motion/push
