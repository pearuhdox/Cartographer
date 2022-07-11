scoreboard players operation @s cdl.damage_queue = @s ca.dmg_resist_sw

#We need to apply EPF and Resistance here.

#Apply EPF First
function cartographer_custom_enchantments:enchant_effects/second_wind/calculate_epf

#Apply Resistance next
function cartographer_custom_enchantments:enchant_effects/second_wind/save_resistance
execute if score @s ca.res.dur matches 1.. unless score $check_too_low ca.res.dur matches 1 run function cartographer_custom_enchantments:enchant_effects/second_wind/resistance
scoreboard players set $check_too_low ca.res.dur 0

#If ca.sw_tenths is 1 or higher, then we add it to cdl.Damage Queue to see if we end up doing 1 damage here.
execute if score @s ca.sw_tenths matches 1.. run scoreboard players operation @s cdl.damage_queue += @s ca.sw_tenths
execute if score @s ca.sw_tenths matches 1.. run scoreboard players set @s ca.sw_tenths 0

#If the damage taken is less than 1, we do no damage, increment a background tenths score.
execute if score @s cdl.damage_queue matches 1..9 run scoreboard players operation @s ca.sw_tenths = @s cdl.damage_queue
execute if score @s cdl.damage_queue matches 1..9 run scoreboard players set @s cdl.damage_queue 0

#scoreboard players operation $test_before ca.dmg_resist_sw = @s cdl.damage_queue

scoreboard players operation @s cdl.damage_queue /= $10 ca.CONSTANT

#scoreboard players operation $test_after ca.dmg_resist_sw = @s cdl.damage_queue

#Check if we're doing damage or detecting a lethal hit.
execute if score @s cdl.damage_queue >= @s ca.health run tag @s add true_death
execute if score @s cdl.damage_queue >= @s ca.health run scoreboard players operation @s cdl.damage_queue = @s ca.health
execute if score @s cdl.damage_queue >= @s ca.health run scoreboard players remove @s cdl.damage_queue 1

function cd:lib/player/damage/true