scoreboard players remove @s ca.sweeping_charges 1

execute if score @s ca.sweeping_charges matches 0 run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.5 2

tag @s remove showing_sweeping

function cartographer_custom_enchantments:enchant_effects/sweeping/schedule_start_success