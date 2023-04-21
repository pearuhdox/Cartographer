data modify storage rph:text Generated append from storage rph:text Templates.ReturnOne

scoreboard players operation $air_empty rph.act_bar = $10 rph.var
scoreboard players operation $air_empty rph.act_bar -= $air_whole rph.act_bar

execute unless score $air_empty rph.act_bar matches 0 run function rph:ui/air/empty

execute if score $air_mod rph.act_bar matches 0..10 run data modify storage rph:text Generated append from storage rph:text Templates.AirPop
execute if score $air_mod rph.act_bar matches 11..29 run data modify storage rph:text Generated append from storage rph:text Templates.Air

execute unless score $air_whole rph.act_bar matches 0 run function rph:ui/air/full