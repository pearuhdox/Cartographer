execute if score $air_whole rph.act_bar matches 1.. run data modify storage rph:text Generated append from storage rph:text Templates.Air

scoreboard players remove $air_whole rph.act_bar 1

execute if score $air_whole rph.act_bar matches 1.. run function rph:ui/air/full