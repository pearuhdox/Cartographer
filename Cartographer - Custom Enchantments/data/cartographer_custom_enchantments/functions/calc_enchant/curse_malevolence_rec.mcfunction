execute store result score $temp ca.susu run data get storage ca.susu:enchants arr[0].Slot
execute if score $temp ca.susu matches ..8 run scoreboard players add @s ca.curse_mal 1
execute if score $temp ca.susu matches 100.. run scoreboard players add @s ca.curse_mal 1
data remove storage ca.susu:enchants arr[0]
execute if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:calc_enchant/curse_malevolence_rec