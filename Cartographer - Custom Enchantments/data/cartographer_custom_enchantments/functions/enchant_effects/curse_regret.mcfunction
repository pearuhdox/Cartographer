execute if score @s ca.curse_regret matches 1 run scoreboard players set @s cdl.Damage_Queue 2
execute if score @s ca.curse_regret matches 2 run scoreboard players set @s cdl.Damage_Queue 4
execute if score @s ca.curse_regret matches 3 run scoreboard players set @s cdl.Damage_Queue 6
execute if score @s ca.curse_regret matches 4 run scoreboard players set @s cdl.Damage_Queue 8
execute if score @s ca.curse_regret matches 5.. run scoreboard players set @s cdl.Damage_Queue 10

execute unless entity @s[tag=no_cdl_msg] if score @s ca.curse_regret matches 1.. run scoreboard players set @s cdl.Death_ID 310102
tag @s remove no_cdl_msg

execute if score @s ca.curse_regret matches 1.. run function cd:lib/player/damage/normal