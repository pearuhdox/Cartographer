scoreboard players set @s heal_queue 1
function cartographer_core:helper/heal_player/by_score
particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 1 force
scoreboard players remove @s helper_heal_bank 100