execute if score $global helper_diff matches 1 run scoreboard players set @s bbl.heal_queue 2
execute if score $global helper_diff matches 2 run scoreboard players set @s bbl.heal_queue 4
execute if score $global helper_diff matches 3.. run scoreboard players set @s bbl.heal_queue 6

function bb:call/hpm/mob/heal

particle minecraft:heart ~ ~1 ~ 0.3 0.3 0.3 0 3 normal
particle minecraft:soul ~ ~1 ~ 0.3 0.3 0.3 0.1 10 normal