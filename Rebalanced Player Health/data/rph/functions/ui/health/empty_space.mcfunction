data modify storage rph:text Generated append from storage rph:text Templates.MoveOne

scoreboard players add $empty_space rph.act_bar 1

execute unless score $empty_space rph.act_bar matches 10.. run function rph:ui/health/empty_space