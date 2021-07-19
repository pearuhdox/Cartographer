#Lexica Dialogue Popup
execute if score @s ca.options_trig matches 1 run function cartographer_core:options/intercept
execute if score @s ca.options_trig matches 2 run function cartographer_core:options/player/main
execute if score @s ca.options_trig matches 3 run function cartographer_core:options/player/branch
execute if score @s ca.options_trig matches 4 run function cartographer_custom_enchantments:options/player/branch

execute if score @s ca.options_trig matches 100 run function cartographer_core:options/player/toggle_reload

execute if score @s ca.options_trig matches 200 run function cartographer_custom_enchantments:options/player/ui_location


#Reset Lexica Trigger Score
scoreboard players set @s ca.options_trig 0