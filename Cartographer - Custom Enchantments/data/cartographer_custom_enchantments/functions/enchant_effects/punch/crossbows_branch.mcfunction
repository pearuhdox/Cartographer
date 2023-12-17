scoreboard players set @s ca.lifetime 1

#Apply Punch tags to the arrow.
scoreboard players operation @s ca.punch = $ranged ca.punch

execute if score $ranged ca.punch matches 1.. run tag @s add custom_arrow
