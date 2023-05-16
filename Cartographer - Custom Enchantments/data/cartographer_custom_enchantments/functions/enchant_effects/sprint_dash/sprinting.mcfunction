execute if score @s[tag=ca.can_sprint_dash] ca.sprint_dash_use matches 1.. run function cartographer_custom_enchantments:enchant_effects/sprint_dash/use

execute store result score @s ca.sprint_dash_x run data get entity @s Pos[0] 100
execute store result score @s ca.sprint_dash_y run data get entity @s Pos[1] 100
execute store result score @s ca.sprint_dash_z run data get entity @s Pos[2] 100
