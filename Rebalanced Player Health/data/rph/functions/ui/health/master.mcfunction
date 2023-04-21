execute if score $health rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 0..9 run data modify storage rph:text Generated append from storage rph:text Templates.RedWhole
execute if score $health rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 0..9 run data modify storage rph:text Generated append from storage rph:text Templates.RedHalf

execute if score $health rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 10..19 run data modify storage rph:text Generated append from storage rph:text Templates.RedPinkWhole
execute if score $health rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 10..19 run data modify storage rph:text Generated append from storage rph:text Templates.RedPinkHalf

execute if score $health rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 20..29 run data modify storage rph:text Generated append from storage rph:text Templates.PinkWhole
execute if score $health rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 20..29 run data modify storage rph:text Generated append from storage rph:text Templates.PinkHalf

execute if score $health rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 30..39 run data modify storage rph:text Generated append from storage rph:text Templates.WhitePinkWhole
execute if score $health rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 30..39 run data modify storage rph:text Generated append from storage rph:text Templates.WhitePinkHalf

execute if score $health rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 40..49 run data modify storage rph:text Generated append from storage rph:text Templates.WhiteWhole
execute if score $health rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 40..49 run data modify storage rph:text Generated append from storage rph:text Templates.WhiteHalf

execute if predicate rph:is_poisoned if score $health rph.act_bar matches 101.. run data modify storage rph:text Generated append from storage rph:text Templates.PoisonHeart
execute if predicate rph:is_poisoned if score $health rph.act_bar matches 1..100 run data modify storage rph:text Generated append from storage rph:text Templates.PoisonHeartHalf

execute if predicate rph:is_withered if score $health rph.act_bar matches 101.. run data modify storage rph:text Generated append from storage rph:text Templates.WitherHeart
execute if predicate rph:is_withered if score $health rph.act_bar matches 1..100 run data modify storage rph:text Generated append from storage rph:text Templates.WitherHeartHalf


scoreboard players remove $health rph.act_bar 200
execute if score $health rph.act_bar matches ..-1 run scoreboard players set $health rph.act_bar 0

scoreboard players add $hearts_made rph.act_bar 1
scoreboard players operation $empty_space rph.act_bar = $hearts_made rph.act_bar
scoreboard players operation $empty_space rph.act_bar %= $10 rph.var

execute if score $empty_space rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

execute if score $health rph.act_bar matches 1.. unless score $hearts_made rph.act_bar matches 50.. run function rph:ui/health/master