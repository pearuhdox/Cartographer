execute unless score $val rph.mana_flash_ani matches 2..3 if score $mana_max rph.act_bar matches 2.. run data modify storage rph:text Generated append from storage rph:text Templates.ManaEmpty
execute unless score $val rph.mana_flash_ani matches 2..3 if score $mana_max rph.act_bar matches 1 run data modify storage rph:text Generated append from storage rph:text Templates.ManaHalf

execute if score $val rph.mana_flash_ani matches 2..3 if score $mana_max rph.act_bar matches 2.. run data modify storage rph:text Generated append from storage rph:text Templates.ManaEmptyFlash
execute if score $val rph.mana_flash_ani matches 2..3 if score $mana_max rph.act_bar matches 1 run data modify storage rph:text Generated append from storage rph:text Templates.ManaHalfFlash

scoreboard players remove $mana_max rph.act_bar 2

execute unless score $mana_max rph.act_bar matches 0.. run scoreboard players set $mana_max rph.act_bar 0

execute if score $mana_max rph.act_bar matches 1.. run function rph:ui/mana/empty