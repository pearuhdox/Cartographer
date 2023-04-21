execute if score $abs_save rph.act_bar matches 2001.. unless score $health rph.act_bar matches 2001.. run data modify storage rph:text Generated append from storage rph:text Templates.13NegSpacer
execute if score $health rph.act_bar matches 2001.. unless score $abs_save rph.act_bar matches 2001.. run data modify storage rph:text Generated append from storage rph:text Templates.13NegSpacer
execute if score $health rph.act_bar matches 2001.. if score $abs_save rph.act_bar matches 2001.. run data modify storage rph:text Generated append from storage rph:text Templates.13NegSpacer

execute if score $armor_10 rph.act_bar matches 2 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum2
execute if score $armor_10 rph.act_bar matches 3 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum3
execute if score $armor_10 rph.act_bar matches 4 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum4
execute if score $armor_10 rph.act_bar matches 5 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum5
execute if score $armor_10 rph.act_bar matches 6 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum6
execute if score $armor_10 rph.act_bar matches 7 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum7
execute if score $armor_10 rph.act_bar matches 8 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum8
execute if score $armor_10 rph.act_bar matches 9 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum9

execute if score $armor_10 rph.act_bar matches 10.. run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum1
execute if score $armor_10 rph.act_bar matches 10.. run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum0



execute if score $armor_1 rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum0
execute if score $armor_1 rph.act_bar matches 1 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum1
execute if score $armor_1 rph.act_bar matches 2 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum2
execute if score $armor_1 rph.act_bar matches 3 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum3
execute if score $armor_1 rph.act_bar matches 4 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum4
execute if score $armor_1 rph.act_bar matches 5 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum5
execute if score $armor_1 rph.act_bar matches 6 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum6
execute if score $armor_1 rph.act_bar matches 7 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum7
execute if score $armor_1 rph.act_bar matches 8 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum8
execute if score $armor_1 rph.act_bar matches 9 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorNum9

data modify storage rph:text Generated append from storage rph:text Templates.2PixelSpacer