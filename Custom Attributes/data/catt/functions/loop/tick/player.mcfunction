#Run the attribute giver here

execute if score @s catt.time matches 5 run function catt:apply/master

scoreboard players add @s catt.time 1
execute if score @s catt.time matches 6.. run scoreboard players set @s catt.time 1

execute if score @s catt.bow matches 1.. run function catt:shoot/bow
execute if score @s catt.crossbow matches 1.. run function catt:shoot/crossbow
execute if score @s catt.trident matches 1.. run function catt:shoot/trident

scoreboard players operation @s catt.range.prev = @s catt.stat.range

scoreboard players set @s catt.bow 0
scoreboard players set @s catt.crossbow 0
scoreboard players set @s catt.trident 0