execute if score $flash_heart rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 0..9 run data modify storage rph:text Generated append from storage rph:text Templates.FlashRedWhole
execute if score $flash_heart rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 0..9 run data modify storage rph:text Generated append from storage rph:text Templates.FlashRedHalf

execute if score $flash_heart rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 10..19 run data modify storage rph:text Generated append from storage rph:text Templates.FlashRedPinkWhole
execute if score $flash_heart rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 10..19 run data modify storage rph:text Generated append from storage rph:text Templates.FlashRedPinkHalf

execute if score $flash_heart rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 20..29 run data modify storage rph:text Generated append from storage rph:text Templates.FlashPinkWhole
execute if score $flash_heart rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 20..29 run data modify storage rph:text Generated append from storage rph:text Templates.FlashPinkHalf

execute if score $flash_heart rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 30..39 run data modify storage rph:text Generated append from storage rph:text Templates.FlashWhitePinkWhole
execute if score $flash_heart rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 30..39 run data modify storage rph:text Generated append from storage rph:text Templates.FlashWhitePinkHalf

execute if score $flash_heart rph.act_bar matches 101.. if score $hearts_made rph.act_bar matches 40..49 run data modify storage rph:text Generated append from storage rph:text Templates.FlashWhiteWhole
execute if score $flash_heart rph.act_bar matches 1..100 if score $hearts_made rph.act_bar matches 40..49 run data modify storage rph:text Generated append from storage rph:text Templates.FlashWhiteHalf


scoreboard players remove $flash_heart rph.act_bar 200
execute if score $flash_heart rph.act_bar matches ..-1 run scoreboard players set $health rph.act_bar 0

scoreboard players add $hearts_made rph.act_bar 1
scoreboard players operation $empty_space rph.act_bar = $hearts_made rph.act_bar
scoreboard players operation $empty_space rph.act_bar %= $10 rph.var

execute if score $empty_space rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow

execute if score $flash_heart rph.act_bar matches 1.. unless score $hearts_made rph.act_bar matches 50.. run function rph:ui/health/flash