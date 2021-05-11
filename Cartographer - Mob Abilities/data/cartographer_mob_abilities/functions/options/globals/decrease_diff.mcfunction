tag @s add gmr_frozen
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players remove $global helper_diff 1

execute if score $global helper_diff matches 0 run scoreboard players set $global helper_diff 1

function cartographer_mob_abilities:options/main