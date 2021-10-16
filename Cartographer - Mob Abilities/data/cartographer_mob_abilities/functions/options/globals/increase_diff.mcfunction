scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $global helper_diff 1

execute if score $global helper_diff matches 6 run scoreboard players set $global helper_diff 5

function cartographer_mob_abilities:options/main