execute if score $armor rph.act_bar matches 2.. run data modify storage rph:text Generated append from storage rph:text Templates.ArmorWhole
execute if score $armor rph.act_bar matches 1 run data modify storage rph:text Generated append from storage rph:text Templates.ArmorHalf


scoreboard players remove $armor rph.act_bar 2
execute if score $armor rph.act_bar matches ..-1 run scoreboard players set $armor rph.act_bar 0

scoreboard players add $armor_made rph.act_bar 1
scoreboard players operation $empty_space rph.act_bar = $armor_made rph.act_bar
scoreboard players operation $empty_space rph.act_bar %= $10 rph.var

execute if score $empty_space rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

execute if score $armor rph.act_bar matches 1.. unless score $armor_made rph.act_bar matches 10.. run function rph:ui/health/armor