
#If a player is needed to heal a threshhold of health, heal that amount of remove that amount from their score
execute if score @s bbl.heal_queue matches 128.. run function bb:lib/hpm/player_heal/heal_amount/128
execute if score @s bbl.heal_queue matches 64.. run function bb:lib/hpm/player_heal/heal_amount/64
execute if score @s bbl.heal_queue matches 32.. run function bb:lib/hpm/player_heal/heal_amount/32
execute if score @s bbl.heal_queue matches 16.. run function bb:lib/hpm/player_heal/heal_amount/16
execute if score @s bbl.heal_queue matches 8.. run function bb:lib/hpm/player_heal/heal_amount/8
execute if score @s bbl.heal_queue matches 4.. run function bb:lib/hpm/player_heal/heal_amount/4
execute if score @s bbl.heal_queue matches 2.. run function bb:lib/hpm/player_heal/heal_amount/2
execute if score @s bbl.heal_queue matches 1 run function bb:lib/hpm/player_heal/heal_amount/1
#Then, loop the function if they have health needed healing remaining
execute if score @s bbl.heal_queue matches 1.. run function bb:lib/hpm/player_heal/main
