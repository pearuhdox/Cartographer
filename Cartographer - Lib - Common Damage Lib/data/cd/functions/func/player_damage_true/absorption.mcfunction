#Get absorption amount
execute store result score $player.Absorption cdl.Temp run data get entity @s AbsorptionAmount

#Saving absorption and clearing it
data modify storage cdl:true_damage_absorption effect set from entity @s ActiveEffects[{Id:22b}]
effect clear @s minecraft:absorption

#Total calculation
scoreboard players operation $player.Absorption cdl.Temp -= @s cdl.Damage_Queue

#amage conditions
execute if score $player.Absorption cdl.Temp matches ..0 run scoreboard players operation @s cdl.Damage_Queue += $player.Absorption cdl.Temp
execute if score $player.Absorption cdl.Temp matches 1.. run function cd:func/player_damage_true/absorption/restore