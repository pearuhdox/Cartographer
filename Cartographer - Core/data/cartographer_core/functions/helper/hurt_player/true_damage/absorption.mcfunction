#getting absorption amount
execute store result score absorption= true_abs run data get entity @s AbsorptionAmount

#debug check past val
scoreboard players operation $absorption= true_abs = absorption= true_abs


#saving absorption and clearing it
data modify storage ca_core:true_dmg_absorption effect set from entity @s ActiveEffects[{Id:22b}]
effect clear @s minecraft:absorption

#total calculation
scoreboard players operation absorption= true_abs -= damage= damage_queue

#scoreboard players remove absorption= true_abs 1

#damage conditions
execute if score absorption= true_abs matches ..0 run scoreboard players operation damage= damage_queue += absorption= true_abs
execute if score absorption= true_abs matches 1.. run function cartographer_core:helper/hurt_player/true_damage/absorption/restore