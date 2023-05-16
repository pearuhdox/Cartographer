scoreboard players set $temp ca.susu -2000
execute store result score $temp ca.susu run data get storage ca.susu:enchants arr[0].Slot

execute if score $temp ca.susu matches 0 run tag @s add ca.rust_1
execute if score $temp ca.susu matches 1 run tag @s add ca.rust_2
execute if score $temp ca.susu matches 2 run tag @s add ca.rust_3
execute if score $temp ca.susu matches 3 run tag @s add ca.rust_4
execute if score $temp ca.susu matches 4 run tag @s add ca.rust_5
execute if score $temp ca.susu matches 5 run tag @s add ca.rust_6
execute if score $temp ca.susu matches 6 run tag @s add ca.rust_7
execute if score $temp ca.susu matches 7 run tag @s add ca.rust_8
execute if score $temp ca.susu matches 8 run tag @s add ca.rust_9

execute if score $temp ca.susu matches 100 run tag @s add ca.rust_feet
execute if score $temp ca.susu matches 101 run tag @s add ca.rust_legs
execute if score $temp ca.susu matches 102 run tag @s add ca.rust_body
execute if score $temp ca.susu matches 103 run tag @s add ca.rust_head

execute if score $temp ca.susu matches -106 run tag @s add ca.rust_offh

execute if score $temp ca.susu matches -106 run scoreboard players add @s ca.curse_rusting 1
execute if score $temp ca.susu matches 0..9 run scoreboard players add @s ca.curse_rusting 1
execute if score $temp ca.susu matches 100..103 run scoreboard players add @s ca.curse_rusting 1

data remove storage ca.susu:enchants arr[0]
execute if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:calc_enchant/curse_rusting/rec