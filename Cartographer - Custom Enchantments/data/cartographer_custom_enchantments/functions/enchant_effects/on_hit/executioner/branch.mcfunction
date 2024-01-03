#Manual Call of Function because I have no choice - "Its Bad Practice to Change Libraries Yourself"

#Get player's max health
execute store result score $target_max_health bbl.storage run attribute @s minecraft:generic.max_health get
#Get player's current health
function bb:lib/get_target_status/get_health

scoreboard players operation $target_health bbl.storage -= $exec_dmg bbl.storage

#Multiply current health by 100
scoreboard players operation $target_health bbl.storage *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $target_health bbl.storage /= $target_max_health bbl.storage
#Set intermediary score
scoreboard players operation $percentage_health_remaining bbl.storage = $target_health bbl.storage

#End of Manual Get Percent Health Call

#Reset Extra Scores
scoreboard players set $exec_dmg bbl.storage 0

scoreboard players operation @s ca.exec_low = $percentage_health_remaining bbl.storage
scoreboard players operation $threshold ca.exec_low = $executioner ca.weapon_var
scoreboard players operation $threshold ca.exec_low *= $5 ca.CONSTANT

#Trigger Execute hook
#execute if score @s ca.exec_low <= $threshold ca.exec_low at @s run function #minecraft:cartographer_events/execute_mob
execute if score @s ca.exec_low <= $threshold ca.exec_low at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/executioner/kill_branch