scoreboard players remove @s ca.thrusting_charges 1

execute if score @s ca.thrusting_charges matches 0 run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.5 2

tag @s remove showing_thrusting