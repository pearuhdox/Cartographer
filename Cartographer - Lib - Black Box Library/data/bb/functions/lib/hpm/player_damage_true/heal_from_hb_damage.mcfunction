
execute store result score @s bbl.heal_queue run scoreboard players operation @s bbl.damage_queue *= $-1 bbl.constant
function bb:call/hpm/player/heal 