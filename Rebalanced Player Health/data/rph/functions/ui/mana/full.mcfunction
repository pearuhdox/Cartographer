execute unless score $val rph.mana_flash_ani matches 2..3 if score $mana rph.act_bar matches 2.. run data modify storage rph:text Generated append from storage rph:text Templates.ManaWhole

execute if score $val rph.mana_flash_ani matches 2..3 if score $mana rph.act_bar matches 2.. run data modify storage rph:text Generated append from storage rph:text Templates.ManaWholeFlash

scoreboard players remove $mana rph.act_bar 2

execute unless score $mana rph.act_bar matches 0.. run scoreboard players set $mana rph.act_bar 0

execute if score $mana rph.act_bar matches 2.. run function rph:ui/mana/full