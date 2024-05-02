execute store result score $buy_check ca.tesseract run data get entity @s Offers.Recipes[1].uses
execute if score $buy_check ca.tesseract matches 1.. run data remove entity @s Offers.Recipes[1]

execute store result score $buy_check ca.tesseract run data get entity @s Offers.Recipes[-1].uses
execute if score $buy_check ca.tesseract matches 1.. run data remove entity @s Offers.Recipes[-1]