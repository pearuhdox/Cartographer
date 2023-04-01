

#Save current health
scoreboard players set $player.health_before_hbc bbl.storage 0
scoreboard players operation $player.health_before_hbc bbl.storage = @s bbl.p_health

#Save health boost
execute if predicate bb:has_health_boost at @s run function bb:lib/hpm/player_damage_true/save_health_boost

#Absorption damage
execute if score @s bbl.damage_queue matches 1.. if predicate bb:has_absorption run function bb:lib/hpm/player_damage_true/absorption

#Health damage
execute if score @s bbl.damage_queue matches 1.. run function bb:lib/hpm/player_damage_true/death_check

scoreboard players set @s bbl.damage_timer 10
function bb:lib/hpm/player_damage_true/death_timer/loop
