execute if score $empty_space rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.MoveRow

data modify storage rph:text Generated append from storage rph:text Templates.ReturnOne

execute if score $hearts_made rph.act_bar matches 0..9 run data modify storage rph:text Generated append from storage rph:text Templates.FlashRedHalfRight

execute if score $hearts_made rph.act_bar matches 10..19 run data modify storage rph:text Generated append from storage rph:text Templates.FlashRedPinkHalfRight

execute if score $hearts_made rph.act_bar matches 20..29 run data modify storage rph:text Generated append from storage rph:text Templates.FlashPinkHalfRight

execute if score $hearts_made rph.act_bar matches 30..39 run data modify storage rph:text Generated append from storage rph:text Templates.FlashWhitePinkHalfRight

execute if score $hearts_made rph.act_bar matches 40..49 run data modify storage rph:text Generated append from storage rph:text Templates.FlashWhiteHalfRight


scoreboard players remove $flash_heart rph.act_bar 100
execute if score $flash_heart rph.act_bar matches ..-1 run scoreboard players set $health rph.act_bar 0

scoreboard players operation $empty_space rph.act_bar = $hearts_made rph.act_bar
scoreboard players operation $empty_space rph.act_bar %= $10 rph.var

execute if score $empty_space rph.act_bar matches 0 run data modify storage rph:text Generated append from storage rph:text Templates.ReturnRow