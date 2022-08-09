scoreboard players operation @s ca.rally_damage /= $40 ca.CONSTANT

execute if score @s ca.rally_damage matches 0 run scoreboard players set @s ca.rally_damage 1 

execute if score @s ca.rally_damage > @s ca.rally_bank run scoreboard players operation @s ca.rally_damage = @s ca.rally_bank

execute if score @s ca.rally_bank matches 1.. if score @s ca.rally_damage matches 1.. run function cd:lib/player/heal
execute if score @s ca.rally_bank matches 1.. if score @s ca.rally_damage matches 1.. run playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 2

scoreboard players operation @s ca.rally_bank -= @s ca.rally_damage

scoreboard players operation @s cdl.heal_queue = @s ca.rally_damage

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 2