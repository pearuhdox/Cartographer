execute if score $abs rph.act_bar matches 101.. run data modify storage rph:text Generated append from storage rph:text Templates.AbsWhole
execute if score $abs rph.act_bar matches 1..100 run data modify storage rph:text Generated append from storage rph:text Templates.AbsHalf


scoreboard players remove $abs rph.act_bar 200
execute if score $abs rph.act_bar matches ..-1 run scoreboard players set $health rph.act_bar 0

scoreboard players add $hearts_made rph.act_bar 1
scoreboard players operation $empty_space rph.act_bar = $hearts_made rph.act_bar
scoreboard players operation $empty_space rph.act_bar %= $10 rph.var

execute if score $empty_space rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

execute if score $abs rph.act_bar matches 1.. unless score $hearts_made rph.act_bar matches 20.. run function rph:ui/health/absorption