
#Get absorption amount
execute store result score $player.absorption bbl.storage run data get entity @s AbsorptionAmount

#Saving absorption and clearing it
data modify storage bbl:true_damage_absorption effect set from entity @s ActiveEffects[{Id:22}]
effect clear @s minecraft:absorption

#Total calculation
scoreboard players operation $player.absorption bbl.storage -= @s bbl.damage_queue

#Damage conditions
execute if score $player.absorption bbl.storage matches ..0 run scoreboard players operation @s bbl.damage_queue += $player.absorption bbl.storage
execute if score $player.absorption bbl.storage matches 1.. run function bb:lib/hpm/player_damage_true/absorption/restore
