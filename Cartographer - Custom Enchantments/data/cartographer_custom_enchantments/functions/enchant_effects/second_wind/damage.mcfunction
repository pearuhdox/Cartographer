scoreboard players operation @s damage_queue = @s ca.dmg_resist_sw

#If the damage taken is at least 0.5 damage but less than 1, we round up to 1 damage.
execute if score @s damage_queue matches 5..9 run scoreboard players set @s damage_queue 10

scoreboard players operation $test_before ca.dmg_resist_sw = @s damage_queue
scoreboard players operation @s damage_queue /= $10 ca.CONSTANT
scoreboard players operation $test_after ca.dmg_resist_sw = @s damage_queue
execute if score @s damage_queue matches 1.. run function cartographer_core:helper/hurt_player/by_score_true