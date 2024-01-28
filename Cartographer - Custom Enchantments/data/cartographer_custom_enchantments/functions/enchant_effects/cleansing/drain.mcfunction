scoreboard players add @s ca.cleanse_stacks 1

execute if score @s ca.cleanse_stacks matches 1..2 run effect give @s hunger 10 0
execute if score @s ca.cleanse_stacks matches 3..4 run effect give @s hunger 10 1
execute if score @s ca.cleanse_stacks matches 5..6 run effect give @s hunger 10 2
execute if score @s ca.cleanse_stacks matches 7..8 run effect give @s hunger 10 3
execute if score @s ca.cleanse_stacks matches 9.. run effect give @s hunger 10 4