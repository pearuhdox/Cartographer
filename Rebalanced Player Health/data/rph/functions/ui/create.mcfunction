#Reset the action bar
data modify storage rph:text Generated set value []

scoreboard players operation $health_10 rph.act_bar = $health rph.act_bar
scoreboard players operation $health_1 rph.act_bar = $health rph.act_bar

scoreboard players operation $health_10 rph.act_bar /= $1000 rph.var

scoreboard players operation $health_1 rph.act_bar /= $100 rph.var
scoreboard players operation $health_1 rph.act_bar %= $10 rph.var

scoreboard players operation $health_odd rph.act_bar = $health_1 rph.act_bar
scoreboard players operation $health_odd rph.act_bar %= $2 rph.var


scoreboard players operation $abs_save rph.act_bar = $abs rph.act_bar
scoreboard players operation $abs_10 rph.act_bar = $abs rph.act_bar
scoreboard players operation $abs_1 rph.act_bar = $abs rph.act_bar

scoreboard players operation $abs_10 rph.act_bar /= $1000 rph.var

scoreboard players operation $abs_1 rph.act_bar /= $100 rph.var
scoreboard players operation $abs_1 rph.act_bar %= $10 rph.var

scoreboard players operation $armor_save rph.act_bar = $armor rph.act_bar
scoreboard players operation $armor_10 rph.act_bar = $armor rph.act_bar
scoreboard players operation $armor_1 rph.act_bar = $armor rph.act_bar

scoreboard players operation $armor_10 rph.act_bar /= $10 rph.var
scoreboard players operation $armor_1 rph.act_bar %= $10 rph.var

scoreboard players operation $air_whole rph.act_bar = $air rph.act_bar
scoreboard players operation $air_whole rph.act_bar /= $30 rph.var

scoreboard players operation $air_mod rph.act_bar = $air rph.act_bar
scoreboard players operation $air_mod rph.act_bar %= $30 rph.var

execute unless score $abs rph.act_bar matches 2000 if score $abs_10 rph.act_bar matches 2 if score $abs_1 rph.act_bar matches 0 run scoreboard players set $abs_1 rph.act_bar 1
execute unless score $health rph.act_bar matches 2000 if score $health_10 rph.act_bar matches 2 if score $health_1 rph.act_bar matches 0 run scoreboard players set $health_1 rph.act_bar 1

scoreboard players operation $armor_save rph.act_bar = $armor rph.act_bar
scoreboard players operation $health_save rph.act_bar = $health rph.act_bar

execute if score $health rph.act_bar matches 2001.. unless score $abs rph.act_bar matches 2001.. run function rph:ui/health/health_number

execute if score $abs rph.act_bar matches 2001.. run function rph:ui/health/abs_number

execute if score $armor rph.act_bar matches 21.. run function rph:ui/health/armor_number

function rph:ui/health/make_frames

data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

execute if score $health rph.act_bar matches 1.. run function rph:ui/health/master


execute if score $val rph.heart_flash_ani matches 2..3 if score $flash_heart rph.act_bar matches 1.. if score $health_odd rph.act_bar matches 1.. run function rph:ui/health/flash_right

execute if score $val rph.heart_flash_ani matches 2..3 if score $flash_heart rph.act_bar matches 1.. unless score $health rph.act_bar matches 1.. run function rph:ui/health/flash

execute unless score $empty_space rph.act_bar matches 10.. run function rph:ui/health/empty_space

scoreboard players set $empty_space rph.act_bar 0
scoreboard players set $hearts_made rph.act_bar 0

data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

execute if score $abs rph.act_bar matches 1.. run function rph:ui/health/absorption
execute unless score $empty_space rph.act_bar matches 10.. run function rph:ui/health/empty_space

execute if score $armor rph.act_bar matches 1.. run scoreboard players set $empty_space rph.act_bar 0
execute if score $armor rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow
execute if score $armor rph.act_bar matches 1.. run function rph:ui/health/armor
execute unless score $empty_space rph.act_bar matches 10.. run function rph:ui/health/empty_space

execute unless predicate rph:is_poisoned unless predicate rph:is_withered run data modify storage rph:text Generated append from storage rph:text Templates.EmptyWarning
execute if predicate rph:is_poisoned unless predicate rph:is_withered run data modify storage rph:text Generated append from storage rph:text Templates.PoisonWarning
execute if predicate rph:is_withered run data modify storage rph:text Generated append from storage rph:text Templates.WitherWarning

#Mana bar
execute if score $mana_enabled rph.act_bar matches 1.. run function rph:ui/mana/master

execute if score $mana_enabled rph.act_bar matches 1.. if score $air rph.act_bar matches 1..299 run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

#data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow
execute if score $air rph.act_bar matches 1..299 run function rph:ui/air/master

#Cleanup and Bar Adjustment
execute if score $abs_10 rph.act_bar matches 2.. if score $abs_1 rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.15PixelSpacer
execute if score $abs_10 rph.act_bar matches 3.. unless score $abs_1 rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.12PixelSpacer
execute if score $abs_10 rph.act_bar matches 10.. run data modify storage rph:text Generated append from storage rph:text Templates.6PixelSpacer


execute unless score $abs_save rph.act_bar matches 2001.. unless score $health_save rph.act_bar matches 2001.. if score $armor_10 rph.act_bar matches 2.. if score $armor_1 rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.15PixelSpacer
execute unless score $abs_save rph.act_bar matches 2001.. unless score $health_save rph.act_bar matches 2001.. if score $armor_10 rph.act_bar matches 3.. unless score $armor_1 rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.12PixelSpacer
execute unless score $abs_save rph.act_bar matches 2001.. unless score $health_save rph.act_bar matches 2001.. if score $armor_10 rph.act_bar matches 10.. run data modify storage rph:text Generated append from storage rph:text Templates.6PixelSpacer


execute unless score $abs_save rph.act_bar matches 2001.. if score $health_10 rph.act_bar matches 2.. if score $health_1 rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.15PixelSpacer
execute unless score $abs_save rph.act_bar matches 2001.. if score $health_10 rph.act_bar matches 3.. unless score $health_1 rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.12PixelSpacer
execute unless score $abs_save rph.act_bar matches 2001.. if score $health_10 rph.act_bar matches 10.. run data modify storage rph:text Generated append from storage rph:text Templates.6PixelSpacer


#Add a shift back to position properly
execute unless score $mana_enabled rph.act_bar matches 1.. unless score @s rph.air matches 1..299 run data modify storage rph:text Generated append from storage rph:text Templates.ShiftBack

execute unless score $mana_enabled rph.act_bar matches 1.. if score @s rph.air matches 1..299 run data modify storage rph:text Generated append from storage rph:text Templates.ShiftBackSmall

execute if score $mana_enabled rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.ShiftBackSmall

#Print the finished Action Bar
title @s actionbar {"nbt":"Generated[][]","storage":"rph:text","interpret":true,"color":"#4e5c24","separator":""}