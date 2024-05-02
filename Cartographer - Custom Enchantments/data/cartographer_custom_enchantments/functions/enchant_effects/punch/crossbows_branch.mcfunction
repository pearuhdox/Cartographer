scoreboard players set @s ca.lifetime 1

#Apply Punch tags to the arrow.
execute if score $ranged ca.punch matches 1 run tag @s add punch_1
execute if score $ranged ca.punch matches 2 run tag @s add punch_2
execute if score $ranged ca.punch matches 3 run tag @s add punch_3
execute if score $ranged ca.punch matches 4 run tag @s add punch_4
execute if score $ranged ca.punch matches 5 run tag @s add punch_5

execute if score $ranged ca.punch matches 1.. run tag @s add custom_arrow
