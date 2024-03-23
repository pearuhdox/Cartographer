scoreboard players remove @s ca.disengage_dur 1

#3149-1951-4717-5-0
execute if score @s ca.disengage_dur matches 21.. run attribute @s minecraft:generic.gravity modifier add 3149-1951-4717-5-0 "sprint_dash" -0.025 add
execute if score @s ca.disengage_dur matches 20 run attribute @s minecraft:generic.gravity modifier remove 3149-1951-4717-5-0

execute if score @s ca.disengage_dur matches 2.. run attribute @s minecraft:generic.safe_fall_distance modifier add 3149-1951-4717-5-0 "sprint_dash" 6 add
execute if score @s ca.disengage_dur matches 1 run attribute @s minecraft:generic.safe_fall_distance modifier remove 3149-1951-4717-5-0
