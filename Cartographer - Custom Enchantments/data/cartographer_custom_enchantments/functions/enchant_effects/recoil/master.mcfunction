execute if score @s ca.recoil_count matches 1.. unless score @s ca.recoil_time matches 1.. unless score @s ca.sneak matches 1.. run scoreboard players set @s ca.recoil_time 1

function #minecraft:cartographer/events/enchantments/ranged/recoil
