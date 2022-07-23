execute if score @s ca.curse_regret matches 1..4 run scoreboard players set @s cdl.damage_queue 2
execute if score @s ca.curse_regret matches 2..4 run scoreboard players operation @s cdl.damage_queue *= @s ca.curse_regret
execute if score @s ca.curse_regret matches 5.. run scoreboard players set @s cdl.damage_queue 10

execute unless entity @s[tag=no_cdl_msg] if score @s ca.curse_regret matches 1.. run scoreboard players set @s cdl.death_id 310102
tag @s remove no_cdl_msg

execute if score @s ca.curse_regret matches 1.. run function cd:lib/player/damage/normal